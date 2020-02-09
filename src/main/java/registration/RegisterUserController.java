package registration;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserController")
public class RegisterUserController extends HttpServlet{
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		String city = request.getParameter("city");
		String state = request.getParameter("state");
		String zip = request.getParameter("zipcode");
		String country = request.getParameter("country");
		
		User user = new User();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setAddress1(address1);
		user.setAddress2(address2);
		user.setCity(city);
		user.setState(state);
		user.setZip(zip);
		user.setCountry(country);
		user.setDate(date); //dateFormat.format(date)
		
		try {
            int result = RegisterUserDAO.registerUser(user); //check if user registered, if registered redirect to confirmation page, else back to registration page
            if(result == 0) {
            	response.sendRedirect("registration.jsp");
            }
            else {
            	response.sendRedirect("confirmation.jsp");
            }
            
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}

}
