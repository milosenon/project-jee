package florent.jee.webapp.config;

import florent.jee.webapp.core.config.CoreConfig;
import florent.jee.webapp.web.config.WebConfig;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Configuration
@Import({CoreConfig.class, ApiConfig.class, WebConfig.class})
public class AppConfig {
}

