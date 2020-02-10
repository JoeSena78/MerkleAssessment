package registration;

public class UserValidation {

	public static boolean validate(User user) {
		//Checking if entered zip code is a number
		try {
			int i = Integer.parseInt(user.getZip());
		}
		catch(NumberFormatException e) {
			return false;
		}
		
		if(user.getFirstName() == null || user.getFirstName().isEmpty()) {
			return false;
		}
		else if(user.getLastName() == null || user.getLastName().isEmpty()) {
			return false;
		}
		else if(user.getLastName() == null || user.getLastName().isEmpty()) {
			return false;
		}
		else if(user.getAddress1() == null || user.getAddress1().isEmpty()) {
			return false;
		}
		else if(user.getCity() == null || user.getCity().isEmpty()) {
			return false;
		}
		else if(user.getState() == null || user.getState().isEmpty()) {
			return false;
		}
		else if(user.getZip() == null || user.getZip().isEmpty()) {
			return false;
		}
		else if(user.getZip().length() > 5) {
			return false;
		}
		else if(user.getCountry() == null || user.getCountry().isEmpty()) {
			return false;
		}
		else {
			return true;
		}
	}
}
