package nl.mycubes.library.domain;

import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Data
public class Book {

    public Book() {

    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "book_id")
    private Integer id;

    @Column(name = "name")
    private String name;

    @Column(name = "release_date")
    private String releaseDate;

    @Column(name = "circulation")
    private Integer circulation;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_authors", referencedColumnName = "id")
    private List<Author> authors;
}
