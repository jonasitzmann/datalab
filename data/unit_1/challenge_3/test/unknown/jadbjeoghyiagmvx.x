<HTML><HEAD><TITLE>Oxford University: AOPP: weather: index:</TITLE>
<STYLE TYPE="text/css">
<!--
        H1,H2,H3,H4 {font-weight: bold; text-align: left;
        vertical-align: top; color: #000099;}
        H1 {font-size: 20pt;}
        H2 {font-size: 12pt;}
        H3,H4 {font-size: 10pt;}

        P,TD {font-weight: normal; font-size: 10pt; text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #555555;}
        A {font-weight: normal; font-size: 10pt; text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #5555ff;}

        TABLE,TR,TD {vertical-align: top; }
        TABLE,TR,TD {text-align: left;}
        TD.Bottom {vertical-align: bottom;}
        TD.Bottomright {vertical-align: bottom; text-align: right;}
        TD.Middle {vertical-align: middle;}
        TD.Center {text-align: center;}
        TD.Right {text-align: right;}
        TD.TopMenu {text-align: center; vertical-align: middle;
        background-color:#E7E7FF}

        A:link { color: #5555ff; }
        A:visited { color: #0000aa; }
        A:hover { color: #0000ff; }

-->
</STYLE></HEAD><BODY>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
<title>Oxford University : AOPP : weather/index</title>
</head>
<body style="background-color:white">
<h2 style="text-align:center">The Weather Today</h2>
<hr>

<div style="text-align:center">
<h3 style="text-align:center">Current Weather</h3>

<h1>This pre-generated html will need some editing as follows</h1>
<p>Firstly change the extensions of index.html and index_nocolumn.html to 
php.  Then change the width of the main table cell to 650 intead of 560, 
to allow room for the graphs, and finally correct the link at the end of 
the new index.php, to point to index_nocolumn.php instead of 
index_nocolumn.html</p>
<h4>Weather Now - 05-05-2007 00:39:39 GMT</h4><p><table style='text-align:right; border:none; background:none'><tr><td rowspan=7><img src=c0r.png alt='Weather Summary Symbol' border='0' align=left></td><td>Temperature</td><td>8.4 &deg C</td></tr><tr><td>Pressure</td><td>1014.0 hPa</td></tr><tr><td>Humidity</td><td>72.0 %</td></tr><tr><td>Wind</td><td>3.1 m/s at 014&deg</td></tr><tr><td>Rainfall Rate</td><td>0.00 mm/min</td></tr><tr><td>Sunny?</td><td>No</td></tr><tr><td><a href="uv_detail.html">UV Index</a></td><td>1</td></tr></table><br>
<h3>Latest Live Graphs</h3>
<img src="tempgrph.php" alt="Temperature for the past 3 days">
<img src="presgrph.php" alt="Pressure for the past 3 days">
<img src="humigrph.php" alt="Humidity for the past 3 days">
<img src="windgrph.php" alt="Wind Speed for the past 3 days">
</div>
<div>
<h4>The Data</h4>
<p style="text-align:justify">
The live weather data here and on the home page are updated every 10 mins 
from an automated weather station on the AOPP roof.  The latest 
information, in a slightly less friendly format is available <a 
href="/user/cfinlay/now.htm">here</a> and a summary of yesterday's weather 
is available <a href="/user/cfinlay/yesterday.htm">here</a>.  Also shown 
are graphs of temperature, pressure and humidity for the last three days.  
All data are taken from a series of csv files in the <a href="/user/cfinlay/pastdata">/user/cfinlay/pastdata</a> directory in an uncalibrated <a href="/user/cfinlay/telemconversion.htm">format</a>, and processed using a php script on the web-server.
</p>

<h4>The AWS</h4>
<p style="text-align:justify">
The weather station is a Met-log station supplied by <a href="http://www.instromet.co.uk">R&D Instro<i>met</i> Ltd</a>.  Technical details of the sensors and pictures of the station are given below:
</p>

<center><table >
<tr>
<td><a href="aws_img02.jpg"><img src="aws_img02_t.jpg" alt="The AWS looking N towards the University Parks" border=0></a></td>
<td><a href="aws_img01.jpg"><img src="aws_img01_t.jpg" alt="The AWS looking NW towards Keble College" border=0></a></td>
<td><a href="aws_img03.jpg"><img src="aws_img03_t.jpg" alt="The AWS Rain Gauge" border=0></a></td>
</tr>
</table>
</center>
<ul style="text-align:justify">
<li><em><b>Professional Wind Sensor</b></em><br>
Rotating cups using a Hall effect sensor and a wind vane using a precision pot.<br>
<em>Wind direction Specs:</em><br>
Accuracy <span>&plusmn</span>5&deg typical (10&deg worst case); threshold 0.5 m/s<br>
<em>Speed sensor specs:</em><br>
Typical accuracy <span>&plusmn</span>5 % or 1.5 m/s; resolution better than 0.5 m/s; threshold 0.5 m/s.
</li>

<li><em><b>Sunshine Duration Sensor</b></em><br>
Within glass dome; comparison between shade and sensor produces pulse every 36 sec when ratio exceeds a fixed value. Said to give excellent results to within a few minutes of dawn or dusk.<br>
<em>Sunshine sensor specs:</em><br>
Accuracy better than 5 % when compared with Campbell Stokes typ. recorder.
</li>

<li><em><b>Rainfall Sensor</b></em><br>
Mounted in an aerodynamically shaped moulding to reduce effects of wind.  The rain is collected by an 80 mm diameter funnel which passes drips through an infrared beam and counts drops.<br>
<em>Rainfall sensor specs:</em><br>
Accuracy better than <span>&plusmn</span>5 % (typically <span>&plusmn</span>2 %); resolution 0.01 mm.
Max counting rate 0.05 mm/sec.
</li>

<li><em><b>Air Temperature Sensor</b></em><br>
Precision NTC thermistor within a radiation shield.<br>
<em>Temperature sensor specs:</em><br>
Range -40 <span>&deg</span>C to +50 <span>&deg</span>C; accuracy <span>&plusmn</span>0.5 <span>&deg</span>C at 20 <span>&deg</span>C. Radiation effects less than
1 <span>&deg</span>C at 1.5 m/s wind speed.
</li>

<li><em><b>Humidity Sensor</b></em><br>
Electronic Sensor.<br>
<em>Humidity probe sensor specs:</em><br>
Operating range 0-100 % humidity; accuracy <span>&plusmn</span>3 % in 10-90 %
range; temperature dependence <span>&plusmn</span>1 % in 5-60 <span>&deg</span>C range.
</li>

<li><em><b>Pressure Sensor</b></em><br>
Electronic barometric pressure sensor, mounted within the data logger.<br>
<em>Pressure sensor specs:</em><br>
Operating range 900-1100 hPa; accuracy <span>&plusmn</span>2 hPa per 100 hPa
</li>
</ul>
<h4><a href="uv_detail.html">The UV Sensor</a></h4>
<p style="text-align:justify">
The UV sensor is a 501 UV Biometer supplied by <a href="http://www.solar.com">Solar Light Co. Inc.</a>  Its specifications are given below.  The signal from the sensor is fed to a box of data logging and processing equipment, which is then connected to the serial port of a networked Linux box.  A cron job on this workstation then interrogates the device, reads the data off the serial port and uploads it to the web server, where it is finally formatted by the PHP script.<br>
<ul>
<li><em>Spectral range:</em> 290-320 nm, close to Erythema Action Spectrum</li>
<li><em>Measurement range:</em> 0 to 10 MED/Hr (Minimal Erythemal Dose per Hour)</li>
<li><em>Angular response:</em> within 5% from ideal cosine for incident angles</li>
<li><em>Response time:</em> 1 second (0.1 second on demand)</li>
<li><em>RAF:</em> >1 (Radiation Amplification Factor calculated for 30&deg solar zenith angle and 0.27 cm ozone column)</li>
<li><em>Operating temperature:</em> -40 to +50 <span>&deg</span>C ambient</li>
<li><em>Environment:</em> outdoors or underwater (max. depth 15 feet or 5 meters)</li>
</p>
</div>
</body>

</html>

</BODY></HTML>


/mn rsp;i