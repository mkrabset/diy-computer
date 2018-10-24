package ivark.diycomputer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;

@Controller
@EnableAutoConfiguration
@ComponentScan("ivark.diycomputer")
public class Application {
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
