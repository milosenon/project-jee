package florent.jee.webapp.data.config;

import florent.jee.webapp.core.config.CoreConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import(CoreConfig.class)
public class DataConfig {
}
