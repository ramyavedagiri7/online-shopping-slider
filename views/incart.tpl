<!DOCTYPE html>
<html>
	<head>
		<meta charset=utf-8>
		<title>CmpE 282 Lab 1</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="../static/css/style.css">
	</head>	
	<body onload="checkCookie()">
	<script src="../static/js/bootstrap.js"></script>
		<div class="container">
			<hr>
			<div class="row">
				<div class="span2">
					<p> <img class="img-responsive img-circle" height="80%" width="80%" src="../static/img/Amazon-Store-Logo-small.gif" onClick="imageClick('/')" alt="" />
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
                			<li><a href="/products">Products</a></li>
						</ul>
						<ul id="indexloginlist" class="nav pull-right">
								<li id="cartlink"><a href="#"></a></li>
								<li id="orderslink"><a href="#"></a></li>
								<li id="indexlogin"><a href="/login">Login</a></li>
        	          				</ul>

                	</div>
	           </div>
	        </div>
			<hr>
<!-- ============================================================================================== -->
			<div class="navbar">
				 %for cartitem in mycart:

				<div class="navbar-inner">
				  <div class="nav">	
					<div class="span1">
					   <p>number</p>
					   <input type="checkbox" name="option1" value="{{cartitem['pro_id']}}">	
					</div>
					<div class="span2">
					   <p>img</p>
					   <a><img src="../static/assets/products/thumbnails/{{cartitem['pro_id']}}.jpg" alt=""/></a>	
					</div>
					<div class="span4">
						<p>product title</p>
						<h5>{{cartitem['pro_name']}}<h5>	
					</div>
					<div class="span2">
						<p>product quantity</p>
							<div class="row">
								<label for="quantity"> </label> 
								<input min="0" type="number" id="quantity" name="quantity" value="{{cartitem['pro_qty']}}" />
								<style>#quantity { padding:2px; width:35px; border: 1px solid #555; }</style>				
							</div>
						<h5><h5>
					</div>
					<div class="span2">
						<p>product cost</p>
						<h4>{{cartitem['pro_cost']}}<h4>
					</div>
				  </div>
				</div>
				  %end
			</div>
			
			<div class="row">
				<div class="span3 pull-right">
				<div class="row">
					<div class="control-group">
								<label class="control-label" for="submitbtn"></label>
		
								<div class="controls">
									<button id="checkoutbtn"  onClick="location.href='/creditFill'" name="CheckOut" class="btn btn-info" method="get" onblur="input_reset(this)">CheckOut</button>

									<button id="reviewbtn" onClick="location.href='/creditFill'"  name="Review your Order" class="btn btn-info" method="post" onblur="input_reset(this)">Review your Order</button>
								</div>
					</div>
				</div>

				<div id="MyTotalCost" class="row">
					<h3 style="color: #0077b3; font-weight: bold;">Total cost: $</h3>
					<h3 style="color: #0077b3; font-weight: bold;"><h3>
				</div>
				</div>
			</div>

	</div>

	<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="../static/assets/js/jquery.js"></script>
	<script src="../static/assets/js/google-code-prettify/prettify.js"></script>
    <script src="../static/assets/js/application.js"></script>
    <script src="../static/assets/js/bootstrap-transition.js"></script>
    <script src="../static/assets/js/bootstrap-modal.js"></script>
    <script src="../static/assets/js/bootstrap-scrollspy.js"></script>
    <script src="../static/assets/js/bootstrap-alert.js"></script>
    <script src="../static/assets/js/bootstrap-dropdown.js"></script>
    <script src="../static/assets/js/bootstrap-tab.js"></script>
    <script src="../static/assets/js/bootstrap-tooltip.js"></script>
    <script src="../static/assets/js/bootstrap-popover.js"></script>
    <script src="../static/assets/js/bootstrap-button.js"></script>
    <script src="../static/assets/js/bootstrap-collapse.js"></script>
    <script src="../static/assets/js/bootstrap-carousel.js"></script>
    <script src="../static/assets/js/bootstrap-typeahead.js"></script>
    <script src="../static/assets/js/bootstrap-affix.js"></script>
    <script src="../static/assets/js/jquery.lightbox-0.5.js"></script>
	<script src="../static/assets/js/bootsshoptgl.js"></script>
	 <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
	</body>
</html>
