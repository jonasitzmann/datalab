
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
	var flashPage = "gsa.cfm?pid=138&version=flash&detect=done"      // The location of the flash movie page
	var noFlashPage = "gsa.cfm?pid=138&version=html"  // Page displayed if the user doesn't have the
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
	
<title>:: The Glasgow School of Art :: - Product Design Eng.</title>
	
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


	
<meta name="keywords" content="gsa, glasgow school of art, glasgow, art school, fine art, photography, graphic design, charles rennie mackintosh, c r mackintosh, architecture, architect, digital design studio, dds, ceramics, art, design, interior design, product design, product design engineering, silversmithing, jewellery, textiles, visual communications, research, enterprise, centre for advanced textiles, cat, c.a.t., idri, i.d.r.i, mearu, m.e.a.r.u., mackintosh shop, drawing institute, mphil, phd, ma, 2d, 3d, motion graphics, m.des, mdes, textiles as fashion, fashion, fashion design, product design engineering, department of product design engineering, product design engineering deprtment, pde, pde department, beng, meng">

	
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
flash8template.swf
-->

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table width="100%" height="95%" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr> 
    <td valign="middle" align="center">
			<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center" height="420">
            <tr> 
  <td style="background-image: url(/images/flashbg/e28c05-left.gif); background-repeat: no-repeat; background-position: right top;">&nbsp;</td>
              <td valign="middle" width="760" align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="760" height="420">
                        <param name="movie" value="flash8template.swf" />
                        <param name="menu" value="false" />
						<param name="FLASHVARS" value="pid=138&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=" /> 
                      <param name="quality" value="high" />
                      <embed src="flash8template.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="420" flashvars="pid=138&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=&preview="></embed></object></td>
  <td style="background-image: url(/images/flashbg/e28c05-right.gif); background-repeat: no-repeat; background-position: left top;">&nbsp;</td>
            </tr>
  <tr>
		<td></td>
  	<td><div style="padding-left: 666px; padding-top: 4px;"><a href="/gsa.cfm?pid=138&amp;nid=0&amp;sid=0&amp;criteria=&amp;version=html" style="font-size: 9px; font-family:Arial, Helvetica, sans-serif;">HTML VERSION</a></div></td>
		<td></td>
  </tr>
          </table>
		</td>
  </tr>

</table>



<div style="display: none; height: 1px; width: 1px; overflow: hidden;">




	

	
		

		
		
		
			
		

		<h2>PRODUCT DESIGN ENGINEERING</h2><p><b>UCAS INFORMATION</b><br /><b>Instituiton Name:  </b>GLASG<br /><b>Institution Code:</b>  G28<br /><b>UCAS Code:  </b>H3W2 (BEng)<br /><b>UCAS Code:  </b>H3WG (MEng) <br /><b>UCAS Code:</b>  H3WF (MEng) <br /><b>Route:</b>  A </p><p><b>This is a joint course with the University of Glasgow and applicants must use the University's Institutional UCAS Code.  Applicants may also wish to refer to the University of Glasgow's prospectus.</b></p><p><b>Acting Head of Department</b><br />Craig Whittet BA(Hons) MDes</p><p><b>Ever imagined?</b><br />Ever imagined bringing together your academic and creative abilities to design exciting and innovative products, and obtain a high quality degree which will enable you to work around the world? Product Design Engineering offers you this opportunity by uniquely bringing together two distinct educational cultures within the Glasgow School of Art and the University of Glasgow.</p><p><b>What is Product Design Engineering?</b><br />Product Design Engineering (PDE) is a leading UK undergraduate Master of Engineering (MEng) / Bachelor of Engineering (BEng) honours degree course run jointly between the Glasgow School of Art (GSA) and the University of Glasgow (GU). </p><p><b>Who is PDE for?</b><br />PDE is particularly suited to those with strong academic skills (specifically Maths and Physics/Technological Studies) who wish to apply them in an imaginative, innovative and creative manner to design manufacturable products which address human need. A formal portfolio, or art or design subject is not essential for entry into Year 1. Fundamentally, we seek individuals with a good imagination, who are conscientious and who have the ability to work hard. If you come with this attitude, we willl develop your potential to design. PDE attracts a substantial proportion of women into its programme.</p><p><b>What is distinctive about PDE?</b><br />We pioneered the concept of this form of undergraduate education bringing together creativity and engineering, and won a Partnership Award for innovation in teaching. This integration of two distinctive educational cultures is the essence of the success of PDE. The Institution of Mechanical Engineers, who accredit the course, said it had 'brought the joy and creativity back into engineering', an attribute it proudly maintains. Students spend substantial time in both the Glasgow School of Art and the University of Glasgow where the mix of engineering theory, labs and design studio work provides an enhanced educational experience. As a result this has successfully produced design engineers with strong, creative and integrated skills.</p><p><b>How is the PDE programme structured?</b></p><p><b> - at the Glasgow School of Art</b><br />GSA studio programme is centred around design project activities. The first two years are designed to develop creativity, exploration and expression of ideas, and to build confidence in the design process. You will be involved in a wide range of activities including design awareness and aesthetics, drawing and visualisation, model-making and prototyping. Skills in communication and project management are also developed.</p><p><b> - at the University of Glasgow</b><br />The first two years of the course contain elements common to the Mechanical Engineering degree and provide the engineering core studies. Subjects studied at GU include applied mathematics, mechanics, thermofluids, materials, electrical and electronic engineering, along with management, economics, and foreign languages. </p><p><b>Integrating the two cultures</b><br />The final years of the degree focus on the acquisition of in-depth technical skills, and their application to substantial design engineering projects. Contextual studies relate work to entrepreneurial, economic, business, and social considerations. Students can also be introduced to industry through placements and visits, and the final year involves an individual major project often organised in close collaboration with industry. Throughout the course, the studio at GSA is where the engineering sciences from the lectures and labs at GU are applied and integrated, together with the practical and imaginative application of manufacturing, marketing and business issues. </p><p><b>Accreditation</b><br />The MEng degree is accredited by the Institution of Mechanical Engineers to allow Chartered Engineer status. An excellent springboard for industry, consultancy, or higher degrees is also provided by the BEng degree.</p><p><b>What about employment?</b><br />Career prospects on graduation from PDE are excellent. Consequently, our graduates are located around the world in challenging positions within prestigious companies such as Apple Computers (USA), BAESystems, Cambridge Consultants, Dyson, Hoover, JCB, Nokia, Polaroid and Psion.</p><p><b>What qualifications do I need and how can I apply?</b><br />There are various routes into PDE depending on your qualifications and experience. With the two degree exit points - BEng or MEng it is possible to achieve a degree in either three, four or five years.</p><p>UCAS application is via Route A, and the Institution Code for all routes is GLASG G28. Please mention Product Design Engineering specifically in all enquiries. Please consult either the University of Glasgow or Glasgow School of Art Prospectus for full details.</p><p><b>Overseas applicants</b><br />PDE welcomes applicants from overseas. Academic qualifications will be checked by the University of Glasgow Admissions Office. Please contact the Head of Department at GSA directly for an initial informal discussion.</p><p><b>Contact</b><br />If you wish more details, or to discuss any aspect of the programme on an informal basis, please contact the Department at the Glasgow School of Art or the University of Glasgow directly, where one of the staff will be able to help you:</p><p>Glasgow School of Art:<br /><a href="mailto: v.nicolson@gsa.ac.uk" target=""><u>v.nicolson@gsa.ac.uk</u></a></p><p>University of Glasgow:<br /><a href="mlucas@mech.gla.ac.uk" target=""><u>m.lucas@mech.gla.ac.uk</u></a></p>
	

	

	

	

	

	

	
	
	
	
	


	
	







</div>


</body>
</html>

	



r	eet