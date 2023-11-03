package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Artist;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ArtistDAO extends JpaRepository<Artist, Long> {
}
