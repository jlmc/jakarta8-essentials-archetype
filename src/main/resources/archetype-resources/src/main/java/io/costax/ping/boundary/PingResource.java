package io.costax.ping.boundary;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.inject.Inject;
import org.eclipse.microprofile.config.inject.ConfigProperty;

@Path("ping")
public class PingResource {

	@Inject
    @ConfigProperty(name = "message")
    String message;    

    @GET
    public String ping() {
        return this.message + " Java EE 8!";
    }

}
