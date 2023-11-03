package florent.jee.webapp.core.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="music")
public class Music extends GenericEntity{
    private String title;
    private String duration;


    public Music() {
    }

    public Music(String title, String duration) {
        this.title = title;
        this.duration = duration;
    }
}
