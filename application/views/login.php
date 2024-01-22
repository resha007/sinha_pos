<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link href="images/sinha_logo.png" rel="icon">
  <title><?php echo $this->config->item('company') . ' | POS ' . ' | ' .  $this->lang->line('login_login'); ?></title>
  <link href="<?=base_url()?>dashboard_req/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<?=base_url()?>dashboard_req/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="<?=base_url()?>dashboard_req/css/ruang-admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
  <!-- Login Content -->
  <div class="container-login" >
    <div class="row justify-content-center" >
      <div class="col-xl-6 col-lg-12 col-md-9">
        <div class="card shadow-sm my-5">
          <div class="card-body p-0">
            <div class="row">
              <div class="col-lg-12">
                <div class="login-form">
                  <div class="text-center">
                  <div id="logo" align="center">
                      <!-- <img src="<?php echo base_url();?>/images/logo.png"> -->
                      <img id="image" src="<?php echo base_url('uploads/' . $this->Appconfig->get('company_logo')); ?>" alt="company_logo" width="70%" />
                    </div>
                    <div class="h6 text-gray-900 mb-4"><b>POS Login</b></div>
                  </div>
                  <div id="login_form" >

                  <?php echo form_open('login') ?>
                    <div id="container">
                    
                    <div align="center" style="color:red"><?php echo validation_errors(); ?></div>

                      <?php if (!$this->migration->is_latest()): ?>
                      <div align="center" style="color:red"><?php echo $this->lang->line('common_migration_needed', $this->config->item('application_version')); ?></div>
                      <?php endif; ?>

                      <div id="login_form">
                        <div class="input-group">
                          <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-user"></span></span>
                          <input class="form-control" placeholder="<?php echo $this->lang->line('login_username')?>" name="username" type="text" size=20 autofocus required></input>
                        </div>
<br>
                        <div class="input-group">
                          <span class="input-group-addon input-sm"><span class="glyphicon glyphicon-lock"></span></span>
                          <input class="form-control" placeholder="<?php echo $this->lang->line('login_password')?>" name="password" type="password" size=20 required></input>
                        </div>
                        <br>
                        <?php
                        if($this->config->item('gcaptcha_enable'))
                        {
                          echo '<script src="https://www.google.com/recaptcha/api.js"></script>';
                          echo '<div class="g-recaptcha" align="center" data-sitekey="' . $this->config->item('gcaptcha_site_key') . '"></div>';
                        }
                        ?>
<br>
                        <input class="btn btn-primary btn-block" type="submit" name="loginButton" value="<?php echo $this->lang->line('login_go')?>"/>
                      </div>
                    </div>
                  <?php echo form_close(); ?>
                  
                  <div class="text-center"><br>
                  <h6>777 POS <?php echo $this->config->item('application_version'); ?></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Login Content -->
  <script src="<?=base_url()?>dashboard_req/vendor/jquery/jquery.min.js"></script>
  <script src="<?=base_url()?>dashboard_req/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?=base_url()?>dashboard_req/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="<?=base_url()?>dashboard_req/js/ruang-admin.min.js"></script>
</body>

</html>