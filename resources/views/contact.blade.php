@extends('layouts.app')

@section('title', 'Contact Us')

@section('content')
<section class="jumbotron text-center">
    <div class="container">
        <div class="banner_content text-center">
        <div class="main_title">
            <img src="img/shap-1.png" alt="">
            <h2>Contact Us</h2>
				</div>
        </div>
    </div>
</section>

<section class="contact_area p_120">
            <div class="container">
                <div id="mapBox" class="mapBox" 
                    data-lat="40.701083" 
                    data-lon="-74.1522848" 
                    data-zoom="13" 
                    data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia."
                    data-mlat="40.701083"
                    data-mlon="-74.1522848">
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="contact_info">
                            <div class="info_item">
                                <i class="fas fa-home mr-3"></i>
                                <h6>Bizerte,Tunis</h6>
                                <p>La corniche</p>
                            </div>
                            <div class="info_item">
                                <i class="fas fa-phone mr-3"></i>
                                <h6><a href="#">(+216) 20 220 720</a></h6>
                                <p> Monday to Friday 9AM to 6 PM</p>
                            </div>
                            <div class="info_item">
                                <i class="lnr lnr-envelope"></i>
                                <h6><a href="#">HoneyWedding@gmail.com</a></h6>
                                <p>Let us know if you need anything !</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name">
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address">
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="Questions" id="message" rows="1" placeholder="Enter your questions"></textarea>
                                </div>
                            <div class="btn btn-outline-primary btn-lg float-right">
                                <button type="submit" value="submit" class="btn submit_btn"> Send your message !</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
</section>
@endsection