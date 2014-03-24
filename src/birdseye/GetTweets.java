package birdseye;

import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.RequestToken;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import twitter4j.auth.AccessToken;

public class GetTweets extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	TwitterStream twitterStream = new TwitterStreamFactory().getInstance();
        
        StatusListener listener = new StatusListener() {

	        public void onStatus(Status status) {
	            System.out.println("@" + status.getUser().getScreenName() + " - " + status.getText());
	        }

	        public void onDeletionNotice(StatusDeletionNotice statusDeletionNotice) {
	            System.out.println("Got a status deletion notice id:" + statusDeletionNotice.getStatusId());
	        }

	        public void onTrackLimitationNotice(int numberOfLimitedStatuses) {
	            System.out.println("Got track limitation notice:" + numberOfLimitedStatuses);
	        }

	        public void onScrubGeo(long userId, long upToStatusId) {
	            System.out.println("Got scrub_geo event userId:" + userId + " upToStatusId:" + upToStatusId);
	        }

	        public void onException(Exception ex) {
	            ex.printStackTrace();
	        }
    	};

		// Listener
	    twitterStream.addListener(listener);

	    // Filter
	    FilterQuery filterQ = new FilterQuery();
	    String keyword = request.getParameter("searchTerm");
	    String[] keywordsArray = { keyword };
	    filterQ.track(keywordsArray);
	    twitterStream.filter(filterQ);   
	}

}