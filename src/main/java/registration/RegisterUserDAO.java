package registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterUserDAO {
	public static int registerUser(User user) {
		String query = "INSERT INTO users " + 
				"(firstName, lastName, address1, address2, city, state, zip, country, date) VALUES " + 
				"(?,?,?,?,?,?,?,?,?)";
		int result = 0;
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/test", "root", "root"); //change to correct database when uploaded to heroku

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getAddress1());
            ps.setString(4, user.getAddress2());
            ps.setString(5, user.getCity());
            ps.setString(6, user.getState());
            ps.setString(7, user.getZip());
            ps.setString(8, user.getCountry());
            ps.setString(9, user.getDate());
            
            result = ps.executeUpdate();
            ps.close();
            con.close();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}