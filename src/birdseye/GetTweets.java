package birdseye;


import twitter4j.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

import twitter4j.auth.AccessToken;

public class GetTweets extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String[] keywordsArray = { "obama" };
    	Sample sample = new Sample();
    	try {
			sample.main(keywordsArray);
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}
}