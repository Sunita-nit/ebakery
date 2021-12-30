<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
	<meta charset="UTF-8">
	<title>order now page</title>
	<link href="style.css" rel="stylesheet">
</head>
<body>
	<div class="form-box">
		<div class="header-text">
			Order Now
		</div><form action="ConfirmOrderServlet" method="post">
	<label>Name</label><input type="text" name="name" required="required">
	<lablel>Phone</lablel><input type="text" name="phone" maxlength="10" required="required">
	<lablel>Address</lablel><input type="text" name="address" required="required">
	<lablel>Pick_Up_Time</lablel><select name="pick_up_time" id="unit" class="form-control" required="required">
										<option value="10:30am">10:30am</option>
										<option value="11:00am">11:00am</option>
										<option value="11:30am">11:30am</option>
										<option value="12:00pm">12:00pm</option>
										<option value="12:30pm">12:30pm</option>
										<option value="1:00pm">1:00pm</option>
										<option value="1:30pm">1:30pm</option>
										<option value="2:00pm">2:00pm</option>
										<option value="2:30pm">2:30pm</option>
										<option value="3:00pm">3:00pm</option>
										<option value="3:30pm">3:30pm</option>
										<option value="4:00pm">4:00pm</option>
										<option value="4:30pm">4:30pm</option>
										<option value="5:00pm">5:00pm</option>
										<option value="5:30pm">5:30pm</option>
										<option value="6:00pm">6:00pm</option>
										<option value="6:30pm">6:30pm</option>
										<option value="7:00pm">7:00pm</option>
										<option value="7:30pm">7:30pm</option>
										<option value="8:00pm">8:00pm</option>
										<option value="8:30pm">8:30pm</option>
										<option value="9:00pm">9:00pm</option>
										<option value="9:30pm">9:30pm</option>
										
									</select>
				<lablel>Cake Flavour</lablel><select name="flavour" id="unit" class="form-control" name="flavour" required="required">
										<option value="Black Forest">Black Forest</option>
										<option value="Yellow Butter Cake">Yellow Butter Cake</option>
										<option value="Red Velvet Cake">Red Velvet Cake</option>
										<option value="Rasmalai Cake">Rasmalai Cake</option>
										<option value="Vanilla Cake">Vanilla Cake</option>
										<option value="Strawbery Cake">Strawbery Cake</option>
										<option value="Chocolate Cake">Chocolate Cake</option>
										<option value="Pineapple Cake">Pineapple Cake</option>
										<option value="Mango Cake">Mango Cake</option>
									</select>
								
		<lablel>Date</lablel><input type="date" name="delivery_date" required="required">

	
<pre>500g                      200rs<input type="radio" name="cake_unit" value="200" id="unit" class="form-control"></pre>
<pre>1kg                       400rs<input type="radio" name="cake_unit" value="400" id="unit" class="form-control"></pre>
<pre>1.5kg                     450rs<input type="radio" name="cake_unit" value="450" id="unit" class="form-control"></pre>
<pre>2kg                       800rs<input type="radio" name="cake_unit" value="800" id="unit" class="form-control"></pre>

	
	<button>Order</button>
	 
	
</form>

	</div>
</body>
</html>

</html>