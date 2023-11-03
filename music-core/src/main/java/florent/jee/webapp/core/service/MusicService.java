package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.GenericDAO;
import florent.jee.webapp.core.entity.Music;

public class MusicService extends GenericService<Music> {
    public MusicService(GenericDAO<Music> internalDAO) {
        super(internalDAO);
    }
}
