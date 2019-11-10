
	<script language="JavaScript" type="text/javascript">
	<!--
	// moock fpi [f.lash p.layer i.nspector]
	// version: 1.3.5
	// written by colin moock
	// code maintained at: http://www.moock.org/webdesign/flash/detection/moockfpi/
	// terms of use posted at: http://www.moock.org/terms/
	
	
	
	// =============================================================================
	// These are the user defined globals.
	// Modify the following variables to customize the inspection behaviour.
	
	var requiredVersion = 8;   // Version the user needs to view site (max 6, min 2)
	var useRedirect = true;    // Flag indicating whether or not to load a separate
	                           // page based on detection results. Set to true to
	                           // load a separate page. Set to false to embed the
	                           // movie or alternate html directly into this page.
	                           
	// Only set next three vars if useRedirect is true...
	var flashPage = "gsa.cfm?pid=10&version=flash&detect=done"      // The location of the flash movie page
	var noFlashPage = "gsa.cfm?pid=10&version=html"  // Page displayed if the user doesn't have the
	                                  // plugin or we can't detect it.
	var upgradePage = "update_flash.html"  // Page displayed if we detect an old plugin
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
	var flash7Installed = false;    // boolean. true if flash 6 is installed
	var flash8Installed = false;    // boolean. true if flash 6 is installed
	var maxVersion = 8;             // highest version we can actually detect
	var actualVersion = 0;          // version the user really has
	var hasRightVersion = false;    // boolean. true if it's safe to embed the flash movie in the page
	var jsVersion = 1.0;            // the version of javascript supported
	
	// -->
	</script>

	<script language="JavaScript1.1" type="text/javascript">
	<!--
	
	// Check the browser...we're looking for ie/win
	var isIE = (navigator.appVersion.indexOf("MSIE") != -1) ? true : false;    // true if we're on ie
	var isWin = (navigator.appVersion.indexOf("Windows") != -1) ? true : false; // true if we're on windows
	
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
	  document.write('</SCR' + 'IPT\> \n'); // break up end tag so it doesn't end our script
	}
	// -->
	</script>

	<script language="JavaScript" type="text/javascript">
	<!--
	
	// Next comes the standard javascript detection that uses the 
	// navigator.plugins array. We pack the detector into a function so it loads
	// before we run it.
	
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
	      var flashVersion = parseInt(flashDescription.charAt(flashDescription.indexOf(".") - 1));
	     
	      // We found the version, now set appropriate version flags. Make sure
	      // to use >= on the highest version so we don't prevent future version
	      // users from entering the site.
	      flash2Installed = flashVersion == 2;    
	      flash3Installed = flashVersion == 3;
	      flash4Installed = flashVersion == 4;
	      flash5Installed = flashVersion == 5;
	      flash6Installed = flashVersion == 6;
	      flash7Installed = flashVersion == 7;
	      flash8Installed = flashVersion >= 8;
	    }
	  }
	  
	  // Loop through all versions we're checking, and
	  // set actualVersion to highest detected version.
	  for (var i = 2; i <= maxVersion; i++) {  
	    if (eval("flash" + i + "Installed") == true) actualVersion = i;
	  }
	  
	  // If we're on webtv, the version supported is 2 (pre-summer2000, 
	  // or 3, post-summer2000). Note that we don't bother sniffing varieties
	  // of webtv. You could if you were sadistic...
	  if(navigator.userAgent.indexOf("WebTV") != -1) actualVersion = 3;  
	  
	  // DEBUGGING: uncomment next line to display flash version
	  // alert("version detected: " + actualVersion);
	
	
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
	</script>

	






<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="En">
<head>
	
<title>:: The Glasgow School of Art :: - Design</title>
	
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


	
<meta name="keywords" content="gsa, glasgow school of art, glasgow, art school, fine art, photography, graphic design, charles rennie mackintosh, c r mackintosh, architecture, architect, digital design studio, dds, ceramics, art, design, interior design, product design, product design engineering, silversmithing, jewellery, textiles, visual communications, research, enterprise, centre for advanced textiles, cat, c.a.t., idri, i.d.r.i, mearu, m.e.a.r.u., mackintosh shop, drawing institute, mphil, phd, ma, 2d, 3d, motion graphics, m.des, mdes, textiles as fashion, fashion, fashion design, school of design, desgin, design department, department of design, design dept">

	
<script language="JavaScript">
	<!--
	function openPage(theURL) {
	  window.open(theURL,'printPane','status,width=525,height=330,scrollbars=yes');
	}
	function openWindow(theURL) {
	  window.open(theURL,'infoPane','width=400,height=500,scrollbars=yes');
	}
	// -->
	</script>
	
<style>
	td,a {
		font-family: Verdana, Arial, Helvetica, sans;
		font-size: 10px;
		color: #999999;
		text-decoration: none;
	}
	a:hover {
		font-family: Verdana, Arial, Helvetica, sans;
		font-size: 10px;
		color: #999999;
		text-decoration: underline;
	}
	</style>
</head>



	


<!--
flash8school.swf
-->

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" height="95%" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr> 
    <td valign="middle" align="center">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" height="420">
            <tr> 
  <td style="background-image: url(/images/flashbg/e28c05-left.gif); background-repeat: no-repeat; background-position: right top;">&nbsp;</td>
              <td valign="middle" width="760" align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="760" height="420">
                        <param name="movie" value="flash8school.swf" />
                        <param name="menu" value="false" />
						<param name="FLASHVARS" value="pid=10&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=" /> 
                      <param name="quality" value="high" />
                      <embed src="flash8school.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="420" flashvars="pid=10&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=&preview="></embed></object></td>
  <td style="background-image: url(/images/flashbg/e28c05-right.gif); background-repeat: no-repeat; background-position: left top;">&nbsp;</td>
            </tr>
  <tr>
		<td></td>
  	<td><div style="padding-left: 666px; padding-top: 4px;"><a href="/gsa.cfm?pid=10&amp;nid=0&amp;sid=0&amp;criteria=&amp;version=html" style="font-size: 9px; font-family:Arial, Helvetica, sans-serif;">HTML VERSION</a></div></td>
		<td></td>
  </tr>
          </table>
		</td>
  </tr>

</table>



<div style="display: none; height: 1px; width: 1px; overflow: hidden;">




	

	
		

		
		
		
			
		

		<p>Design at the GSA covers a wide spectrum of activity. From the traditional crafts of silversmithing, jewellery design and ceramics to the design of products, interiors, textiles and communication, the diversity of our specialisms is bound together by a common goal - to produce excellent designers.</p><p>We are committed to the development of design education, practice and research, in the highly creative environment of the GSA where artists, designers and architects study and have the opportunity to work together.  Learning and teaching is studio-based, complemented by a programme of Historical and Critical Studies and visiting lecturers, critics and honorary professors.  </p><p>Design School students are successful and a high number go on to postgraduate study at the RCA, while others choose to develop their career in the creative industries with many setting up their own businesses or working for major international companies.  Our students show work annually at New Designers and D&amp;AD in London, at Premier Vision, Paris, and have been invited to exhibit at the Furniture Fair in Milan.</p><p>Our staff are practicing designers as well as academics and are all involved in their own practice and research projects and regularly exhibit internationally and nationally.</p><p>Welcome to the School of Design.</p>
	

	

	

	

	

	

	
	
	
	
	


	
	





	<ul>
		
			<li>The School of Design has around 650 full-time undergraduate students and a growing postgraduate population with a growing number of full-time PhD students.</li>
		
			<li>The School comprises seven departments specialising in: ceramics, textiles, silversmithing and jewellery, interior design, visual communication, product design and product design engineering.</li>
		
			<li>Innovative courses include the Bachelor of Design/Master of European Design, the Bachelor of Engineering/Master of Engineering and a part-time distance ceramics degree course by mixed-mode delivery 
</li>
		
			<li>Graduate destinations include Asprey's London, Diesel, BBC, Orange, Dyson, Wedgwood and Conran.</li>
		
			<li>The Masters in Design Practice: Textiles as Fashion was the first of its kind in the UK</li>
		
			<li>The Centre of Advanced Textiles (CAT) is a unique research centre specialising in new methods of computerised textile design and digital printing.</li>
		
			<li>Excellent links with industry and business through staff consultancy and practice including One Foot Taller, Monsoon, Accessorise,  Giltech, Psion, Nokia and Bulmers.</li>
		
			<li>The Atrium Gallery has diverse and energetic programme, attracting international exhibitions from Korea, Japan and Budapest, as well as hosting outstanding student and staff design shows.</li>
		
			<li>The School was listed in the Design Week magazine HOT 50 - as a leader in design education.  In 2002 the School of Design became one of only two European Design Schools to be invited to join an alliance of Adobe Software and 24 of the leading Design Schools in the USA.</li>
		
			<li>Honorary professors include Josephine Green, Director of Trends and Strategy at Philips Electronics, Holland, Janice Kirkpatrick, Director of Graven Images, Glasgow, Stefan Klein of the Bratislava Academy of Fine Art and Design Slovakia, Russell Mills, Multimedia artists, designer and architect Martine Bedin and Tony Franks from ECA.</li>
		
	</ul>



</div>


</body>
</html>

	



,pt
_h'Se==	=iec