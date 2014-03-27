package birdseye;

public class TweetData {
	String username;
	String text;
	
	public TweetData(String user, String content)
	{
		setUsername(user);
		setText(content);
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}

}
