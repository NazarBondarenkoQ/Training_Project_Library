package nl.mycubes.library.controller;

import nl.mycubes.library.domain.Author;
import nl.mycubes.library.repository.AuthorRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/authors")
public class AuthorController {

    private AuthorRepository authorRepository;

    public AuthorController(AuthorRepository authorRepository) {
        this.authorRepository = authorRepository;
    }

    @GetMapping(value = "/all")
    public List<Author> getAll() {
        return authorRepository.findAll();
    }

    @PostMapping(value = "add")
    public void addAuthor(@RequestBody final Author author) {
        authorRepository.save(author);
    }
}
