<?php
$s=$argv[1];
$l=strrpos($s,'/');
$r=substr($s,0,$l);
echo $r;
?>
