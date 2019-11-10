
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
	var flashPage = "gsa.cfm?pid=53&version=flash&detect=done"      // The location of the flash movie page
	var noFlashPage = "gsa.cfm?pid=53&version=html"  // Page displayed if the user doesn't have the
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
	
<title>:: The Glasgow School of Art :: - Life+Works</title>
	
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">


	
<meta name="keywords" content="gsa, glasgow school of art, glasgow, art school, fine art, photography, graphic design, charles rennie mackintosh, c r mackintosh, architecture, architect, digital design studio, dds, ceramics, art, design, interior design, product design, product design engineering, silversmithing, jewellery, textiles, visual communications, research, enterprise, centre for advanced textiles, cat, c.a.t., idri, i.d.r.i, mearu, m.e.a.r.u., mackintosh shop, drawing institute, mphil, phd, ma, 2d, 3d, motion graphics, m.des, mdes, textiles as fashion, fashion, fashion design, ">

	
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
  <td style="background-image: url(/images/flashbg/c6a00c-left.gif); background-repeat: no-repeat; background-position: right top;">&nbsp;</td>
              <td valign="middle" width="760" align="center"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="760" height="420">
                        <param name="movie" value="flash8template.swf" />
                        <param name="menu" value="false" />
						<param name="FLASHVARS" value="pid=53&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=" /> 
                      <param name="quality" value="high" />
                      <embed src="flash8template.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="420" flashvars="pid=53&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=&preview="></embed></object></td>
  <td style="background-image: url(/images/flashbg/c6a00c-right.gif); background-repeat: no-repeat; background-position: left top;">&nbsp;</td>
            </tr>
  <tr>
		<td></td>
  	<td><div style="padding-left: 666px; padding-top: 4px;"><a href="/gsa.cfm?pid=53&amp;nid=0&amp;sid=0&amp;criteria=&amp;version=html" style="font-size: 9px; font-family:Arial, Helvetica, sans-serif;">HTML VERSION</a></div></td>
		<td></td>
  </tr>
          </table>
		</td>
  </tr>

</table>



<div style="display: none; height: 1px; width: 1px; overflow: hidden;">




	

	
		

		
		
		
			
		

		<h2> LIFE + WORKS</h2><p>By the end of the 19th century Glasgow School of Art was one of the leading art academies in Europe and its reputation in architecture and the decorative arts had reached an all time high. At the very heart of this success was a talented young artist, architect and designer, Charles Rennie Mackintosh.</p><p>For over 20 years Mackintosh worked almost exclusively in Glasgow where all his best-known work was created and where much of it still remains, yet he left Glasgow in search of greater success and died in London in relative obscurity. It is perhaps ironic that he was given little recognition by his native city at the time, for by the end of the 20th century he was being recognised as the father of 'Glasgow Style' and one of the driving forces behind a new approach to modern architecture.</p><p>Born in Glasgow on 7 June 1868 Mackintosh trained as an architect in a local practice and studied art and design at evening classes at the Glasgow School of Art. At art school Mackintosh and his friend and colleague Herbert MacNair met the artist sisters Margaret and Frances Macdonald. These four artists collaborated on designs for furniture, metalwork and illustration, developing a highly distinctive array of weird images including abstracted female figures and metamorphic lines reminiscent of Aubrey Beardsley. Their style earned them the nickname of the 'Spook School' and their work, particularly in England, was treated with suspicion because of its decadent influence of Continental art nouveau.</p><p>The majority of Mackintosh's three-dimensional work was created with the help of a small number of patrons within a short period of intense activity between 1896 and 1910. Francis Newbery was headmaster of the Glasgow School of Art and was supportive of Mackintosh's ultimately successful bid to design a new art school building, his most prestigious undertaking. For Miss Kate Cranston he designed a series of Glasgow tearoom interiors and for the businessmen William Davidson and Walter Blackie, he was commissioned to design large private houses, 'Windyhill' in Kilmacolm and 'The Hill house' in Helensburgh. </p><p>In Europe, the originality of Mackintosh's style was quickly appreciated and in Germany and Austria he received the acclaim that he was never truly to gain at home. In 1900 the Mackintoshes were feted in Vienna as a result of their contribution to the 8th Vienna Secession and this led to friendships with designers such as Josef Hoffmann and the commission to design the Warndorfer Music Salon. In 1902 the Mackintosh Room at the Turin International Exhibition was also enthusiastically received and he went on to exhibit in Moscow and Berlin.</p><p>Despite this success and with his undoubted influence abroad, Mackintosh's work met with considerable indifference at home and his career in Glasgow declined. Few private clients were sufficiently sympathetic to want his 'total design' of house and interior and he was incapable of compromise.</p><p>By 1914 Mackintosh had despaired of ever receiving true recognition in Glasgow and both he and Margaret moved, temporarily, to Walberswick on the Suffolk Coastline, where he painted many fine flower studies in watercolour.</p><p>In 1915 they settled in London and for the next few years Mackintosh attempted to resume practice as an architect and designer. The designs he produced at this time for textiles, for the 'Dug-out' Tea Room in Glasgow and the dramatic interiors for Bassett-Lowke's house in Northampton, England show him working in a bold new style of decoration, using primary colours and geometric motifs. It was an output of extraordinary vitality and originality that went virtually unheeded.</p><p>In 1923 the Mackintoshes left London for the South of France where Mackintosh gave up all thoughts of architecture and design and devoted himself entirely to painting landscapes. He died in London, of cancer, on 10 December 1928.</p>
	

	

	

	

	

	

	
	
	
	
	


	
	







</div>


</body>
</html>

	



u		 dopth goetuy