<!DOCTYPE html>
<html>
	<head>
		<meta charset=utf-8>
		<title>CmpE 282 Lab 1</title>
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="static/css/style.css">
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
<!-- ============================================================================================== -->

			<div class="row">
				<div id="sidebar" class="span2">
					<ul class="nav nav-list bs-docs-sidenav" style="display: block;">											
						<li class="subMenu"><a> Desktop</a>
							<ul>
								<li><a class="active" href="products.html">PC</a></li>
								<li><a href="products.html">MAC</a></li>
							</ul>
						</li>
					  </ul>
				</div>
				<div class="span9">
				<br class="clr"/>
					<div class="tab-content">
						<div class="tab-pane" id="listView">
							<hr class="soft"/>
						</div>

						<div class="tab-pane  active" id="blockView">
							<ul class="thumbnails">
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/CPGM1293D"><img src="static/assets/products/thumbnails/PC/CPGM1293D.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/CPGM1293D">CybertronPC Patriot GM1293D Desktop (Black/Red)</a></h6>
									  <h6><span class="pull-right">$499.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/DID3647"><img src="static/assets/products/thumbnails/PC/DID3647.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/DID3647">Dell Inspiron Desktop (i3647-1231BK)</a></h6>
									  <h6><span class="pull-right">$373.08</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/DID3847"><img src="static/assets/products/thumbnails/PC/DID3847.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/DID3847">Dell Inspiron Desktop (i3847-4616BK)</a></h6>
									  <h6><span class="pull-right">$479.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/GAIOZX4270"><img src="static/assets/products/thumbnails/PC/GAIOZX4270.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/GAIOZX4270">Gateway ZX4270-UR30 19.5-Inch All-in-One Desktop (Black)</a></h6>
									  <h6><span class="pull-right">$429.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/HPAIO5010"><img src="static/assets/products/thumbnails/PC/HPAIO5010.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/HPAIO5010">HP Pavilion 18-5010 18.5-inch All-in-One Desktop</a></h6>
									  <h6><span class="pull-right">$594.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/LICAIOC365"><img src="static/assets/products/thumbnails/PC/LICAIOC365.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/LICAIOC365">Lenovo IdeaCentre C365 19.5-Inch All-in-One Desktop (57323425)</a></h6>
									  <h6><span class="pull-right">$449.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/AMAMD760LL"><img src="static/assets/products/thumbnails/MAC/AMAMD760LL.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/AMAMD760LL">Apple MacBook Air MD760LL/A 13.3-Inch Laptop (NEWEST VERSION)</a></h6>
									  <h6><span class="pull-right">$1048.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/AMPMC700LL"><img src="static/assets/products/thumbnails/MAC/AMPMC700LL.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/AMPMC700LL">Apple MacBook Pro MC700LL/A 13.3-Inch Laptop (OLD VERSION)</a></h6>
									  <h6><span class="pull-right">$500</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/AMPMD101LL"><img src="static/assets/products/thumbnails/MAC/AMPMD101LL.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/AMPMD101LL">Apple MacBook Pro MD101LL/A 13.3-Inch Laptop (NEWEST VERSION)</a></h6>
									  <h6><span class="pull-right">$1184.99</span><br></h6>
									</div>
								  </div>
								</li>
								<li class="span2">
								  <div class="thumbnail">
									<a href="/product-details/AMPMD101LL"><img src="static/assets/products/thumbnails/MAC/AMT7200.jpg" alt=""/></a>
									<div class="caption">
									  <h6><a href="/product-details/AMPMD101LL">CybertronPC Patriot GM1293D Desktop (Black/Red)</a></h6>
									  <h6><span class="pull-right">$499.99</span><br></h6>
									</div>
								  </div>
								</li>
							  </ul>
						</div>
					</div>
				</div>
		<hr class="soft"/>
		   </div>
		</div>
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
    <script src="static/static/assets/js/jquery.js"></script>
	<script src="static/static/assets/js/google-code-prettify/prettify.js"></script>
    <script src="static/static/assets/js/application.js"></script>
    <script src="static/static/assets/js/bootstrap-transition.js"></script>
    <script src="static/static/assets/js/bootstrap-modal.js"></script>
    <script src="static/static/assets/js/bootstrap-scrollspy.js"></script>
    <script src="static/static/assets/js/bootstrap-alert.js"></script>
    <script src="static/static/assets/js/bootstrap-dropdown.js"></script>
    <script src="static/static/assets/js/bootstrap-tab.js"></script>
    <script src="static/static/assets/js/bootstrap-tooltip.js"></script>
    <script src="static/static/assets/js/bootstrap-popover.js"></script>
    <script src="static/static/assets/js/bootstrap-button.js"></script>
    <script src="static/static/assets/js/bootstrap-collapse.js"></script>
    <script src="static/static/assets/js/bootstrap-carousel.js"></script>
    <script src="static/static/assets/js/bootstrap-typeahead.js"></script>
    <script src="static/static/assets/js/bootstrap-affix.js"></script>
    <script src="static/static/assets/js/jquery.lightbox-0.5.js"></script>
	<script src="static/static/assets/js/bootsshoptgl.js"></script>
	 <script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
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