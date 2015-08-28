<!DOCTYPE html>
<html>
	<head>
		<meta charset=utf-8>
		<title>CmpE 282 Lab 1</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css">
    <!-- Le styles  -->
    <link href="../static/assets/css/bootstrap.css" rel="stylesheet"/>
	<link href="../static/assets/css/docs.css" rel="stylesheet"/>
    <link href="../static/css/product-style.css" rel="stylesheet"/>
	
	 <link href="../static/assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>
	
	<!-- Less styles   -->
	<link rel="stylesheet/less" type="text/css" href="../static/less/bootsshop.less">
	<script src="../static/js/less.js" type="text/javascript"></script>
	 
	
	
		<style type="text/css">
		select {
		width: 10;}
		</style>
</head>
	<body>
		<div class="container">
			<hr>
			<div class="row-fluid">
				<div class="span2">
					<p> <img class="img-responsive img-circle" height="80%" width="80%" src="../static/img/Amazon-Store-Logo-small.gif" onClick="imageClick('/')" alt="" />
				</div>
				<div class="span4">
					<br>					
					<h2> CmpE 282 Lab </h2>
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


	<div class="wrapper">
<div class="row">
		<div id="sidebar" class="span2">
			<ul class="nav nav-list bs-docs-sidenav" style="display: block;">											
				<li class="subMenu"><a href="/products"> Desktop</a>
					<ul>
						<li>PC</li>
						<li>MAC</li>
					</ul>
				</li>
			  </ul>
		</div>
		%for product in myproducts:
		<div class="row">
			<div class="span3">
			<p>{{product['pro_id']}}.jpg</p>
			<a><img src="../static/assets/products/large-icons/{{product['pro_id']}}.jpg" alt=""/></a>
			</div>

			<div class="span5">
			
				<div class="row">
				<p>product title</p>
				<h2>{{product['pro_name']}}<h2>
				</div>
				 <h3>{{product['pro_cost']}}</h3>
				<div class="row">
				<p>product description</p>
				<h3>{{product['pro_description']}}</h3>
				</div>

				<div class="row">
				<p>qty and add to cart</p>
					<form name="input" action="/" method="post">
						  <div class="row">
								<label for="quantity">Qty: </label> 
								<input min="1" type="number" id="quantity" name="quantity" value="1" />
								<style>#quantity { padding:2px; width:35px; border: 1px solid #555; }</style>				
							</div>
							<div class="row">
								<button id="submitbtn" name="submitbtn" class="btn btn-info"  onclick="return validateCartForm()" method="post" onblur="input_reset(this)">Submit</button>
							</div>	
							
					</form>
				</div>
			</div>
		</div>
		%end
	   

	</div>
</body>
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

</html>

