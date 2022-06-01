<?php
session_start();
session_unset();
session_destroy();
header("location: /discusstech/index.php?logout=true");
?>