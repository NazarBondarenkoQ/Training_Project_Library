package nl.mycubes.library.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
@AllArgsConstructor
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
    private LocalDate releaseDate;

    @Column(name = "circulation")
    private Integer circulation;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "author_id", referencedColumnName = "author_id")
    private Author author;
}
