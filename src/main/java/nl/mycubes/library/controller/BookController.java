package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Author;
import nl.mycubes.library.domain.Book;
import nl.mycubes.library.repository.BookRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/books")
public class BookController {

    private BookRepository bookRepository;

    public BookController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping(value = "/all")
    public List<Book> getAll() {
        return bookRepository.findAll();
    }

    @PostMapping(value = "/add")
    public void addBook(@RequestBody final Book book) {
        bookRepository.save(book);
    }

}
