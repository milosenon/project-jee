package florent.jee.webapp.core.entity;

import jakarta.persistence.OneToMany;

import java.util.List;

public class Artist extends GenericEntity implements Comparable<Artist> {

    private String firstname;
    private String lastname;
    private String nationality;

    @OneToMany(mappedBy = "artist")
    private List<Album> albums;

    public Artist() {
    }

    public Artist(String firstname, String lastname, String nationality) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.nationality = nationality;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public List<Album> getAlbums() {
        return albums;
    }

    public void setAlbums(List<Album> albums) {
        this.albums = albums;
    }

    @Override
    public int compareTo(final Artist artist) {return nationality.compareTo(artist.nationality);}

}
