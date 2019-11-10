
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
	var flashPage = "gsa.cfm?pid=1572&version=flash&detect=done"      // The location of the flash movie page
	var noFlashPage = "gsa.cfm?pid=1572&version=html"  // Page displayed if the user doesn't have the
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
	
<title>:: The Glasgow School of Art :: - Architecture</title>
	
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
						<param name="FLASHVARS" value="pid=1572&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=" /> 
                      <param name="quality" value="high" />
                      <embed src="flash8template.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="420" flashvars="pid=1572&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=&preview="></embed></object></td>
  <td style="background-image: url(/images/flashbg/c6a00c-right.gif); background-repeat: no-repeat; background-position: left top;">&nbsp;</td>
            </tr>
  <tr>
		<td></td>
  	<td><div style="padding-left: 666px; padding-top: 4px;"><a href="/gsa.cfm?pid=1572&amp;nid=0&amp;sid=0&amp;criteria=&amp;version=html" style="font-size: 9px; font-family:Arial, Helvetica, sans-serif;">HTML VERSION</a></div></td>
		<td></td>
  </tr>
          </table>
		</td>
  </tr>

</table>



<div style="display: none; height: 1px; width: 1px; overflow: hidden;">




	

	
		

		
		
		
			
		

		<h2>UNDERGRADUATE STUDY AT THE GSA</h2><p>At the GSA we give you freedom and independence within an intellectually challenging and stimulating environment, to explore ideas and realise your potential.</p><p>We offer a practice-led, project driven, studio-based learning experience that will challenge your creative powers, develop your talents, and ultimately give your work a professional edge - a highly charged creative environment which will impact on your work.</p><p>Join us for a journey that will take you on a learning experience that will last you a lifetime. </p><h2>MACKINTOSH SCHOOL OF ARCHITECTURE</h2><p>Architecture is an art form that everyone participates in. We see it and we touch it. It inspires and provokes. And it transforms lives and communities. Architecture is a truly democratic art - and that's why it's so vital to our future.</p><p>The Mackintosh School of Architecture has always been a proving ground for progressive thought. Part of the learning experience at the GSA since the middle of the 19th century, the 'Mac' has a reputation for aesthetically and intellectually rigourous architecture, set in an urban and social context. </p><p>The city itself provides a powerful stimulus for study. From its legacy as Britain's only true Victorian gridiron city and its subsequent economic decline, to its transformation as a pioneering post-industrial city, there could hardly be a more stimulating environment in which to study architecture.  </p><p>Our ever-growing network of leading international visiting professors, lecturers and guest teachers, provides a vibrant complement to our academic staff, many of whom are practising architects, such as the Stirling prize-shortlisted Charlie Sutherland and Charlie Hussey. <br />Our visiting professors include Dickon Robinson of the Peabody Trust, an expert in urban regeneration, and C J Lim of Studio 8 Architects in London. </p><p>Glasgow is a city located geographically and historically between the cities of northern Europe and those of the new world. This internationalism has always influenced our students, our essentially urban setting sparking new thoughts on the city and the role that architecture can play to enhance our daily lives. </p><p>To study architecture at the GSA is to study life itself. We invite you to live yours to the full.</p><p>Professor David Porter <br />BSc (Hons) DipArch FRIAS RIBA <br />Head of Mackintosh School of Architecture</p><h2>HONORARY PROFESSORS</h2><p>Professor John Gibbons <br />Chief Architect Scottish Executive, Edinburgh <br />Professor C J Lim <br />Studio 8 Architects, London Director, Bartlett Architecture Lab, University <br />College, London <br />Professor Dickon Robinson<br />Peabody Trust, London <br />Professor Wim Van Den Bergh<br />Architect, Maastricht, The Netherlands Professor Of Housing, RWTH Aachen, Germany <br />Professor Dean Hawkes<br />Leverhulme Emeritus Research Fellow </p><h2>EMERITUS PROFESSOR</h2><p>Professor Andy Macmillan, OBE</p><h2>SENIOR RESEARCH FELLOW</h2><p>Professor Colin Porteous </p><ul><li><b>Living and learning in Glasgow provides an intoxicating blend of academic and practical understanding. </b>Siddarth Money MArch</li></ul><h2>TEACHING + LEARNING + ASSESSMENT</h2><p>At the Mackintosh School of Architecture the emphasis is on student-centred active learning, which means involving students in a wide range or learning experiences and exercises, where the individual is encouraged to develop their own direction and solutions.</p><p>The programmes of studies (BArch and DipArch) are organised over five years, delivered through two academic programmes. The syllabus includes design, construction, structures, environmental science, history, sociology, economics, law and management, as well as skills in hand drawing, computer-aided drawing, three-dimensional visualisation, model-making and workshop techniques, photography, audiovisual and verbal presentation, and core skills including problem solving and working with other people. </p><p>The study of Architecture at the MSA is wide ranging to develop students to have the aptitude, enthusiasm and commitment for the demands of professional practice in the contemporary world. </p><p>In addition to studio-based work, there are lectures, seminars and practical courses taught by both full-time and visiting lecturers. The School attracts the foremost international architects and designers. Students may also become involved in live projects, field study visits, research and competitions. Recent study visits include Amsterdam, Barcelona, Berlin, Paris and New York. </p><p>We have an international group of guest teachers who contribute to the programmes. This group has recently included Simon Allford of AHMM in London; Jan Peter Wingender, Head of Architecture at the Amsterdam Academy; Rachel Chidlow of UCD, Dublin; Yushi Uehara from Amsterdam; Sarah Hare of Hare Architects, London; Richard Lavington of MacCreanor Lavington London/Rotterdam; Walter Unterrainer from the Fachhochule Liechtenstein; Chris Thurlbourne and Steven Willacy of the Architecture School of Aarhus, Denmark and Jane Wernick of Wernick Associates. </p><p>Recent visiting lecturers have included Benedette Taigilabue of EMBT architects, Barcelona; Lord Richard Rogers; David Chipperfield; Peter St John of Caruso St John; Jon Rouse of CABE; Gordon Benson of Benson Forsyth; Jonathan Sergison of Sergison Bates; Peter Ahrends of ABK; Ricardo Flores &amp; Eva Prats, Barcelona; Steve Marshall of Munkenbeck and Marshall; Max Fordham; Peter Blundell Jones and Caroline Bos of UN Studio. </p><ul><li>The School is based in the Bourdon Building, facilities include a high-specification super-computer suite and a HyDRA video conferencing system that links the Mac to the Digital Design Studio.</li></ul><h2>CAREERS + ALUMNI</h2><p>Architecture is the most visible of all forms. So it is fitting that many of our graduates go on to become prominent figures in the industry. Whether they form their own practices, join internationally renowned firms or engage in a complementary field, our architecture students are among the most sought after in the world.</p><ul><li>97% of GSA architecture graduates are in full-time employment</li><li>84% OF GSA Architecture graduates said that their employment was relevant to their degree </li><li>14% of GSA architecture graduates are self-employed</li><li>GSA Graduate Destination Survey 1999-2004, November 2005</li></ul><p>Architecture graduates go on to successful careers as: architects, town planners, lecturers, chief executives, estate managers, designers, professors, artists, entrepreneurs.</p><p>Here are some of our successful graduates:</p><ul><li>Ian Alexander Architecture, 1987 Founder, McKeown Alexander Architects</li><li>Michael Antliff Architecture, 1989 Founder, Digital Animations Group, creators of Ananova, virtual newsreader</li><li>Russell Baxter Master of Architecture, 1990 Associate Davis Duncan Architects</li><li>William Coltart Architecture, 1982 Founder, Coltart Earley Architects</li><li>David Harper Architecture, 1980 Founder, Harper Mackay Architects</li><li>Gareth Hoskins Architecture, 1993 Architect 'architecture for all' gallery, V&amp;A Museum</li><li>Ross Hunter Architecture, 1985 Founder, Graven Images design practice</li><li>Charlie Hussey Architecture, 1987 Founder, Sutherland Hussey Architects</li><li>Nathan Isley Master of Architecture, 1992 President Isley Hawkins Architecture</li><li>Charles Rennie Mackintosh Architecture, 1890 Architect of the Mackintosh Building at the GSA</li><li>Andy MacMillan Architecture EMERITUS Professor - The Glasgow School of Art</li><li>Herbert MacNair Architecture, 1894</li><li>Henry McKeown Architecture, 1987 Founder, McKeown Alexander Architects </li><li>Isi Metzstein Architecture </li><li>Charlie Sutherland Architecture, 1987 Founder, Sutherland Hussey Architects, winners of the RIAS Building of the Year Award 2003 and RSA Gold Medal 2003 </li><li>Andrew Whalley Architecture, 1983 Partner on the Eden Project, Cornwall</li><li>Adrian Wiszniewski Architecture, 1983 Practising artist</li></ul><p><b>Gareth Hoskins Architecture, 1993</b><br />Director of Gareth Hoskins Architects."GSA's contribution is enormous. It has a tremendous heritage in producing people who have gone on to influence the creative arts around the world. It is one of the very few art schools whose output underlines the fact that the creative arts are a 'real career'."</p><h2>ARCHITECTURAL STUDIES</h2><h2>BARCH (HONS)</h2><p>UCAS INFORMATION<br />Institution Name: <br />GSA<br />Institution Code: <br />G43<br />UCAS Code: <br />K100<br />Route: <br />A</p><p>Head of Undergraduate Studies/Programme Leader<br />Sally Stewart  <br />BArch (Hons) March</p><p>Glasgow is one of the UK's most architecturally stimulating cities, and made intelligent use of its status as European City of Culture in 1990 to provoke new thinking on urban design and regeneration. The city is an ideal test bed for new ideas and in the Mackintosh School of Architecture - the 'Mac' - we use Glasgow within the context of contemporary European practice.</p><p>In the School, our aim is to broaden your understanding of architecture while keeping alive your innate creativity by developing communication skills that will allow you to explore, refine and represent your ideas. </p><p>The programme leads to the BArch (Ord) or BArch (Hons) degree, and also to exemption from Part 1 of the Examination in Architecture of the ARB/RIBA. Our full-time students undertake a year of practical training in an approved architect's office between years 3 and 4. </p><p>The Mackintosh School of Architecture is based in the Bourdon Building, where work in a wide variety of media is encouraged and supported by an excellent range of facilities - lecture theatre, public exhibition space - the Podium Gallery, cafÃÂÃÂÃÂÃÂ© bar, technical library and RIBA Information Service.</p><ul><li><b>In the Architects Journal, AJ100, survey of the top 100 Architectural Practices in the UK, The Mackintosh School is the top school in Scotland and in the top 4 in the UK. </b>Architects Journal, March 2004</li></ul><p>year 1<br />Use of space, natural light, structures and materials to create enclosures. Skills to visualise and describe ideas and designs. How buildings are made, how they work and how they are experienced. Designing buildings that respond to their sites.</p><p>year 2<br />Promotes design as an acquired skill motivated by playfulness and curiosity about the world. Develop skills through design projects of increasing complexity involving technology as a means of architectural expression.</p><p>year 3<br />The resolution of more complex organisational problems, theoretical issues and the architectural expression of the public realm. Experience of working in multidisciplinary teams prior to first year of practical experience.</p><p>year 4<br />Students extend their design skills within a rigorous creative studio environment. Projects to explore architecture as a response to the city ie urban design and a regeneration plan.</p><h2>BARCH PART-TIME</h2><p>The BArch is also available as a part-time mode which takes a minimum of four years for the Ordinary Degree. Students undertaking this part-time mode must be employed in an approved architect's office. Applications to the part-time mode should be made directly to the School.</p><h2>DIPLOMA IN ARCHITECTURE</h2><h2>DIP ARCH</h2><p>Director of Graduate Studies/Programme Leader<br />Alexander Page  <br />Dip Arch ARIAS</p><p>Glasgow provides a powerful stimulus to studying architecture, and the School's Diploma in Architecture course reflects the changing nature of modern architectural practices. </p><p>Our programme is studio-based with all students working in open plan studios to promote a creative environment in which students across all stages can innovate, experiment and share advice. The programme also provides a rigorous educational framework for students wishing to enter the architectural profession, and gain exemption from Part II of the Examination in Architecture of the ARB/RIBA. </p><p>The Mac's reputation attracts students of all nationalities, and a constant flow of internationally respected architects, critics and lecturers from abroad who bring a fresh perspective to studying in Glasgow. </p><p>The course may be completed in two academic years full-time, three years part-time (for students employed in an architects' office), or one year full-time (for students who have completed the final year of the Scottish honours degree in architecture).</p><p>year 4<br />Students extend their design skills within a rigorous creative studio environment. Projects explore architecture as a response to the city.</p><p>year 5<br />Identification through analysis and research of an Architectural Design Thesis and final presentation of the outcome through exhibition and interview. </p><p>The Diploma in Architecture is also available for study by part-time mode which takes a minimum of three years. Students undertaking this mode of study must be employed in an approved architects office. </p><p>Applications for the DipArch should be made directly to the School. For information on Master of Architecture by Conversion, see page 127.</p><h2>MASTER OF ARCHITECTURE BY CONVERSION</h2><h2>MARCH</h2><p>Students who achieve a sufficiently high standard in the final design thesis of the Diploma course may be eligible to proceed to a programme leading to the award of a Masters degree, MArch (by Conversion), where there is an opportunity to develop an aspect of the thesis design in greater depth. Students progressing on to the MArch (by Conversion) prepare a special piece of work relating to their final design thesis supervised by the Professor of Architecture.</p><p>The MArch (by Conversion) programme takes a further term of full-time study or by agreement with the Head of School, three terms part-time. During this time, students develop ideas stemming from their previous years work, which are <br />of particular interest to them. They develop fluency in the discussion of contemporary issues, which encourages them to place their own work in the wider context of present day architecture and society.</p><p>The exhibition at the end of the course is seen as a valuable demonstration of the highest level of student aspiration and achievement and an important teaching tool for the School. Students are encouraged to devise and organize a public exhibition of their work - in 2002 at Glasgow's Centre for Contemporary Art and in 2003 at the Fruitmarket Gallery in the Merchant City area of Glasgow.</p>
	

	

	

	

	

	

	
	
	
	
	


	
	







</div>


</body>
</html>

	



"nbi	cep