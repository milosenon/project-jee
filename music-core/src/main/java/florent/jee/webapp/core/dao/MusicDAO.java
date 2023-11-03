package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Music;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MusicDAO extends JpaRepository<Music, Long> {
}
