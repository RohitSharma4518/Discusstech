<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">Login</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action = "repeatedcode/_handlelogin.php" method = "post">
          <div class="form-group">
            <label for="email">Username</label>
            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" name="email" placeholder="Enter your username here">
          </div>
          <div class="form-group">
            <label for="pass">Password</label>
            <input type="password" class="form-control" id="pass" name="pass" placeholder="Enter your password">
          </div>
          <button type="submit" class="btn btn-primary">Login</button>
        </form>
      </div>
    </div>
  </div>
</div>