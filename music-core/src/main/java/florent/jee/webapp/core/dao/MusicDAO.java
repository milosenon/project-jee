package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Music;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface MusicDAO extends JpaRepository<Music, Long> {


    List<Music> findAllByAlbum_Id();

}
