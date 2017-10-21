package ru.javarush.bookmanager.model;

import javax.persistence.*;
import javax.validation.constraints.*;


@Entity
@Table(name = "books")
public class Book {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "title")
    @NotBlank(message = "title must be not empty")
    @Size(max=100,message = "size must be less or equal than 100")
    private String title;

    @Column(name = "author")
    @NotBlank(message = "author must be not empty")
    @Size(max=100,message = "size must be less or equal than 100")
    private String author;

    @Column(name = "description")
    @NotBlank(message = "description must be not empty")
    @Size(max=255,message = "size must be less or equal than 255")
    private String description;

    @Column(name = "ISBN")
    @NotBlank(message = "ISBN must be not empty")
    @Size(max=20,message = "size must be less or equal than 20")
    private String ISBN;

    @Column(name = "printYear")
    @NotNull(message = "printYear must be not Null")
    @Min(value = 1800,message = "Year entered is invalid. It must be more 1800")
    @Max(value = 2017,message = "Year entered is invalid. It must be less 2017")
    private Integer printYear;
    @Column(name = "readAlready")
    private boolean readAlready;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getPrintYear() {
        return printYear;
    }

    public void setPrintYear(Integer printYear) {
        this.printYear = printYear;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", Title='" + title + '\'' +
                ", Author='" + author + '\'' +
                ", price=" + printYear +
                '}';
    }
}
