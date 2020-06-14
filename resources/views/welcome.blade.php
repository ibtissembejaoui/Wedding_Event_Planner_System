@extends('layouts.app')


@section('title', 'Welcome')

@section('content')
<div class="container">
<section class="home_banner_area">
    
        <div><img src="img/bride.jpg" alt="" width="100%"></div>
        <img src="img/home-banner.png" alt="">
</section>     
<br>
<section class="jumbotron text-center">
    <div class="container">
        <div class="banner_content text-center">
        <div class="main_title">
					<h2>Congratulations to our lovely couples</h2>
				</div>
        </div>
    </div>
</section>

<section class="story_area p_120">
        	<div class="container">
        		<div class="row story_inner">
        			<div class="col-lg-4">
        				<img class="img-fluid" src="img/story-1.jpg" width="300px" alt="">
        			</div>
        			<div class="col-lg-4">
        				<div class="story_text">
        					<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sarah & Ahmed </h3> <br><br>
        					<p> Their beautiful wedding was on July 25,2019 at The Andalucia Beach Hotel .</p>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<img class="img-fluid" src="img/story-2.jpg" width="300px" alt="">
        			</div>
                </div>
                
                <br><br>

                <div class="row story_inner">
        			<div class="col-lg-4">
        				<img class="img-fluid" src="img/journey-1.jpg" width="300px" alt="">
        			</div>
        			<div class="col-lg-4">
        				<div class="story_text">
        					<h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amira & Aymen </h3> <br><br>
        					<p> Their wedding was on August 10, 2019 at Bizerta Resort Hotel .</p>
        				</div>
        			</div>
        			<div class="col-lg-4">
        				<img class="img-fluid" src="img/journey-5.jpg" width="300px" alt="">
        			</div>
                </div>
                
                <br><br>

                <div class="row story_inner">
                    <div class="col-lg-4">
                        <img class="img-fluid" src="img/journey-2.jpg" width="300px" alt="">
                    </div>
                    <div class="col-lg-4">
                        <div class="story_text">
                            <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nesrine & Oussema </h3> <br><br>
                            <p>Their wedding was on June 15, 2018 at JALTA bizerte hotel .</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-fluid" src="img/journey-6.jpg" width="300px" alt="">
                    </div>
                </div>

        	</div>
        </section>
      
        <br><br>


        <section class="jumbotron text-center">
            <div class="container">
                <div class="banner_content text-center">
                <div class="main_title">
                        <h2>Special Moments Captured</h2>
                        <p></p>
                    </div>
                </div>
            </div>
        </section>


        <section class="story_area p_120">
        	<div class="container">
        		
                <div class="row story_inner">
                    <div class="col-lg-3">
                        <img class="img-fluid" src="img/Image-01.jpg" width="300px" alt="">
                    </div>
                    <div class="col-lg-3">
                        <img class="img-fluid" src="img/Image-02.jpg" width="300px" alt="">
                    </div>
                    <div class="col-lg-3">
                        <img class="img-fluid" src="img/Image-03.jpg" width="300px" alt="">
                    </div>
                    <div class="col-lg-3">
                        <img class="img-fluid" src="img/Image-05.jpg" width="300px" alt="">
                    </div>
                </div>

        	</div>
        </section>

        
        <br>

        <section class="jumbotron text-center">
    <div class="container">
        <div class="banner_content text-center">
        <div class="main_title">
            <img src="img/shap-1.png" alt="">
            <h2>Our packages</h2>
				</div>
        </div>
    </div>
</section>

<div class="album py-5 bg-light">
    <div class="container">

      <div class="row" >
        
        @foreach($packages as $package)
            <div class="col-md-4">
            <div class="card mb-4 shadow-sm">
            <img src="{{ $package->photo }}" class="bd-placeholder-img card-img-top" width="100%" height="225" role="img" aria-label="Placeholder: Thumbnail">
                
                <div class="card-body">
                <h3 class="card-title">{{$package->package_type}}</h3>
                <p class="card-text">{{$package->package_description}}</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                    <a href="{{ url('login')}}" class="btn btn-sm btn-outline-secondary">View</a>
                    </div>
                    <small class="text-muted">{{$package->package_amount}}</small>
                </div>
                </div>
            </div>
            </div>
        @endforeach

      </div>
    </div>
  </div>
         
        <footer class="footer_area">
        	<div class="container box_1620">
        		<div class="footer_inner p_120">
        			<img src="img/footer-logo.png" style="text-align=center"; alt="">
       				<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Honey Wedding </p>
        		</div>
        	</div>
        </footer>
</div>
@endsection