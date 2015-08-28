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
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
              <div class="item active">
                <img style="width:100%" src="static/assets/carousel/1.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
			  <div class="item">
                <img style="width:100%" src="static/assets/carousel/2.jpg" alt=""/>
					<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
              <div class="item">
                <img src="static/assets/carousel/3.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                </div>
                
              </div>
			   <div class="item">
                <img src="static/assets/carousel/4.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
               
              </div>
			   <div class="item">
                <img src="static/assets/carousel/5.jpg" alt=""/>
				<div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                      <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    </div>
              </div>
            </div>
		</div>
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
		
		function addContent(divId) {
    		var div = document.getElementById(divId);
    		div.innerHTML = '<em>Welcome!!!</em>';
		}
		</script>
	    <!--script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script-->
    <script src="static/assets/js/jquery.js"></script>
	<script src="static/assets/js/google-code-prettify/prettify.js"></script>
    <script src="static/assets/js/application.js"></script>
    <script src="static/assets/js/bootstrap-transition.js"></script>
    <script src="static/assets/js/bootstrap-modal.js"></script>
    <script src="static/assets/js/bootstrap-scrollspy.js"></script>
    <script src="static/assets/js/bootstrap-alert.js"></script>
    <script src="static/assets/js/bootstrap-dropdown.js"></script>
    <script src="static/assets/js/bootstrap-tab.js"></script>
    <script src="static/assets/js/bootstrap-tooltip.js"></script>
    <script src="static/assets/js/bootstrap-popover.js"></script>
    <script src="static/assets/js/bootstrap-button.js"></script>
    <script src="static/assets/js/bootstrap-collapse.js"></script>
    <script src="static/assets/js/bootstrap-carousel.js"></script>
    <script src="static/assets/js/bootstrap-typeahead.js"></script>
    <script src="static/assets/js/bootstrap-affix.js"></script>
    <script src="static/assets/js/jquery.lightbox-0.5.js"></script>
	<script src="static/assets/js/bootsshoptgl.js"></script>
	<script type="text/javascript">
    $(function() {
        $('#gallery a').lightBox();
    });
    </script>
	 <script>
	 $(document).ready(function() {
		    $("div#extraControls").removeClass("hidden");
		});
	 </script>
	</body>
</html>
