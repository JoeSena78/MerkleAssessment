<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script>
	function validateForm() {
		var first = document.forms["registrationForm"]["firstname"].value;
		var last = document.forms["registrationForm"]["lastname"].value;
		var add1 = document.forms["registrationForm"]["address1"].value;
		var city = document.forms["registrationForm"]["city"].value;
		var state = document.forms["registrationForm"]["state"].value;
		var zip = document.forms["registrationForm"]["zipcode"].value;
		var country = document.forms["registrationForm"]["country"].value;
		
		if (first == "") {
			alert("First Name must be filled out");
		    return false;
		}
		if(last == ""){
			alert("Last Name must be filled out");
		    return false;
	  	}
	  	if(add1 == ""){
	  		alert("Address 1 must be filled out");
		    return false;
	  	}
	  	if(city == ""){
	  		alert("City must be filled out");
		    return false; 
	  	}
	  	if(state == ""){
	  		alert("State must be selected");
		    return false; 
	  	}
	  	if(zip == ""){
	  		alert("Zip Code must be filled out");
		    return false;  
	  	}
	  	if(country == ""){
	  		alert("Country must be filled out");
		    return false;
	  	}
	  	if(isNaN(zip)){
	  		alert("Please enter a valid zip code");
	  		return false
	  	}
	  	if(zip.length > 5){
	  		alert("Please enter a 5 digit zip code");
	  		document.forms["registrationForm"]["zipcode"].focus();
	  		document.forms["registrationForm"]["zipcode"].value = '';
	  		return false
	  	}
	}
</script>
</head>
<body>
	<div class="container">
		<form name="registrationForm" action="RegisterUserController" onsubmit="return validateForm()" method="post">
			<div class="form-group">
				<label for="firstname">First name:</label>
				<input class="form-control" type="text" name="firstname" maxlength="255">
			</div>
			<div class="form-group">
				<label for="lastname">Last name:</label>
				<input class="form-control" type="text" name="lastname" maxlength="255">
			</div>
			<div class="form-group">
				<label for="address1">Address 1:</label>
				<input class="form-control" type="text" name="address1" maxlength="255">
			</div>
			<div class="form-group">
				<label for="address2">Address 2:</label>
				<input class="form-control" type="text" name="address2" maxlength="255">
			</div>
			<div class="form-group">
				<label for="city">City:</label>
				<input class="form-control" type="text" name="city" maxlength="255">
			</div>
			<div class="form-group">
				<label for="state">State:</label>
				<select class="form-control" name="state">
					<option disabled selected value> -- Select a State -- </option>
					<option value="AL">Alabama</option>
					<option value="AK">Alaska</option>
					<option value="AZ">Arizona</option>
					<option value="AR">Arkansas</option>
					<option value="CA">California</option>
					<option value="CO">Colorado</option>
					<option value="CT">Connecticut</option>
					<option value="DE">Delaware</option>
					<option value="DC">District Of Columbia</option>
					<option value="FL">Florida</option>
					<option value="GA">Georgia</option>
					<option value="HI">Hawaii</option>
					<option value="ID">Idaho</option>
					<option value="IL">Illinois</option>
					<option value="IN">Indiana</option>
					<option value="IA">Iowa</option>
					<option value="KS">Kansas</option>
					<option value="KY">Kentucky</option>
					<option value="LA">Louisiana</option>
					<option value="ME">Maine</option>
					<option value="MD">Maryland</option>
					<option value="MA">Massachusetts</option>
					<option value="MI">Michigan</option>
					<option value="MN">Minnesota</option>
					<option value="MS">Mississippi</option>
					<option value="MO">Missouri</option>
					<option value="MT">Montana</option>
					<option value="NE">Nebraska</option>
					<option value="NV">Nevada</option>
					<option value="NH">New Hampshire</option>
					<option value="NJ">New Jersey</option>
					<option value="NM">New Mexico</option>
					<option value="NY">New York</option>
					<option value="NC">North Carolina</option>
					<option value="ND">North Dakota</option>
					<option value="OH">Ohio</option>
					<option value="OK">Oklahoma</option>
					<option value="OR">Oregon</option>
					<option value="PA">Pennsylvania</option>
					<option value="RI">Rhode Island</option>
					<option value="SC">South Carolina</option>
					<option value="SD">South Dakota</option>
					<option value="TN">Tennessee</option>
					<option value="TX">Texas</option>
					<option value="UT">Utah</option>
					<option value="VT">Vermont</option>
					<option value="VA">Virginia</option>
					<option value="WA">Washington</option>
					<option value="WV">West Virginia</option>
					<option value="WI">Wisconsin</option>
					<option value="WY">Wyoming</option>
				</select><br>
			</div>
			<div class="form-group">
				<label for="zipcode">Zip Code:</label>
				<input class="form-control" type="number" name="zipcode">
			</div>
			<div class="form-group">
				<label for="country">Country:</label>
				<select class="form-control" name="country">
					<option disabled selected value> -- Select a Country -- </option>
					<option value="United States">United States</option></select>
			</div>
			<br>
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>