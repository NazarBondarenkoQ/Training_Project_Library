package nl.mycubes.library.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;

@Entity
@Data
@EqualsAndHashCode(exclude = "authors")
@ToString(exclude = "authors")
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

    @JsonIgnore
    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinColumn(name = "fk_authors")
    private List<Author> authors;

    @Transient
    public boolean isAuthorPresent(Author author) {
        for (Author authorItem : authors) {
            if (authorItem.getId() == author.getId()) {
                return true;
            }
        }
        return false;
    }
}
