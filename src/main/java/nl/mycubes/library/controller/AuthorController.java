package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Author;
import nl.mycubes.library.repository.AuthorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@Controller
public class AuthorController {

    @Autowired
    private AuthorRepository authorRepository;

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

    @PostMapping(value = "/save")
    public String saveAuthor(@ModelAttribute("authorForm") Author author) {
        authorRepository.save(author);
        authorRepository.findAll();
        return "redirect:authors/all";
    }
}
