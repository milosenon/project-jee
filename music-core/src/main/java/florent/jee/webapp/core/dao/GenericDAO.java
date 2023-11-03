package florent.jee.webapp.core.dao;

import florent.jee.webapp.core.entity.GenericEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public interface GenericDAO<T extends GenericEntity> extends JpaRepository<T, Long> {
}
