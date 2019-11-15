package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Book;
import nl.mycubes.library.repository.BookRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookController {

    private BookRepository bookRepository;

    public BookController(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    @GetMapping(value = "/books")
    public String booksHomePage() {
        return "index1";
    }

    @GetMapping(value = "/books/all")
    public String getAll(Model model) {
        model.addAttribute("books",bookRepository.findAll());
        return "book";
    }

    @GetMapping(value = "/books/add")
    public String addBook(Model model) {
        Book book = new Book();
        model.addAttribute("bookForm", book);
        return "bookform";
    }

    @PostMapping(value = "test")
    public String saveBook(@ModelAttribute("bookForm") Book book) {
        bookRepository.save(book);
        bookRepository.findAll();
        return "redirect:books/all";
    }

//
//    @PostMapping(value = "/books/add")
//    public void addBook(@RequestBody final Book book) {
//        bookRepository.save(book);
//    }
}
