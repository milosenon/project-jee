package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Album;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AlbumDAO extends JpaRepository<Album, Long> {
}
