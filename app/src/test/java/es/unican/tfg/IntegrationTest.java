package es.unican.tfg;

import es.unican.tfg.RoundRobinApp;
import es.unican.tfg.config.TestSecurityConfiguration;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.springframework.boot.test.context.SpringBootTest;

/**
 * Base composite annotation for integration tests.
 */
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
@SpringBootTest(classes = { RoundRobinApp.class, TestSecurityConfiguration.class })
public @interface IntegrationTest {
}
