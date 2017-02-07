<!DOCTYPE html>
<html lang="en">
<head>
  <title>Landing page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
    background-color: #900C3F ;
      margin-bottom: 5px;
      border-radius: 0;
    }
    
    .carousel-inner img{
   
    margin: auto;
    min-height:200px;
    box-sizzing:border-box;
    margin-bottom:5px;
    }
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
     background-color:#000000;
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
   
      background-color:black;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1 style="font-family:verdana;"><font color="#900C3F">muscleHUNT</font></h1>      
    <p style="font-family:verdana;"><font color="#900C3F">STOP DREAMING and START DOING</font></p>
    
  </div>
</div>


<jsp:include page="header1.jsp"></jsp:include>


<div id="Mycarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#Mycarousel" data-slide-to="0" class="active"></li>
<li data-target="#Mycarousel" data-slide-to="1"></li>
<li data-target="#Mycarousel" data-slide-to="2"></li>
</ol>
<div class="carousel-inner" role="listbox">
<div class="item active">
<img src="http://www.illpumpyouup.com/articles/images/the-must-have-bodybuilding-supplements-banner.jpg"  >
  </div>
  <div class="item">
   <img src="http://strengthawakening.com/wp-content/uploads/2016/08/Supplement-Image.jpg" >
</div>
 <div class="item">
   <img src="http://www.bodybuilding.com/images/merchandising/march/top50_640x250.jpg" >
</div>
</div>
<a class="left carousel-control" href="#Mycarousel" role="button" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#Mycarousel" role="button" data-slide="next">
<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" ></span>
<span class="sr-only">Next</span>
</a>
</div>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">WHEY PROTEIN</div>
        <div class="panel-body"><a href="whey"><img src="http://sscontent.secure.footprint.net/products/437/prozis-sport_100-real-whey-protein-2000g_1.png" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 WHEY and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">BCAA</div>
        <div class="panel-body"><a href="Bcaa"><img src="https://fitbits.com/wp-content/uploads/2016/01/BCAA-Branch-Chain-Amino-Acids-Branched-2.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 BCAA and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">PRE-WORKOUT</div>
        <div class="panel-body"><a href="preworkout"><img src="https://cdn.shopify.com/s/files/1/0944/0726/products/Bang-Master-Pre-Workout-by-VPX-Blue-Razz.jpg?v=1475777890" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 PRE-WORKOUT and get a gift card</div>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-danger">
        <div class="panel-heading">POST-WORKOUT</div>
        <div class="panel-body"><a href="postworkout"><img src="http://www.supplemetrics.com/wp-content/uploads/2015/06/NutarBioPost275x275.png" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 POST-WORKOUT and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">MASS GAINER</div>
        <div class="panel-body"><a href="massgainer"><img src="http://www.gnc.com/graphics/product_images/pGNC1-12870700dt.jpg" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 MASS GAINER and get a gift card</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">FAT-BURNER</div>
        <div class="panel-body"><a href="fatburner"><img src="https://www.musclemaniaclub.net/image/cache/data/API%20Fat%20Burner%20new-500x500.png" class="img-responsive" style="width:100%" alt="Image"></a></div>
        <div class="panel-footer">Buy 50 FAT-BURNER and get a gift card</div>
      </div>
    </div>
  </div>
</div><br><br>
  

<p style="font-size:36px;" color="grey"><strong>About us:</strong>Our Unique selling points are what really set us apart from the rest of the industry. These unique selling points can be categorised into 5 simple reasons:
<p style="font-size:30px;" color="blue"><strong>OUR MISSION</strong>


Our objective is to offer the highest quality products at the lowest possible prices, which we analyse daily in order to never be beaten on price.

This is due to 3 key reasons; Over 80% of our range is produced in our own production facility, along with our packaging and labels.

Our online business model of taking the product straight from our warehouse to the consumer allows us to pass all of these savings on to our customers.
</p>
<br>
<br>



<footer class="container-fluid text-center">
 <img src="http://www.bodybuilding.com/images/2017/january/small-resolutions-for-big-gains-in-2017-RSP-header-v2-400x225.jpg"> 
  <h2><font color="#900C3F">NO MORE EXCUSES!START NOW</font></h2>
     
  <form class="form-inline">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger">Sign Up</button>
  </form>
</footer>

</body>
</html>
