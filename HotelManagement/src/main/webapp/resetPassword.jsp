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
  <body style="background-color: rgb(44, 27, 5)">
    <div class="container">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="login-form bg-light mt-4 p-4 text-center">
            <form action="resetpassword" method="" class="row g-3">
              <h2>Change Password</h2>

              <div class="field text-center">
                <span class="fa fa-user"></span>
                <!-- <label for="">New Password:</label> -->
                <input type="text" required placeholder="New password" />
              </div>
              <div class="field text-center">
                <span class="fa fa-user"></span>
                <!-- <label for="">Confirm Password</label> -->
                <input type="text" required placeholder="Confirm password" />
              </div>

              <div class="col-12 align-content-center justify-content-center d-flex" id="button">
                <button type="submit" class="btn btn-success float-end p-1 mx-lg-3">
                  Reset Password
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
