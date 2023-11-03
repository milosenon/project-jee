package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.GenericDAO;
import florent.jee.webapp.core.entity.Artist;

public class ArtistService extends GenericService<Artist> {
    public ArtistService(GenericDAO<Artist> internalDAO) {
        super(internalDAO);
    }
}
