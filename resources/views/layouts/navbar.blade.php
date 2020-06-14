<nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">
        <img src="img/logo.png" alt="">
        </a>
    
<!--================Header Menu Area =================-->
<header class="header_area">
            <div class="main_menu">
                
            	<nav class="navbar navbar-expand-lg navbar-light">
					<div class="container box_1620">
						<!-- Brand and toggle get grouped for better mobile display -->
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="{{ url('/') }}">Home</a></li> 
                                <li class="nav-item"><a class="nav-link" href="{{url('/aboutus')}}">Our Story  </a></li>
                                <li class="nav-item"><a class="nav-link" href="{{ url('/contactus') }}">Contact Us</a></li>
                            </ul>
                            @auth
                                <ul class="navbar-nav mr-auto">
                                @admin
                                    <li class="nav-item">
                                        <a href="{{ route('planner.index') }}" class="nav-link">Planners</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('/listuser') }}" class="nav-link">Users</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" 
                                    role="button" data-toggle="dropdown" aria-haspopup="true" 
                                    aria-expanded="false">Events</a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                      <a class="dropdown-item" href="{{ url('/todayevent') }}">Today Events</a>
                                      <a class="dropdown-item" href="{{ url('/comingevent') }}">Coming Events</a>
                                      <a class="dropdown-item" href="{{ url('/passedevent') }}">Passed Events</a>
                                    </div>
                                    </li>
                                    <li class="nav-item"><a href="{{ route('packages.index') }}" class="nav-link">Packages</a></li>
                                @else
                                    <li class="nav-item">
                                        <a href="{{ url('/mypackage') }}" class="nav-link">my packages</a>
                                    </li>
                                    <li class="nav-item"><a class="nav-link" href="{{ route('packages.index') }}">Our Packages</a></li>
                                    <li class="nav-item">
                                        <a href="{{ route('event.index') }}" class="nav-link">My events</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="{{ url('event/confirmed') }}" class="nav-link">About confirmation</a>
                                    </li>
                                @endadmin
                                </ul>
                            @endauth
							<ul class="nav navbar-nav navbar-right">
								<li class="nav-item"><a href="#" class="search"><i class="lnr lnr-magnifier"></i></a></li>
							</ul>
						</div>  
					</div>
            	</nav>
            </div>
        </header>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">
                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                        </div>
                    </li>
                @endguest
            </ul>
        </div>
    </div>
</nav>