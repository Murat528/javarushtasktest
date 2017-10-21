package ru.javarush.bookmanager.service;

import ru.javarush.bookmanager.dao.BookDao;
import ru.javarush.bookmanager.model.Book;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {
    private BookDao bookDao;

    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }


    @Transactional
    public void addBook(Book book) {
        this.bookDao.addBook(book);
    }


    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);
    }


    @Transactional
    public void removeBook(int id) {
        this.bookDao.removeBook(id);
    }


    @Transactional
    public Book getBookById(int id) {
        return this.bookDao.getBookById(id);
    }


    @Transactional
    public List<Book> listBooks() {
        return this.bookDao.listBooks();
    }


    @Transactional
    public List<Book> getBooksByTitle(String title) {
        return this.bookDao.getBooksByTitle(title);
    }
    @Transactional
    public List<Book>getBooksByReadAlready(boolean readAlready){
        return this.bookDao.getBooksByReadAlready(readAlready);
    }
    @Transactional
    public List<Book> getAllPage(int begin, int num) {
        List<Book> books = listBooks();
        List<Book> books_end = new ArrayList<Book>();
        if (books.size() <= begin) {
            return books;
        }else if (begin < books.size() && books.size() < (begin+num)){
            for (int i = begin; i < books.size(); i++) {
                books_end.add(books.get(i));
            }
            return books_end;
        }else {
            for (int i = begin; i < begin + num; i++) {
                books_end.add(books.get(i));
            }
            return books_end;
        }
    }
}
