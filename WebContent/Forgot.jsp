<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Forgot password</title>
  <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


  <link rel="stylesheet" href="css/styleforgot.css">


</head>

<body>

  <div class="form">
      <div id="signup">
        <h1>Forgot</h1>

        <form action="/" method="post">

          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name
                <span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" />
            </div>

            <div class="field-wrap">
              <label>
                Last Name
                <span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" />
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address
              <span class="req">*</span>
            </label>
            <input type="email" required autocomplete="off" />
          </div>

          <div class="field-wrap">
            <label>
              Set Password
              <span class="req">*</span>
            </label>
            <input type="password" required autocomplete="off" />
          </div>

          <input type="submit" value="submit"/>

        </form>

      </div>
   </div>
    <!-- tab-content -->

  </div>
  <!-- /form -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  <script src="js/index.js"></script>

</body>

</html>