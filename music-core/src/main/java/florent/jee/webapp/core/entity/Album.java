package florent.jee.webapp.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;

import java.util.List;

@Entity
@Table(name="album")
@JsonIgnoreProperties({ "artist" })
public class Album implements Comparable<Album>{


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
    private String title;
    private String releaseDate;
    private String duration;

    @OneToMany(mappedBy = "album")
    private List<Artist> artists;

    public Album() {
    }

    public Album(String title, String releaseDate, String duration) {
        this.title = title;
        this.releaseDate = releaseDate;
        this.duration = duration;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public List<Artist> getArtists() {
        return artists;
    }

    public void setArtists(List<Artist> artists) {
        this.artists = artists;
    }

    @Override
    public int compareTo(final Album album) {return duration.compareTo(album.duration);}
}
