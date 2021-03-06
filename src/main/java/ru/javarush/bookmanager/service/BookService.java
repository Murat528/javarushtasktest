package ru.javarush.bookmanager.service;

import ru.javarush.bookmanager.model.Book;

import java.util.List;

public interface BookService {
    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public Book getBookById(int id);

    public List<Book> listBooks();
    public List<Book>getBooksByTitle(String title);
    public List<Book> getAllPage(int begin, int num);
    public List<Book>getBooksByReadAlready(boolean readAlready);
}
