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

public class SignIn extends HttpServlet {
    private static final long serialVersionUID = -6205814293093350242L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Twitter twitter = new TwitterFactory().getInstance();

        request.getSession().setAttribute("twitter", twitter);
        try {
            //Passing the callback url
            StringBuffer callbackURL = request.getRequestURL();
            int index = callbackURL.lastIndexOf("/");
            callbackURL.replace(index, callbackURL.length(), "").append("/callback");

            RequestToken requestToken = twitter.getOAuthRequestToken(callbackURL.toString());
            request.getSession().setAttribute("requestToken", requestToken);
            response.sendRedirect(requestToken.getAuthenticationURL());


            //Gets the OAuth access token added to the callback
            requestToken = (RequestToken) request.getSession().getAttribute("requestToken");
            String verifier = request.getParameter("oauth_verifier");
            try {
                twitter.getOAuthAccessToken(requestToken, verifier);
                request.getSession().removeAttribute("requestToken");
            } catch (TwitterException e) {
                throw new ServletException(e);
            }
            response.sendRedirect(request.getContextPath() + "/");

            } catch (TwitterException e) {
                throw new ServletException(e);
            }

    }

    //TODO: This will access our SQL database to grab tokens for users that have already logged on.
    private static AccessToken loadAccessToken(int useId){
        //SELECT token, tokenSecret FROM user WHERE userId = useId
        String token = "";// user.token
        String tokenSecret = "";// user.tokenSecret
        return new AccessToken(token, tokenSecret);
  }
}