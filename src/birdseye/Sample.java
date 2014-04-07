package birdseye;
/*
 * Copyright 2007 Yusuke Yamamoto
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


import java.util.ArrayList;
import java.util.List;

import twitter4j.*;
import twitter4j.conf.ConfigurationBuilder;

/**
 * <p>This is a code example of Twitter4J Streaming API - sample method support.<br>
 * Usage: java twitter4j.examples.PrintSampleStream<br>
 * </p>
 *
 * @author Yusuke Yamamoto - yusuke at mac.com
 */
public class Sample {

	  public static void main(String[] args) throws TwitterException {
	    Sample stream = new Sample();
	    stream.execute(args);
	  }

	  private final Object lock = new Object();
	  public List<TweetData> execute(String[] args) throws TwitterException {

	    final List<TweetData> statuses = new ArrayList();

	    ConfigurationBuilder cb = new ConfigurationBuilder();
	    cb.setOAuthAccessToken("14538839-3MX2UoCEUaA6u95iWoYweTKRbhBjqEVuK1SPbCjDV");
	    cb.setOAuthAccessTokenSecret("nox7eYyOJpyiDiISHRDou90bGkHKasuw1IMqqJUZMaAbj");

	    TwitterStream twitterStream = new TwitterStreamFactory(cb.build())
	        .getInstance();

	    StatusListener listener = new StatusListener() {

	      public void onStatus(Status status) {
	    	String user    = status.getUser().getScreenName();
	    	String content = status.getText();
	    	TweetData newTweet = new TweetData(user, content);
	    	
	        statuses.add(newTweet);
	        System.out.println(statuses.size() + ":" + status.getText());
	        if (statuses.size() > 10) {
	          synchronized (lock) {
	            lock.notify();
	          }
	          System.out.println("unlocked");
	        }
	      }

	      public void onDeletionNotice(
	          StatusDeletionNotice statusDeletionNotice) {
	        System.out.println("Got a status deletion notice id:"
	            + statusDeletionNotice.getStatusId());
	      }

	      public void onTrackLimitationNotice(int numberOfLimitedStatuses) {
	        System.out.println("Got track limitation notice:"
	            + numberOfLimitedStatuses);
	      }

	      public void onScrubGeo(long userId, long upToStatusId) {
	        System.out.println("Got scrub_geo event userId:" + userId
	            + " upToStatusId:" + upToStatusId);
	      }

	      public void onException(Exception ex) {
	        ex.printStackTrace();
	      }

	      @Override
	      public void onStallWarning(StallWarning sw) {
	        System.out.println(sw.getMessage());

	      }
	    };

	    FilterQuery fq = new FilterQuery();
	    String[] keywords = args;

	    fq.track(keywords);


	    twitterStream.addListener(listener);
	    twitterStream.filter(fq);

	    try {
	      synchronized (lock) {
	        lock.wait();
	      }
	    } catch (InterruptedException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	    System.out.println("returning statuses");
	    twitterStream.shutdown();
	    return statuses;
	  }
	}