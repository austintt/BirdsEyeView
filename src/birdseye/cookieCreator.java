/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package birdseye;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kyle
 */
public class cookieCreator {
    public void createCookie(HttpServletRequest request, 
                             HttpServletResponse response, String recentSearch){
   
    final Boolean useSecureCookie = false;
    final int expiryTime = 30 * 60 * 60 * 24;  // 30 days in seconds
    final String cookiePath = "/";

    Cookie cookie = new Cookie("birdsEye", recentSearch);

    cookie.setSecure(useSecureCookie.booleanValue());  // determines whether the 
                                   // cookie should only be sent using a secure 
                                   // protocol, such as HTTPS or SSL
    cookie.setMaxAge(expiryTime);  // A negative value means that the cookie is not stored 
                                   // persistently and will be deleted when the Web browser exits. 
                                   // A zero value causes the cookie to be deleted.
    cookie.setPath(cookiePath);
    response.addCookie(cookie);
}
    public String retrieveCookie(HttpServletRequest request, 
                             HttpServletResponse response){
        Cookie[] cookies = request.getCookies();
        String recentSearch = null;
        for(Cookie cookie : cookies){
           if("birdsEye".equals(cookie.getName())){
           recentSearch = cookie.getValue();
    }
}
        return recentSearch;
    
}
    public void deleteCookie(HttpServletRequest request, 
                             HttpServletResponse response){
    Cookie cookie = new Cookie("birdsEye", "");
    cookie.setMaxAge(0); 
    response.addCookie(cookie);
}
}
