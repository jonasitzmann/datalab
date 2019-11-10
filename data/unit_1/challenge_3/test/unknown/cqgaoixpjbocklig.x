
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="EN" xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/FrontPage.dwt.cfm" codeOutsideHTMLIsLocked="false" -->
<head>
<META name="verify-v1" content="lc2MGKpg/Zm1J1ul1wJFv4TCsGcAiFTlBjRQ/C3eHds=" />
<title>University of Abertay Dundee</title>
<meta name="robots" content="index" />
<meta http-equiv="Content-Language" content="en-gb" />
<meta name="title" content="University of Abertay Dundee" />
<meta name="description" content="Welcome to the Homepage of The University of Abertay, Dundee, Scotland, UK. Abertay offers world-leading courses in computer arts and computer games technology is home to the International Centre for Computer Games & Virtual Entertainment (IC-CAVE) - unique in Europe. Abertay is based in Scotlandâs 4th largest City and is the sunniest city in Scotland with over 1400 hours of sunshine per year." />
<meta name="keywords" content="Abertay, university, Dundee, courses, Scotland, course, management, student, computer, application,
Games, college, postgraduate, business, forensic, library, international, school, jobs, science, nursing, mba, studies, engineering, degree, crime, graduation, technology, research, undergraduate, prospectus, education, teaching, UK, union, law, Scottish, MSc, BA, languages, management, learning, city, clearing, UCAS, alumni, graduate, support, welcome, programme, Britain, H.E., HE, FE, F.E., higher, college" />
<meta name="author" content="webservices" />
<link href="http://www.abertay.ac.uk/Images/fav.ico" rel="icon" type="image"/>





<!-- InstanceBeginEditable name="Scripts" -->
<META name="verify-v1" content="WVBSZLzhxueeeBMZHoDh3jepN8xGuI9fOFPB+XPcPM4=" />



<!-- InstanceEndEditable -->
</head>
<!-- Begin Sitestat4 Loadingtime1 code -->
<script language='JavaScript1.1' type='text/javascript'>ns_loadingtime1=(new Date()).getTime()</script>
<!-- End Sitestat4 Loadingtime1 code -->
<body>

<!-- Access Keys -->
<a href="http://www.abertay.ac.uk//help/AccessKeys.cfm?Key=997" accesskey="0" title="Access Keys (access key: 0)"></a>
<a href="http://www.abertay.ac.uk/index.cfm?Key=000" accesskey="1" title="Home Page (access key: 1)"></a>
<a href="http://www.abertay.ac.uk/Search/index.cfm?Key=011.001" accesskey="2" title="Search (access key: 2)"></a>
<a href="/index.cfm?printer=TRUE&amp;printer=TRUE&video=Y&Key=000" target="_blank" accesskey="3" title="Print version (text only) (access key: 3)"></a>
<a href="#skip" accesskey="4" title="Skip to main content (access key: 4)"></a>
<a href="http://www.abertay.ac.uk//A-Z.cfm?Key=011" accesskey="5" title="A-Z index (access key: 5)"></a>
<a href="http://www.abertay.ac.uk//Help/ContactUs.cfm?Key=999" accesskey="6" title="Contact Us (access key: 6)"></a>


<div class="bodyminwidth">
<div class="bodycontainer">


<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td rowspan="2"><img src="http://www.abertay.ac.uk/Images/uad_logo_print.gif" style="border:0px; height:75px; width:163px;" alt="Printable Version"/></td>
		<td align="center"><h2>www.abertay.ac.uk</h2></td>
	</tr>
</table>


<div id="middlecolumn">
<div class="minwidth">
<div class="container">
<div class="outercontent">


<div id="content">
<!-- InstanceBeginEditable name="MainBody" -->

<table style="width:100%;" cellpadding="0" cellspacing="0">

  	<tr valign="middle" style="text-align:center;">
		<td style="width:100%; vertical-align:top;" >
			<table style="width:100%;" border="0" cellpadding="0" cellspacing="0">
				<tr>



				

	
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD><TITLE>moock flash player inspector :: v1.3.7</TITLE>

<!-- Prevent caching in netscape.
     Very important because netscape tends to mangle cached code -->
<META HTTP-EQUIV="expires" CONTENT="0">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">



<SCRIPT LANGUAGE="JavaScript" type="text/javascript">
<!--
// moock fpi [f.lash p.layer i.nspector]
// version: 1.3.7
// written by colin moock
// code maintained at: http://www.moock.org/webdesign/flash/detection/moockfpi/
// terms of use posted at: http://www.moock.org/terms/



// =============================================================================
// These are the user defined globals.
// Modify the following variables to customize the inspection behaviour.

var requiredVersion = 6;   // Version the user needs to view site (max 9, min 2)
var useRedirect = true;    // Flag indicating whether or not to load a separate
                           // page based on detection results. Set to true to
                           // load a separate page. Set to false to embed the
                           // movie or alternate html directly into this page.

// Only set next three vars if useRedirect is true...
var flashPage   = "index.cfm?video=show&Key=000"    // The location of the flash movie page
var noFlashPage = "index.cfm?video=error&Key=000&noflash=YN"  // Page displayed if the user doesn't have the
                                  							  // plugin or we can't detect it.
var upgradePage = "index.cfm?video=error&Key=000&noflash=YO"  // Page displayed if we detect an old plugin
// =============================================================================



// *************
// Everything below this point is internal until after the BODY tag.
// Do not modify! Proceed to the BODY tag for further instructions.
// *************

// System globals
var flash2Installed = false;    // boolean. true if flash 2 is installed
var flash3Installed = false;    // boolean. true if flash 3 is installed
var flash4Installed = false;    // boolean. true if flash 4 is installed
var flash5Installed = false;    // boolean. true if flash 5 is installed
var flash6Installed = false;    // boolean. true if flash 6 is installed
var flash7Installed = false;    // boolean. true if flash 7 is installed
var flash8Installed = false;    // boolean. true if flash 8 is installed
var flash9Installed = false;    // boolean. true if flash 9 is installed
var maxVersion = 9;             // highest version we can actually detect
var actualVersion = 0;          // version the user really has
var hasRightVersion = false;    // boolean. true if it's safe to embed the flash movie in the page
var jsVersion = 1.0;            // the version of javascript supported

// -->
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript1.1" type="text/javascript">
<!--

// Check the browser...we're looking for ie/win
var isIE  = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;    // true if we're on ie
var isWin = (navigator.appVersion.toLowerCase().indexOf("win") != -1) ? true : false; // true if we're on windows


// This is a js1.1 code block, so make note that js1.1 is supported.
jsVersion = 1.1;

// Write vbscript detection on ie win. IE on Windows doesn't support regular
// JavaScript plugins array detection.
if(isIE && isWin){
  document.write('<SCR' + 'IPT LANGUAGE=VBScript\> \n');
  document.write('on error resume next \n');
  document.write('flash2Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.2"))) \n');
  document.write('flash3Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.3"))) \n');
  document.write('flash4Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.4"))) \n');
  document.write('flash5Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.5"))) \n');
  document.write('flash6Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.6"))) \n');
  document.write('flash7Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.7"))) \n');
  document.write('flash8Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.8"))) \n');
  document.write('flash9Installed = (IsObject(CreateObject("ShockwaveFlash.ShockwaveFlash.9"))) \n');
  document.write('<\/SCR' + 'IPT\> \n'); // break up end tag so it doesn't end our script
}
// -->
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript" type="text/javascript">
<!--

// Next comes the standard javascript detection that uses the
// navigator.plugins array. We pack the detector into a function so that
// it preloads before being run.

function detectFlash() {
  // If navigator.plugins exists...
  if (navigator.plugins) {
    // ...then check for flash 2 or flash 3+.
    if (navigator.plugins["Shockwave Flash 2.0"]
        || navigator.plugins["Shockwave Flash"]) {

      // Some version of Flash was found. Time to figure out which.

      // Set convenient references to flash 2 and the plugin description.
      var isVersion2 = navigator.plugins["Shockwave Flash 2.0"] ? " 2.0" : "";
      var flashDescription = navigator.plugins["Shockwave Flash" + isVersion2].description;

      // DEBUGGING: uncomment next line to see the actual description.
      // alert("Flash plugin description: " + flashDescription);

      // A flash plugin-description looks like this: Shockwave Flash 4.0 r5
      // We can get the major version by grabbing the character before the period
      // note that we don't bother with minor version detection.
      // Do that in your movie with $version or getVersion().
      var flashVersion = parseInt(flashDescription.substring(16));

      // We found the version, now set appropriate version flags. Make sure
      // to use >= on the highest version so we don't prevent future version
      // users from entering the site.
      flash2Installed = flashVersion == 2;
      flash3Installed = flashVersion == 3;
      flash4Installed = flashVersion == 4;
      flash5Installed = flashVersion == 5;
      flash6Installed = flashVersion == 6;
      flash7Installed = flashVersion == 7;
      flash8Installed = flashVersion == 8;
      flash9Installed = flashVersion >= 9;
    }
  }

  // Loop through all versions we're checking, and
  // set actualVersion to highest detected version.
  for (var i = 2; i <= maxVersion; i++) {
    if (eval("flash" + i + "Installed") == true) actualVersion = i;
  }

  // If we're on msntv (formerly webtv), the version supported is 4 (as of
  // January 1, 2004). Note that we don't bother sniffing varieties
  // of msntv. You could if you were sadistic...
  if(navigator.userAgent.indexOf("WebTV") != -1) actualVersion = 4;

  // DEBUGGING: uncomment next line to display flash version
  //alert("version detected: " + actualVersion);


  // We're finished getting the version on all browsers that support detection.
  // Time to take the appropriate action.

  // If the user has a new enough version...
  if (actualVersion >= requiredVersion) {
    // ...then we'll redirect them to the flash page, unless we've
    // been told not to redirect.
    if (useRedirect) {
      // Need javascript1.1 to do location.replace
      if(jsVersion > 1.0) {
        // It's safe to use replace(). Good...we won't break the back button.
        window.location.replace(flashPage);
      } else {
        // JavaScript version is too old, so use .location to load
        // the flash page.
        window.location = flashPage;
      }
    }

    // If we got here, we didn't redirect. So we make a note that we should
    // write out the object/embed tags later.
    hasRightVersion = true;
  } else {
    // The user doesn't have a new enough version.
    // If the redirection option is on, load the appropriate alternate page.
    if (useRedirect) {
      // Do the same .replace() call only if js1.1+ is available.
      if(jsVersion > 1.0) {
        window.location.replace((actualVersion >= 2) ? upgradePage : noFlashPage);
      } else {
        window.location = (actualVersion >= 2) ? upgradePage : noFlashPage;
      }
    }
  }
}

detectFlash();  // call our detector now that it's safely loaded.

// -->
</SCRIPT>





</HEAD>

<BODY BGCOLOR="#FFFFFF">

<!-- ===========================================================================
  IF YOU'RE USING PAGE REDIRECTION, FOLLOW THESE INSTRUCTIONS
  1) Put some content here to tell the user what's going on
     while they wait. something like:
  "Detecting Macromedia Flash, please wait..."

  2) Delete everything below this point up to
  the NOSCRIPT start tag: <NOSCRIPT>
  ========================================================================== -->





<!-- ===========================================================================
  IF YOU'RE USING CONTENT SWAPPING, ADJUST THE SCRIPT BELOW TO SUIT YOUR NEEDS
  ========================================================================== -->

<SCRIPT LANGUAGE="JavaScript" type="text/javascript">
<!--
// In this section we set up the content to be placed dynamically on the page.
// Customize movie tags and alternate html content below.

if (!useRedirect) {    // if dynamic embedding is turned on
  if(hasRightVersion) {  // if we've detected an acceptable version
    var oeTags = '<OBJECT CLASSID="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"'
    + 'WIDTH="550" HEIGHT="400"'
    + 'CODEBASE="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab">'
    + '<PARAM NAME="MOVIE" VALUE="movie.swf">'
    + '<PARAM NAME="PLAY" VALUE="true">'
    + '<PARAM NAME="LOOP" VALUE="false">'
    + '<PARAM NAME="QUALITY" VALUE="high">'
    + '<PARAM NAME="MENU" VALUE="false">'
    + '<EMBED SRC="movie.swf"'
    + 'WIDTH="550" HEIGHT="400"'
    + 'PLAY="true"'
    + 'LOOP="false"'
    + 'QUALITY="high"'
    + 'MENU="false"'
    + 'TYPE="application/x-shockwave-flash"'
    + 'PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">'
    + '<\/EMBED>'
    + '<\/OBJECT>';

    document.write(oeTags);   // embed the flash movie
  } else {  // flash is too old or we can't detect the plugin
    // NOTE: height, width are required!
    var alternateContent = '<IMG SRC="altimage.gif" HEIGHT="400" WIDTH="550">'
      + '<BR>any desired alternate html code goes here';

    document.write(alternateContent);  // insert non-flash content
  }
}

// -->
</SCRIPT>

<NOSCRIPT>
<!-- ===========================================================================
  HERE WE PROVIDE ALTERNATE CONTENT FOR NON-SCRIPT-SUPPORTING BROWSERS
  OR BROWSERS THAT HAVE THEIR SCRIPTING TURNED OFF...
  ==============================================================================

  IF YOU ARE USING PAGE REDIRECT, A META REFRESH GOES HERE. DELETE EVERYTHING
  BETWEEN THE NOSCRIPT TAGS EXCEPT THE FOLLOWING META TAG:
  <META HTTP-EQUIV="Refresh" CONTENT="10;URL=noflash.html">

  IF YOU ARE USING CONTENT SWAPPING, THE VALUE OF THE alternateContent VARIABLE
  SHOULD BE REPEATED HERE. DELETE EVERYTHING BETWEEN THE NOSCRIPT TAGS
  EXCEPT YOUR alternateContent HTML. FOR EXAMPLE:
  <IMG SRC="altimage.gif" HEIGHT="400" WIDTH="550">

  -->
</NOSCRIPT>


</BODY>
</HTML>

				</tr>
			</table>
		</td>
	</tr>
	<tr style="text-align:center;">
		<td valign="top" style="padding:4px"><b>White Space The most interesting place in the world</td>
		<td style="width:1px;"><img src="Images/Front/spacer.gif" style="border:0px; height:1px;" alt="Spacer"/></td>
	</tr>
</table>

<table style="width:100%;">
	<tr style="text-align:left;">
		<td style="width:20px;"><img src="Images/Front/spacer.gif" style="border:0px; height:20px;" alt="Spacer"/></td>
		<td  valign="top" style="width:100%;">

			<table style="width:100%;">
				<tr valign="top">
					<td style="width:10%;"><img src="Images/Front/student5.JPG" style="border:1px; border-color:#000000; border-style:solid; height:88px; width:88px;" alt="Picture 1" /></td>
					<td style="width:1%;">&nbsp;</td>
					<td style="width:89%;">
<div class="frontheader" style="padding-bottom:0.5em">International Students</div>
<ul class="blue_bullets">
	<li class="blue_bullets"><a href="Applicants/OS/Tours/Tour0705.cfm">Abertay in 


Bangladesh, Nepal and Pakistan</a></li>
	<li class="blue_bullets"><a href="Applicants/EUOS/Guide/Index.cfm?Key=003.004.006">Read our International Guide </a></li>
	<li class="blue_bullets"><a href="Applicants/EU/EUArtIndex.cfm">EU Articulation </a></li>
	<li class="blue_bullets"><a href="Applicants/EUOS/English.cfm?Key=003.004.010">English Language Help </a></li>
</ul>
					</td>
				</tr>
			</table>

		</td>
		<td style="width:20px;"><img src="Images/Front/spacer.gif" style="border:0px; height:20px;" alt="Spacer"/></td>
	</tr>

	<!-- Spacer between items -->
	<tr>
		<td colspan="3" style="width:100%;"><img src="Images/Front/spacer.gif" style="border:0px; height:5px;" alt="Spacer"/></td>
	</tr>

	<tr style="text-align:left;">
		<td style="width:20px;"><img src="Images/Front/spacer.gif" style="border:0px; height:20px;" alt="Spacer"/></td>
		<td valign="top" style="width:100%;">
			<table style="width:100%;">
				<tr>
					<td rowspan="2" valign="top" style="width:10%;"><img src="Images/Front/student4.JPG" style="border:1px; border-color:#000000; border-style:solid; height:88px; width:88px;" alt="Picture 2" /></td>
					<td rowspan="2" valign="top" style=" width:1%;">&nbsp;</td>
					<td class="frontheader" style="width:89%;">Get the Abertay Experience </td>
				</tr>
				<tr>
					<td style="text-align:left;">
						<table style="width:100%;">
							<tr valign="top">
								<td width="150">
<ul class="blue_bullets">

	<li class="blue_bullets"><a href="Applicants/OpenDays.cfm?Key=003.001.007">Open Day 2007</a></li>
	<li class="blue_bullets"><a href="About/GoodReasons.cfm">Good Reasons</a> </li>
	<li class="blue_bullets"><a href="About/SCentre/Index.cfm">Student Centre</a></li>
	<li class="blue_bullets"> <a href="https://portal.abertay.ac.uk/portal/page/portal/University/Graduation" target="_blank">Graduation</a></li>
</ul>
							  </td>
								<td width="383">
<ul class="blue_bullets">
	<li class="blue_bullets"><a href="About/Acc/Intro.cfm">Abertay Accommodation</a></li>
	<li class="blue_bullets"><a href="Schools/SHS/Casestudies.cfm?Key=001.004.003">Student Case Studies </a></li>
	<li class="blue_bullets"><a href="http://sport.abertay.ac.uk/" target="_blank">Abertay Sport</a></li>
  <li class="blue_bullets"><a href="questions">Got a Question?</a></li>

</ul>
							  </td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
		<td style="width:20px;"><img src="Images/Front/spacer.gif" style="border:0px; height:20px;" alt="Spacer"/></td>
	</tr>

	<!-- Spacer between items -->
	<tr>
		<td colspan="3" style="width:100%;"><img src="Images/Front/spacer.gif" style="border:0px; height:5px;" alt="Spacer"/></td>
	</tr>
	<tr style="text-align:left;">
		<td style="width:20px;"><img src="Images/Front/spacer.gif" style="border:0px; height:20px;" alt="Spacer"/></td>
		<td valign="top" style="width:100%;">
			<table style="width:100%;">
				<tr>
					<td rowspan="2" valign="top" style="width:10%;"><img src="Images/Front/student6.JPG" style="border:1px; border-color:#000000; border-style:solid; height:88px; width:88px;" alt="Picture 3" /></td>
					<td rowspan="2" valign="top" style="width:1%;">&nbsp;</td>
					<td style="width:89%;"><p class="frontheader">Welcome to our New Applicants </p></td>
				</tr>
				<tr>
					<td style="text-align:left;"><ul class="blue_bullets">
					  <li class="blue_bullets"><a href="http://cserv.abertay.ac.uk/registrypublic/induction06/induction.cfm" target="_blank">Induction '07</a><span style="position:relative; padding:0px 2px 2px 2px; top:-8px; left:2px; color:#FFFFFF; font-size:11px; font-weight:bold; background-color:#FF6300">new</span></li>
					        <li class="blue_bullets"><a href="Applicants/Prospectus.cfm">Prospectus - '08 available now!</a></li>
					        <li class="blue_bullets"><a href="Courses/Requests.cfm">Part-time Courses Brochure</a> </li>
					        <li class="blue_bullets"><a href="About/Mission.cfm">Mission &amp; Vision </a></li>
					        <li class="blue_bullets"> <a href="About/Equality.cfm">Diversity and Equality</a></li>
					</ul>
					  <p>&nbsp;</p>					  <p>&nbsp;</p></td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<div style="padding-left:30px; padding-top:20px; valign:top"><span style="position:absolute; padding-left:8px"></span>
  <p>&nbsp;</p>
</div>

<!-- InstanceEndEditable -->
</div>
</div>
</div>
</div>
</div>


</div>
</div>

	<!-- Begin SitestatIX code -->
<script type='text/javascript'>
<!--
function sitestat(ns_l){ns_l+='&amp;ns__t='+(new Date()).getTime();ns_pixelUrl=ns_l;
ns_0=document.referrer;
ns_0=(ns_0.lastIndexOf('/')==ns_0.length-1)?ns_0.substring(ns_0.lastIndexOf('/'),0):ns_0;
if(ns_0.length>0)ns_l+='&amp;ns_referrer='+escape(ns_0);
if(document.images){ns_1=new Image();ns_1.src=ns_l;}else
document.write('<img src="'+ns_l+'" width="1" height="1" alt="">');}

// get the HTTP_HOST name i.e www.abertay.ac.uk
 host=document.location.hostname;

//if http then protocol = 4
//if https then protocol = 5
//checking for location of :

protocol = document.URL.indexOf(":");


if (protocol==4){
//accessing via http
sitestat("http://uk.sitestat.com/abertay/abertay-ext/s?Home");
}
else
{
//accessing via https
sitestat("https://uk.sitestat.com/abertay/abertay-ext/s?Home");
}
//-->
</script>
<noscript>
<div>
<img src='https://uk.sitestat.com/abertay/abertay-ext/s?javascriptoff' width='1' height='1' alt='' />
</div>
</noscript>
	


<noscript>
<div>
<img src='https://uk.sitestat.com/abertay/abertay/s?javascriptoff' width='1' height='1' alt='' />
</div>
</noscript>

<!-- Begin Sitestat4 Technical code -->
<script language='JavaScript1.1' type='text/javascript' src='sitestat.js'></script>
<!-- End Sitestat4 Technical code -->

<!-- Begin Sitestat4 Loadingtime2 code -->
<script language='JavaScript1.1' type='text/javascript'>ns_loadingtime2=(new Date()).getTime()</script>
<!-- End Sitestat4 Loadingtime2 code -->
</body><!-- InstanceEnd -->
</html>


ti>por