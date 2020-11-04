package fr.hardcoding;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;

import org.eclipse.microprofile.rest.client.inject.RegisterRestClient;

@Path("/")
@RegisterRestClient
public interface PublishTwitterService {

    @GET
    @Produces("application/json")
     public Tweet getTwitterPost( //
            @QueryParam("url") //
            String url, //
            @QueryParam("omit_script") //
            String omit_script);
}