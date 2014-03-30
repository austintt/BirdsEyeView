package birdseye;


import twitter4j.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import twitter4j.auth.AccessToken;

public class GetTweets extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	//TODO allow parameter search in Sample
    	//TODO connect through AJAX index to GetTweets
    	//TODO call for tweets every 10 seconds
    	//TODO display tweets
    	
    	List<TweetData> statuses = new ArrayList();
    	String[] keywordsArray = { "obama" };
    	Sample sample = new Sample();
    	try {
    		
			statuses = sample.execute();
			System.out.println("HERE!!!!");
			for (int i = 0; i < statuses.size(); i++)
			{
				System.out.println(statuses.get(i).getUsername());
			}
			request.getSession().setAttribute("statuses", statuses);
			response.sendRedirect("test.jsp");
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}
}