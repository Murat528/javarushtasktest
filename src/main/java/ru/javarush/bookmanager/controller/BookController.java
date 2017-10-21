package ru.javarush.bookmanager.controller;

import javax.validation.Valid;
import ru.javarush.bookmanager.model.Book;
import ru.javarush.bookmanager.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.validation.BindingResult;


import java.util.List;

@Controller
public class BookController {
    private BookService bookService;
    private List<Book> booksFull;
    private List<Book> books;
    private static int count = 0;
    private static final int paging=10;


    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }
    private void myPaging( int...numPage){
        booksFull = bookService.listBooks();
        if(numPage.length==0){
            books = bookService.getAllPage(0, paging);

        }else{
           int offset = numPage[0]*paging-paging;
            int num=new Integer(paging);
            books = bookService.getAllPage(offset, num);
        }
        if (booksFull.size() <paging) {
            count = 1;
        }else if (booksFull.size() > paging && booksFull.size() % paging > 0){
            count = booksFull.size()/paging+1;
        }else{
            count = booksFull.size()/paging;
        }
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public String listBooks(Model model){
        myPaging();
        model.addAttribute("count", count);
        model.addAttribute("books", books);
        model.addAttribute("booksFull", booksFull);
        return "bookspage";
    }
    @RequestMapping(value = "booksPage", method = RequestMethod.GET)
    public String listBooks(@RequestParam(value="numpage", required=true) Integer numPage, Model model) {
        myPaging(numPage);
        model.addAttribute("count", count);
        model.addAttribute("books", books);
        model.addAttribute("booksFull", booksFull);
        return "bookspage";
    }
    @RequestMapping(value = "/books/add", method = RequestMethod.GET)
    public String getAdd(Model model) {
        model.addAttribute("bookAttribute", new Book());
        return "addpage";
    }


    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String add(@ModelAttribute("bookAttribute") @Valid Book book,BindingResult result) {
        if (result.hasErrors()) {
            return "addpage";
        }
            this.bookService.addBook(book);
        return "addedpage";
    }
    @RequestMapping(value = "/books/delete", method = RequestMethod.GET)
    public String delete(@RequestParam(value="id", required=true) Integer id, Model model) {
        bookService.removeBook(id);
        model.addAttribute("id", id);
        return "deletedpage";
    }
    @RequestMapping(value = "/books/edit", method = RequestMethod.GET)
    public String getEdit(@RequestParam(value="id", required=true) Integer id, Model model) {

        model.addAttribute("bookAttribute", bookService.getBookById(id));
        return "editpage";
    }

    @RequestMapping(value = "/books/edit", method = RequestMethod.POST)
    public String saveEdit(@ModelAttribute("bookAttribute")  @Valid Book book, @RequestParam(value="id", required=true) Integer id,BindingResult result, Model model) {
        if(result.hasErrors()){
            return "editpage";
        }
        book.setId(id);
        book.setReadAlready(false);
        bookService.updateBook(book);
        model.addAttribute("id", id);
        return "editedpage";
    }
    @RequestMapping(value = "/books/read", method = RequestMethod.GET)
    public String getRead(@RequestParam(value="id", required=true) Integer id, Model model) {
        Book book=bookService.getBookById(id);
        book.setReadAlready(true);
        bookService.updateBook(book);
        model.addAttribute("bookAttribute",book);
        return "readpage";
    }
    @RequestMapping(value = "/books/filter", method = RequestMethod.GET)
    public String getFilter(Model model) {
        model.addAttribute("bookFilter", new Book());
        return "filter";
    }
    @RequestMapping(value = "/books/filter", method = RequestMethod.POST)
    public String listFilter(@ModelAttribute("bookAttribute") Book book, Model model) {
        List<Book> booksTytle = bookService.getBooksByTitle(book.getTitle());
        model.addAttribute("books", booksTytle);
        return "filterpage";
    }
    @RequestMapping(value = "/books/findRead", method = RequestMethod.GET)
    public String findByReadAlready(Model model) {
        List<Book> booksRead = bookService.getBooksByReadAlready(true);
        model.addAttribute("books", booksRead);
        return "filterpage";
    }
    @RequestMapping(value = "/books/findNotRead", method = RequestMethod.GET)
    public String findByNotReadAlready(Model model) {
        List<Book> booksNotRead = bookService.getBooksByReadAlready(false);
        model.addAttribute("books", booksNotRead);
        return "filterpage";
    }



}
