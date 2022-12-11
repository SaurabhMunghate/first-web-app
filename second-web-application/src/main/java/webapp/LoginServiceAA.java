package webapp;

public class LoginServiceAA {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("Saurabh") && password.equals("Saurabh");
	}

}