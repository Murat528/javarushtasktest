package ru.javarush.bookmanager.dao;

import ru.javarush.bookmanager.model.Book;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    private static final Logger logger = LoggerFactory.getLogger(BookDaoImpl.class);

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public void addBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(book);
        logger.info("Book successfully saved. Book details: " + book);
    }


    public void updateBook(Book book) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(book);
        logger.info("Book successfully update. Book details: " + book);
    }


    public void removeBook(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));

        if(book!=null){
            session.delete(book);
        }
        logger.info("Book successfully removed. Book details: " + book);
    }



    public Book getBookById(int id) {
        Session session =this.sessionFactory.getCurrentSession();
        Book book = (Book) session.load(Book.class, new Integer(id));
        logger.info("Book successfully loaded. Book details: " + book);

        return book;
    }
    @SuppressWarnings("unchecked")
    public List<Book>getBooksByTitle(String title){
        Session session = sessionFactory.getCurrentSession();
        Query q = session.createQuery("SELECT e FROM Book e WHERE e.title = :title");
        q.setParameter("title", title);
        List<Book> result = q.list();
        return result;

    }
    @SuppressWarnings("unchecked")
    public List<Book>getBooksByReadAlready(boolean readAlready){
        Session session = sessionFactory.getCurrentSession();
         Query q = session.createQuery("SELECT e FROM Book e WHERE e.readAlready = :readAlready");
        q.setParameter("readAlready", readAlready);
        List<Book> result = q.list();
        return result;

    }
    @SuppressWarnings("unchecked")
    public List<Book> listBooks() {
        Session session = this.sessionFactory.getCurrentSession();
        List<Book> bookList = session.createQuery("from Book").list();

        for(Book book: bookList){
            logger.info("Book list: " + book);
        }

        return bookList;
    }
}
