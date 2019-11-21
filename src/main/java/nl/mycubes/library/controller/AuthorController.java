package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Author;
import nl.mycubes.library.payload.AjaxObject;
import nl.mycubes.library.repository.AuthorRepository;
import nl.mycubes.library.repository.BookRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class AuthorController {

    private final AuthorRepository authorRepository;
    private final BookRepository bookRepository;

    public AuthorController(AuthorRepository authorRepository, BookRepository bookRepository) {
        this.authorRepository = authorRepository;
        this.bookRepository = bookRepository;
    }

    @GetMapping(value = "/authors")
    public String authorsHomePage() {
        return "index";
    }

    @GetMapping("/authors/all")
    public String getAll(Map<String, Object> model) {
        model.put("authors", authorRepository.findAll());
        return "author";
    }

    @GetMapping(value = "authors/add")
    public String addAuthor(Model model) {
        Author author = new Author();
        model.addAttribute("authorForm", author);
        return "htmlform";
    }

    @PostMapping(value = "/authors/save")
    public String saveAuthor(@ModelAttribute("authorForm") Author author) {
        authorRepository.save(author);
        return "redirect:all";
    }

    @GetMapping(value = "/authors/edit/{id}")
    public String editAuthor(@PathVariable Integer id, Model model) {
        model.addAttribute("authorForm", authorRepository.findById(id).get());
        model.addAttribute("books", bookRepository.findAll());
        return "editAuthor";
    }

}
