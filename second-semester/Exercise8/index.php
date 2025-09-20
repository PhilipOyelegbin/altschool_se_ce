<?php
  $hostname = gethostname();
  $ip = $_SERVER["SERVER_ADDR"];
  
  echo "Hostname: " . $hostname . "<br>";
  echo "Private IP Address: " . $ip;
?>
