$var= "asdsafwq Hello World qweqw Hello World asdqwrqrq Hello World"
$var= $var -replace "Hello World", "Happy New Year"
$i=($var.Split(" ") | Select-string "New").Count
$var = $var+" Result: "+ $i
$j=($var.Split(" ") | Select-string "$").Count
if($var -notmatch "Hello World"){$var|Out-File G:\1\$j.txt}