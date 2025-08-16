package in.praneeth.SRudhira;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@EntityScan(basePackages = "in.praneeth.Entity")
@ComponentScan(basePackages = "in.praneeth.Service")
@ComponentScan(basePackages = "in.praneeth.Controller")
public class RudhiraporatlmvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(RudhiraporatlmvcApplication.class, args);
	}

}
