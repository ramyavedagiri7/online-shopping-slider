<!DOCTYPE html>
<html>
        <head>
                <meta charset=utf-8>
                <title>CmpE 282 Lab 1</title>
                <link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
        </head>
        <body onload="checkCookie()">
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
<!-- <div class="container"> -->
  <div class="row">
    <div class="span12">
      <form name="creditForm" class="form-horizontal span6"  method="post" action="/creditFill">
        <fieldset>
          <legend>Payment</legend>
       
          <div class="control-group">
            <label class="control-label">Card Holder's Name</label>
            <div class="controls">
              <input type="text" class="input-block-level" pattern="\w+ \w+.*" title="Fill your first and last name" required>
            </div>
          </div>
       
          <div class="control-group">
            <label class="control-label">Card Number</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="First four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Second four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Third four digits" required>
                </div>
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="4" pattern="\d{4}" title="Fourth four digits" required>
                </div>
              </div>
            </div>
          </div>
       
          <div class="control-group">
            <label class="control-label">Card Expiry Date</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span9">
                  <select class="input-block-level">
                    <option>January</option>
                    <option>...</option>
                    <option>December</option>
                  </select>
                </div>
                <div class="span3">
                  <select class="input-block-level">
                    <option>2013</option>
                    <option>...</option>
                    <option>2015</option>
                  </select>
                </div>
              </div>
            </div>
          </div>
       
          <div class="control-group">
            <label class="control-label">Card CVV</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required>
                </div>
                <div class="span8">
                  <!-- screenshot may be here -->
                </div>
              </div>
            </div>
          </div>
       
          <div class="form-actions">
            <button type="submit" class="btn btn-primary" method="post">Submit</button>
            <button type="button" class="btn">Cancel</button>
          </div>
        </fieldset>
      </form>
    </div>
  </div>
<!-- </div> -->
</body>
</html>
