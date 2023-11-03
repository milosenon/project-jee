package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.ArtistDAO;
import florent.jee.webapp.core.entity.Artist;

import java.util.List;

public class ArtistService {
    private final ArtistDAO artistDAO;

    public ArtistService(ArtistDAO artistDAO) {
        this.artistDAO = artistDAO;
    }

    public List<Artist> findAll(){ return artistDAO.findAll();}
}
