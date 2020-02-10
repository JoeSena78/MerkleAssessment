package registration;

import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserController")
public class RegisterUserController extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		//Get user input and save as strings
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zipcode");
		String country = request.getParameter("country");
		
		User user = new User();
		
		//Current date and time user is being registered
		Date date = new Date();
		
		//Add user information into user object
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAddress1(address1);
		user.setAddress2(address2);
		user.setCity(city);
		user.setState(state);
		user.setZip(zip);
		user.setCountry(country);
		user.setDate(date);
		
		//Validate user information again
		if(UserValidation.validate(user)) {
			try {
				//Variable used as response to whether registration was successful
				int result = RegisterUserDAO.registerUser(user);
				
	            if(result == 0) {
	            	//User was not registered, is sent back to registration page
	            	response.sendRedirect("registration.jsp");
	            }
	            else {
	            	//User was registered, is sent to confirmation page
	            	response.sendRedirect("confirmation.jsp");
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		}
		else {
			try {
				//If validation fails, user is sent back to registration page
				response.sendRedirect("registration.jsp");
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
