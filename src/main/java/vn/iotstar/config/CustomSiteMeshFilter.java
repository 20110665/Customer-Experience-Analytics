package vn.iotstar.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CustomSiteMeshFilter extends ConfigurableSiteMeshFilter{

	@Override
	protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
		super.applyCustomConfiguration(builder);
		builder.addDecoratorPath("/", "/decorators/home.jsp")
		.addDecoratorPath("/login", "/decorators/login.jsp")
		.addDecoratorPath("/signup", "/decorators/signup.jsp");
	}
	
}
