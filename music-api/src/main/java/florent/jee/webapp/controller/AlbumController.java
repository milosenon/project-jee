package florent.jee.webapp.controller;


import florent.jee.webapp.core.entity.Album;
import florent.jee.webapp.core.service.AlbumService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/v1/albums")
public class AlbumController {

    private final AlbumService service;

    public AlbumController(AlbumService service) {
        this.service = service;
    }

    @GetMapping("/")
    public List<Album> findAll(){
        return service.findAll();
    }

    @GetMapping("/findByArtist/{idArtist}")
    public List<Album> findAllByArtist(@PathVariable Long idArtist) {
        return service.findAllByArtist(idArtist);
    }
}
