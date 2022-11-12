<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Forgot Password</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://www.markuptag.com/bootstrap/5/css/bootstrap.min.css" />
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="login-form bg-light mt-4 p-4">
            <form action="forgotpassword" method="post" class="row g-3">
              <h2>Forgot Password</h2>
              <h6>Change your password in three Steps</h6>

              <ul>
                <li>Enter your email address below</li>
                <li>One OTP will be sent to your mail</li>
                <li>Enter the OTP on the next page</li>
              </ul>
              <div class="field">
                <span class="fa fa-user"></span>
                <label for="">Email Address</label>
                <input type="text" required placeholder="Enter your Email" />
              </div>

              <div class="col-12 align-content-center justify-content-center d-flex" id="button">
                <button type="submit" class="btn btn-success float-end p-1 mx-lg-3">
                  Get New Password
                </button>
                <button type="submit" class="btn btn-danger float-end p-1 mx-lg-3">
                  Back to login
                </button>
              </div>
            </form>
            <hr class="mt-4" />
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://www.markuptag.com/bootstrap/5/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
