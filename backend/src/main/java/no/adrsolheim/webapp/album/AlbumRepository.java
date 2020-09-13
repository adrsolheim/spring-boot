package no.adrsolheim.webapp.album;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AlbumRepository extends JpaRepository<Album, Integer> {

    // Implementation is provided by the spring boot jpa dependency
    // This interface replaces a DAO class
    public List<Album> findAll();

    public Album findById(int id);

    public Album save (Album album);

    public void deleteById(int id);
}