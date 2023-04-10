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
		.addDecoratorPath("/history", "/decorators/callhistory.jsp")
		.addDecoratorPath("/history/*", "/decorators/callhistory.jsp")
		.addDecoratorPath("/live", "/decorators/live.jsp")
		.addDecoratorPath("/inbound", "/decorators/inbound.jsp")
		.addDecoratorPath("/contact", "/decorators/contact.jsp")
		.addDecoratorPath("/report", "/decorators/live.jsp")
		.addDecoratorPath("/report/*", "/decorators/inbound.jsp")
		.addDecoratorPath("/report/*", "/decorators/live.jsp");
	}
	
}
