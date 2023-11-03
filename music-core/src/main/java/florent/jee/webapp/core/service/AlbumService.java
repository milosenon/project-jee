package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.AlbumDAO;
import florent.jee.webapp.core.entity.Album;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class AlbumService {

    private final AlbumDAO albumDAO;

    public AlbumService(AlbumDAO albumDAO) {
        this.albumDAO = albumDAO;
    }

    public List<Album> findAll(){ return albumDAO.findAll();}

    public List<Album> findAllByArtist(Long idArtist) {
        return albumDAO.findAllByArtistId(idArtist);
    }
}
