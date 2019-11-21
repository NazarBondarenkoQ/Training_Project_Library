package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Book;
import nl.mycubes.library.payload.AjaxObject;
import nl.mycubes.library.repository.AuthorRepository;
import nl.mycubes.library.repository.BookRepository;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class BookController {

    private BookRepository bookRepository;
    private AuthorRepository authorRepository;

    public BookController(BookRepository bookRepository, AuthorRepository authorRepository) {
        this.bookRepository = bookRepository;
        this.authorRepository = authorRepository;
    }

    @GetMapping(value = "/books")
    public String booksHomePage() {
        return "index1";
    }

    @GetMapping(value = "/books/all")
    public String getAll(Model model) {
        model.addAttribute("books",bookRepository.findAll());
        model.addAttribute("authors", authorRepository.findAll());
        return "book";
    }

    @GetMapping(value = "/books/add")
    public String addBook(Model model) {
        Book book = new Book();
        model.addAttribute("bookForm", book);
        model.addAttribute("authors", authorRepository.findAll());
        return "bookform";
    }

    @GetMapping(value = "/books/edit/{id}")
    public String editBook(@PathVariable Integer id, Model model) {
        model.addAttribute("bookForm", bookRepository.findById(id).get());
        model.addAttribute("authors", authorRepository.findAll());
        return "editBook";
    }

    @PostMapping(value = "/books/save")
    public String saveBook(@ModelAttribute("bookForm") Book book) {
        bookRepository.saveAndFlush(book);
        return "redirect:all";
    }

    @PostMapping(value = "/books/ajax")
    @ResponseBody
    public String ajaxSaveAuthor(@RequestBody AjaxObject ajaxObject) {
        String[] s = ajaxObject.getId().split("_");
        Book book = bookRepository.findById(Integer.valueOf(s[1])).get();
        switch (s[0]) {
            case "name":
                book.setName(ajaxObject.getValue());
                break;
            case "releaseDate":
                book.setReleaseDate(ajaxObject.getValue());
                break;
            case "circulation":
                book.setCirculation(Integer.valueOf(ajaxObject.getValue()));
                break;
        }
        bookRepository.save(book);
        return "OK";
    }
}
