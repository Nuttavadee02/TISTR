<?php
    session_start();
    unset($_SESSION["ID"]);
    unset($_SESSION["username"]);

    echo "<script type='text/javascript'>";
    echo "window.location = '../admin/login.html'; ";
    echo "</script>";

?>