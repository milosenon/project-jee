package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.Album;
import org.springframework.data.jpa.repository.Query;

public interface AlbumDAO extends GenericDAO<Album>{
    Album findByName(String name);
}
