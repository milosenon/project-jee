package florent.jee.webapp.core.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = "florent.jee.webapp.core.dao")
@EntityScan(basePackages = "florent.jee.webapp.core.entity")
@ComponentScan(basePackages = "florent.jee.webapp.core.service")
public class CoreConfig {
}

