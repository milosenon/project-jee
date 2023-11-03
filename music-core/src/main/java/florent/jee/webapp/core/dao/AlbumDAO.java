package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Album;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.Query;
import java.util.List;

public interface AlbumDAO extends JpaRepository<Album, Long> {

    @Query("SELECT DISTINCT a FROM Album a LEFT OUTER JOIN a.artists WHERE a.artists = :artistId")
    List<Album> findAllByArtistId(@Param("artistId") Long artistId);
}
