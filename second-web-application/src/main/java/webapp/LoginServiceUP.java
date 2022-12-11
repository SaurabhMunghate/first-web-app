package webapp;

public class LoginServiceUP {
	public boolean validateUser(String user, String password) {
		return user.equalsIgnoreCase("Saurabh") && password.equals("Saurabh");
	}

}