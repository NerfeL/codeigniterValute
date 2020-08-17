<?php
$opts = array( 'http'=>array('method'=>"GET", 'header'=> "X-API-KEY: 123321") );
$context = stream_context_create($opts);
$file = file_get_contents('http://codeigniter.local/exchange/CZK', false, $context);
echo $file;