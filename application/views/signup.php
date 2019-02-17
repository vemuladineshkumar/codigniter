<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="<?php echo base_url('assets/fonts/material-icon/css/material-design-iconic-font.min.css');?>">

    <!-- Main css -->
    <link rel="stylesheet" href="<?php echo base_url('assets/css/stylelogin.css');?>">
</head>
<body>

    <div class="main">

       <!-- Sign up form -->
 <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form" action="<?php echo base_url('Login/signup');?>">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" value="<?php echo set_value('name');?>" placeholder="Your Name"/>
                                <p><?php echo form_error('name');?></p>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
								<input type="email" name="email" id="email" value="<?php echo set_value('email');?>"placeholder="Your Email"/ >
								<p><?php echo form_error('email');?></p>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
								<input type="tel" name="phone" id="phone" value="<?php echo set_value('phone');?>"placeholder="Your Phone"/ >
								<p><?php echo form_error('phone');?></p>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass"  value="<?php echo set_value('pass');?>" placeholder="Password"/>
                                <p><?php echo form_error('pass');?></p>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" value="<?php echo set_value('re_pass');?>" placeholder="Repeat your password"/>
                                <p><?php echo form_error('re_pass');?></p>
                            </div>
                            
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required />
                                <label for="agree-term" class="label-agree-term" ><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="<?php echo base_url('assets/images/signup-image.jpg');?>" alt="sing up image"></figure>
                        <a href="<?php echo base_url('Login/signin');?>" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="<?php echo base_url('assets/vendor/jquery/jquery.min.js');?>"></script>
    <script src="<?php echo base_url('assets/js/mainlogin.js');?>"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>