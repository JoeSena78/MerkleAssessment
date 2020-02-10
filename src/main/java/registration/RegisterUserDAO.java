package registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterUserDAO {
	public static int registerUser(User user) {
		String query = "INSERT INTO users " + 
				"(first_name, last_name, address_1, address_2, city, state, zip, country, date) VALUES " + 
				"(?,?,?,?,?,?,?,?,?)";
		int result = 0;
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/55TUicnuZy", "55TUicnuZy", "171evsUfUn");

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, user.getFirstName());
            ps.setString(2, user.getLastName());
            ps.setString(3, user.getAddress1());
            ps.setString(4, user.getAddress2());
            ps.setString(5, user.getCity());
            ps.setString(6, user.getState());
            ps.setString(7, user.getZip());
            ps.setString(8, user.getCountry());
            ps.setTimestamp(9, new java.sql.Timestamp(user.getDate().getTime()));
            
            result = ps.executeUpdate();
            ps.close();
            con.close();
		}
		catch(SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
