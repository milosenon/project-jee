package florent.jee.webapp.controller;

import florent.jee.webapp.core.entity.Album;
import florent.jee.webapp.core.entity.Music;
import florent.jee.webapp.core.service.ArtistService;
import florent.jee.webapp.core.service.MusicService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/api/v1/musiques")
public class MusicController {

    private final MusicService service;

    public MusicController(MusicService service) {
        this.service = service;
    }

    @GetMapping("/")
    public List<Music> findAll(){
        return service.findAll();
    }

}
