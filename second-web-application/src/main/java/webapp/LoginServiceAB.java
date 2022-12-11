package webapp;

public class LoginServiceAB {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("Saurabh") && password.equals("Saurabh");
	}

}