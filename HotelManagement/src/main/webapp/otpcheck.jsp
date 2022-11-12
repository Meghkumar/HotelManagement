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

    <!-- Font Awesome Link -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- Font Awesome Link -->
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="login-form bg-light mt-4 p-4">
            <form action="otpcheck" method="" class="row g-3">
              <div class="field">
                <div class="mx-2">
                  <div class="text-center">
                    <i class="fa fa-unlock-alt fs-1" aria-hidden="true" style="height: 40px"></i
                    ><br /><br />
                    <label for="" class="fs-2">Enter OTP</label>
                    <p>OTP is sent to your email ID</p>
                    <br />
                  </div>
                </div>
                <div class="text-center">
                  <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                  <input type="text" required placeholder="Enter your Email" style="width: 15rem" />
                </div>
                <br />
              </div>

              <div class="col-12 align-content-center justify-content-center d-flex" id="button">
                <button type="submit" class="btn btn-success float-end p-1 mx-lg-3">
                  Change Password
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
