package florent.jee.webapp.controller;

import florent.jee.webapp.core.entity.Album;
import florent.jee.webapp.core.entity.Artist;
import florent.jee.webapp.core.service.ArtistService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/api/v1/artists")
public class ArtistController {

    private final ArtistService service;

    public ArtistController(ArtistService service) {
        this.service = service;
    }

    @GetMapping("/")
    public List<Artist> findAll(){
        return service.findAll();
    }

}
