<!DOCTYPE html>
<html>
	<head>
		<meta charset=utf-8>
		<title>CmpE 282 Lab 1</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
	</head>	
	<body>
	<script src="static/js/bootstrap.js"></script>
		<div class="container">
			<hr>
            <div class="row">
                    <div class="span2">
                            <p> <img class="img-responsive img-circle" height="80%" width="80%" src="static/img/Amazon-Store-Logo-small.gif" onClick="imageClick('/')" alt="" />
                    </div>
                    <div class="span3">
					<br>
                            <h3> CmpE 282 Lab 1</h3>
                    </div>
					<div  class="span3 pull-right">
						<div id="loginname" class="row">
						<h4> </h4>
						</div>
						<div id="logintime" class="row">
						<h4> </h4>
						</div>
	                </div>

            </div>
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<ul class="nav">
                			<li><a href="#">Products</a></li>
						</ul>
						<ul id="indexloginlist" class="nav pull-right">
								<li id="cartlink"><a href="#"></a></li>
								<li id="orderslink"><a href="#"></a></li>
								<li id="indexlogin"><a href="/login">Login</a></li>
        	          				</ul>

                	</div>
	           </div>
	        </div>
	        
	        <div class="row">
				<div class="span2">
				</div>

			<div class="span8" >
				 <form method="post" name="registerForm" class="form-horizontal" action="/signup" >
					<fieldset>

					<!-- Form Name -->
					<legend>Registration !!! </legend>
					
					<!-- Text input-->
					<div class="control-group">
					  <div class="controls">
					    <input id="fname" class="span2" name="fname" type="text" placeholder="First Name" class="input-medium">
						<input id="lname" class="span2" name="lname" type="text" placeholder="Last Name" class="input-medium">
					  </div>
					</div>

					<!-- Text input-->
					<div class="control-group">
					  <label class="control-label" for="emailidreg"></label>
					  <div class="controls">
					    <input id="email" class="span4" name="email" type="text" placeholder="Enter your Email ID" class="input-medium">
					  </div>
					</div>

					<!-- Password input-->
					<div class="control-group">
					  <label class="control-label" for="passwordreg"></label>
					  <div class="controls">
					    <input id="password" class="span4" name="password" type="password" placeholder="Password" class="input-medium">
					  </div>
					</div>

					<!-- Button -->
					<div class="control-group">
					  <div class="controls">
					  	<input type="submit" value="Submit" >
					    <button id="registerbtn" name="registerbtn" class="btn btn-default" onclick="return validateRegisterForm()" method="post" action="/" onblur="input_reset(this)">Create my Account</button>
						<button id="cancelbtn" name="cancelbtn" class="btn btn-default" onclick="input_reset(this)">Cancel</button>
					  </div>
					</div>

					</fieldset>
				</form>
			 </div>
			</div>
		</div> <!--container-->

		<script>
		function input_focus(obj){
			if ( obj.value == obj.defaultValue ){
			obj.value = ""
			}
		}

		function input_reset(obj){
			obj.value = obj.defaultValue;
		}
		function imageClick(url) {
		    window.location = url;
		}

		</script>
	</body>
</html>
