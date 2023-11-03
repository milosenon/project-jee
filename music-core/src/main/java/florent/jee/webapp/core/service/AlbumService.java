package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.GenericDAO;
import florent.jee.webapp.core.entity.Album;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class AlbumService extends GenericService<Album> {
    public AlbumService(GenericDAO<Album> internalDAO) {
        super(internalDAO);
    }
}
