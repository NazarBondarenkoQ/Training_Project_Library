package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Author;
import nl.mycubes.library.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class AuthorController {

    @Autowired
    private AuthorRepository authorRepository;

    @GetMapping(value = "/authors")
    public String authorsHomePage() {
        return "index";
    }

    @RequestMapping("/authors/all")
    public String getAll(Map<String, Object> model) {
        model.put("authors",authorRepository.findAll());
        model.put("test","LOL");
        return "author";
    }

    @PostMapping(value = "authors/add")
    public void addAuthor(@RequestBody final Author author) {
        authorRepository.save(author);
    }
}
