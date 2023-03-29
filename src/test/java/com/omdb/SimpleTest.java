package com.omdb;

import com.omdb.utilities.ConfigurationReader;
import io.restassured.http.ContentType;
import org.junit.Test;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.is;

public class SimpleTest {

    // GET http://www.omdbapi.com/?t=Game of Thrones&r=xml&apikey=yourKeyGoesHere
    // t => title
    // r => return type
    // apikey => private api key which we got it from website.

    @Test
    public void OMDbSimpleTest(){
        String baseUrl= ConfigurationReader.getProperty("baseUrl");
        String apiKey = ConfigurationReader.getProperty("apiKey");
        given()
                .log().all()
                .baseUri(baseUrl)
                .queryParam("apikey", apiKey)
                .queryParam("r","json")
                .queryParam("t","Avatar").
                when()
                .get().
                then().
                log().all()
                .statusCode(200)
                .contentType(ContentType.JSON)
                .body("Title" , is("Avatar"))
                // also validate year , rated , released , runtime
                .body("Year", is("2009"))
                .body("Rated", is("PG-13"))
                .body("Released", is("18 Dec 2009"))
                .body("Runtime", is("162 min"))
                .body("Ratings[0].Value", is("7.9/10"))
        // the result has only 2 elements , parent : root , child as Movie
        // all the movie data is stored under Movie attributes
        // below xmlpath is specifying go to the /root/movie and find the attribute of the movie element
        // called title
//                .contentType(application/json)
//                .body("root.movie.@title" , is("The Boss Baby"))
//                .body("root.movie.@year", is("2017"))
//                .body("root.movie.@rated", is("PG"))
//                .body("root.movie.@released", is("31 Mar 2017"))
//                .body("root.movie.@runtime", is("97 min"))
        ;
    }
}
