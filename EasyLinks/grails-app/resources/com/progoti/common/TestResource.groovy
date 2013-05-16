package com.progoti.common

import javax.ws.rs.GET
import javax.ws.rs.Path
import javax.ws.rs.Produces
import javax.ws.rs.QueryParam


@Path('/api/test')
class TestResource {

    @GET
    @Produces('text/plain')
    String getTestRepresentation(@QueryParam('name') String name) {
        "Hello ${name ? name : 'unknown'}"
    }


}
