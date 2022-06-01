<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="signupModalLabel">SignUp Form</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form action="repeatedcode/_handlesignup.php" method="post">
        <div class="form-group">
          <label for="signup">Username</label>
          <input type="email" class="form-control" id="signup" aria-describedby="emailHelp" name="email" placeholder="Make a username">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Make a Password">
        </div>
        <div class="form-group">
          <label for="cpassword">Confirm Password</label>
          <input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="Please Enter the same password as above">
        </div>
        <button type="submit" class="btn btn-primary">SignUp</button>
      </form>
      </div>
    </div>
  </div>
</div>