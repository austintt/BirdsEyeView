package birdseye;


import twitter4j.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

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
    	response.setContentType("application/json");
    	
    	List<TweetData> statuses = new ArrayList<TweetData>();
    	List<String> users = new ArrayList<String>();
    	List<String> tweetText = new ArrayList<String>();
    	String tempTopic = request.getParameter("topic");
    	String keywordsArray[] = new String[3];
    	keywordsArray[0] = tempTopic;
    	
    	//TODO test if this works
    	//String[] keywordsArray = request.getParameter("topic").split(" ");
    	Sample sample = new Sample();
    	try {
    		
			statuses = sample.execute(keywordsArray);
			System.out.println("HERE!!!!");
			for (int i = 0; i < statuses.size(); i++)
			{
				users.add(statuses.get(i).getUsername());
				tweetText.add(statuses.get(i).getText());
			}
			response.getWriter().write(new Gson().toJson(users));
			response.getWriter().write(new Gson().toJson(tweetText));
			//request.getSession().setAttribute("users", new Gson().toJson(users));
			//request.getSession().setAttribute("text", new Gson().toJson(tweetText));
			response.sendRedirect("test.jsp");
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
	}
}