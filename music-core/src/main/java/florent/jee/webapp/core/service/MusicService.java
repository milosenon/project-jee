package florent.jee.webapp.core.service;

import florent.jee.webapp.core.dao.AlbumDAO;
import florent.jee.webapp.core.dao.MusicDAO;
import florent.jee.webapp.core.entity.Album;
import florent.jee.webapp.core.entity.Music;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class MusicService {

    private final MusicDAO musicDAO;

    public MusicService(MusicDAO musicDAO) {
        this.musicDAO = musicDAO;
    }

    public List<Music> findAll(){ return musicDAO.findAll();}
}
