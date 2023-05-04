package com.omdb.utilities;

import io.restassured.response.Response;
import org.junit.Assert;

public class APIUtils {


    public static Response statusCodeCheck(Response response, String expectedStatusCode) {
        int actualResult = response.statusCode();
        System.out.println("actual Status Code is == > " + actualResult);
        System.out.println("expected Content Type is == > " + expectedStatusCode);
        System.out.println();

        Assert.assertEquals(actualResult, Integer.parseInt(expectedStatusCode));
        return response;

    }
    public static Response contentTypeCheck(Response response, String expectedContentType) {
        String actualResult = response.contentType();
        System.out.println("actual Content Type is == > " + actualResult);
        System.out.println("expected Content Type is == > " + expectedContentType);
        System.out.println();

        Assert.assertEquals(actualResult, expectedContentType);
        return response;

    }

    public static Response doValidation(Response response, String path, String expectedResult) {
        String actualResult = response.path(path).toString();
        System.out.println("actual result for " + path + " is == > " + actualResult);
        System.out.println("expected result  is == > " + actualResult);
        System.out.println();

        Assert.assertEquals(expectedResult, actualResult);
        return response;

    }
}
