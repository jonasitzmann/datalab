
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
	var flashPage = "gsa.cfm?pid=1570&version=flash&detect=done"      // The location of the flash movie page
	var noFlashPage = "gsa.cfm?pid=1570&version=html"  // Page displayed if the user doesn't have the
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
	
<title>:: The Glasgow School of Art :: - Welcome</title>
	
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
						<param name="FLASHVARS" value="pid=1570&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=" /> 
                      <param name="quality" value="high" />
                      <embed src="flash8template.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="760" height="420" flashvars="pid=1570&nid=0&sid=0&server=http://www.gsa.ac.uk&searchid=739&criteria=&preview="></embed></object></td>
  <td style="background-image: url(/images/flashbg/c6a00c-right.gif); background-repeat: no-repeat; background-position: left top;">&nbsp;</td>
            </tr>
  <tr>
		<td></td>
  	<td><div style="padding-left: 666px; padding-top: 4px;"><a href="/gsa.cfm?pid=1570&amp;nid=0&amp;sid=0&amp;criteria=&amp;version=html" style="font-size: 9px; font-family:Arial, Helvetica, sans-serif;">HTML VERSION</a></div></td>
		<td></td>
  </tr>
          </table>
		</td>
  </tr>

</table>



<div style="display: none; height: 1px; width: 1px; overflow: hidden;">




	

	
		

		
		
		
			
		

		<h2>OUR VISION</h2><p>To provide world class creative education and research in architecture, design and fine art, which makes a significant economic, social and cultural contribution.</p><h2>DIRECTOR'S WELCOME</h2><p>"Creativity is national income".  <br />Not my words but those of the artist Joseph Beuys over 30 years ago.</p><p>Today, the importance of creativity and the role of creative people has never been clearer. Creativity and creative people are increasingly recognised both as the drivers of today's global economy and the catalysts for social wellbeing. Society and the economy need people who can think laterally, take risks and challenge convention; people who are enterprising and self-motivated; people who can imagine things that did not yet exist with the skills and abilities to give shape to their imagination - people like you.</p><p>The creative education you will experience at The Glasgow School of Art will be second to none. You will join an international community of emergent artists, designers and architects; a creative hothouse, where new ideas are nurtured and you are encouraged and supported to realise your own potential. It will be challenging, hard work, sometimes frustrating but ultimately fulfilling and it will give you the strongest possible foundation for your future career - whatever and wherever that might be. </p><p>The time you spend at the GSA and in Glasgow, one of Europe's most culturally dynamic cities, will be amongst the most important and inspirational times of your life. We look forward to sharing them with you.</p><p>Professor Seona Reid <br />BA (Hons) HonD.Art HonD.Litt FRSA<br />Director</p><h2>WELCOME TO THE GSA</h2><p>The Glasgow School of Art has enjoyed a long and distinguished history of producing innovative, creative and successful artists, designers and architects.</p><p>Today, our distinctive, specialist, practice-based, education is internationally recognised as a creative hothouse, drawing talented individuals from all over the world with a passion and concern for visual culture.</p><p>Founded in 1845, the GSA is one of the few remaining independent art schools in the UK and we have occupied our present site in the centre of Glasgow since 1899. At the heart of the campus is the Mackintosh Building, described by Sir Christopher Frayling, Rector of the Royal College of Art, London, as ". ..the only art school in the world where the building is worthy of the subject... this is a work of art in which to make works of art".</p><p>One of the iconic buildings of the 20th century, the Mackintosh Building was designed by GSA alumnus, and one of modern history's most influential designers, Charles Rennie Mackintosh. </p><p>Mackintosh is just one of a number of innovative, creative and successful artists, designers and architects who have benefited from their time at the GSA and in Glasgow. Many have chosen to stay in the City and today Glasgow is home to one of the UK's largest and most vibrant, creative communities, drawn from across the world and as a student at the GSA you will be part of this creative community.</p><p>We offers students a vibrant, stimulating and intellectually challenging environment in which to experiment and explore new ideas, working with academic staff who are engaged in national and international research and across our three academic schools - Architecture, Design and Fine <br />Art - students work with practicing artists, designers and architects such as Christine Borland (Turner Prize shortlisted 1997), Brian Cairns (Gold medal winner from the Society of Illustrators, New York) and Charlie Sutherland and Charlie Hussey of Sutherland Hussey Architects, (winners of the RIAS Scottish Building of the Year and Stirling Prize nominees).  </p><p>Each student at the GSA has a dedicated studio space and working within a studio environment you will find yourself part of a creative house - a culture which creates an open and supportive environment that encourages critical debate and creative dissonance, inspiration, guidance and encouragement to help every student make the most of their unique talents.</p><p>Our graduates go into a range of careers but whatever they choose to do, they add value to the communities they are part of.</p><ul><li><b>Glasgow has become Europe's leading City  for young artists, bypassing London on the world stage.</b>   Philip Dodd, Former Director, Institute of Contemporary Arts London</li><li></li><li><b>The only art school in the world where the building is worthy of the subject.</b> Sir Christopher Frayling Rector of the Royal College of Art, and Chair of Arts Council England</li></ul><h2>SOME OF OUR SUCCESSES</h2><p><b>Neil Farish and Neil Tierney, Product Design Engineering (2002)</b> won the Shell Livewire Young Entrepreneurs of Year 2004. They beat 1,200 other entrants and 12 finalists to scoop the UK prize of &pound;10,000.</p><p><b>Sharon Colman (Visual Communication, 2000)</b> was nominated for an Oscar in 2006 in the Best Short Film (Animated) category for 'Badgered'. Sharon's film was also nominated for the Motion Picture Arts and Sciences 2005 Honorary Foreign Film Award in the student Academy Awards Competition. she also received recognition in the student's section at the Cannes Film Festival.</p><p><b>Simon Starling (MFA 1992) </b>won the UK's leading contemporary art prize - the Turner Prize in 2005. The short-list of four artists included another graduate, Jim Lambie. GSA graduate Douglas Gordon won the Turner Prize in 1996 with Christine Borland (alumna and GSA researcher) short-listed in 1997. Simon was also short-listed in 2004 for the Hugo Boss Prize, the US equivalent <br />of the Turner Prize which was won <br />in 1998 by Douglas Gordon.</p><p>Part-time lecturers at GSA and GSA <b>architecture graduates (1987), Charles Sutherland and Charles Hussey</b> won the RIAS Best Building in Scotland 2003 Award. The award was given for a ferry shelter on Tiree. The pair were also short listed for the Royal Institute of British Architects Stirling Prize, the architecture 'Oscars' for the same project.</p><p>The on-line gallery, Bowieart.com, funded by david bowie, includes work from MFA Programme graduates. Bowieart.com is one of the most visited modern art websites and GSA is one of only two institutions outside London and New York currently on the site.</p><p>GSA graduate <b>Roddy Buchanan</b> won the first Beck's Futures Prize in 2000 - the UK's leading contemporary art prize for young artists. this was followed by graduates <b>Toby Paterson and Rosalind Nashashibi in 2002 and 2003</b> respectively. GSA graduates have been on every Beck's Futures short list and in 2006, three graduates - Sue Tompkins and Blood 'n' Feathers, the collective practice of Lucy Stein and Jo Robertson -were short-listed.</p><p>All of the artists chosen to represent Scotland at the 51st Venice Biennale in 2005, the world's most important festival for contemporary art, were GSA Fine Art graduates - <b>Alex Pollard, </b><br /><b>Joanne Tatham, Tom O'Sullivan and Cathy Wilkes.</b> In 2003, 70% of the artists chosen to represent <br />Scotland at Venice were GSA graduates.</p><p><b>Karen Simpson (Silversmithing + Jewellery)</b> won the Young Designer Silversmith of the Year Award 2005 sponsored by The Goldsmith's Company of London. This was the second year in succession that the award had been won by a GSA student and the fifth time in the 11 years of the Award's existence. Also, six 3rd year GSA students were awarded commendations in 2005, the highest number from one College <br />in the UK.</p><p>GSA <b>Product Design student Douglas Maitland (4th year)</b> was awarded the RSA Design Directions Awards 2005 Grand Prix for his designs for a Praystation, a concept designed to allow people to download absolution from a cubicle in the street.</p><ul><li><b>There's a very different energy in Britain now from the YBA - especially the Glasgow scene: its much more relaxed... less ego: a really generous attitude. </b>Tobias Ostrander Curator, Museo Tamayo Arte Contemporaneo, Mexico City</li></ul><h2>WELCOME TO GLASGOW + SCOTLAND</h2><p>What do you look for in a city? However long your list, the chances are that you will find most of it here in Glasgow.</p><p>Art, culture and creativity abound in Glasgow and students find themselves part of a vibrant and cosmopolitan European city.  </p><p>Most of the national performing arts companies, including the Royal Scottish National Orchestra, Scottish Opera, Scottish Ballet and the BBC Scottish Symphony Orchestra are based in the <br />City and add the numerous cultural venues - the Glasgow Film Theatre, the Centre for Contemporary Arts, the Tron, the Arches, Tramway, Transmission, Street Level, the Lighthouse Centre for Architecture and Design and Glasgow Science Centre - and it's easy to see why Glasgow was recently voted the UK's coolest city and the best base for students and twenty-somethings by the Big Issue Magazine.</p><p>Glasgow is also a city with an "embarrassment of musical riches" according to Time Magazine, being home to bands such as Franz Ferdinand - who played their  first gig at the GSA, El Presidente, Belle and Sebastian and Travis - former students of the School. </p><p>It is also a proud City with a history that intertwines industry and culture, and the city is a living, breathing tribute to the restless energy of its people. Glasgow is not only Scotland's largest city - it is its creative capital, considered to be one of the most important centres in Europe for the visual arts, and home to the largest creative industries sector in the UK outside London and the South East of England.</p><p>In its architecture, its museums, galleries and busy streets, along the River Clyde and in its countless parks and green spaces, the buzz of the place is infectious.  Significantly, in a recent global survey by Mercer Human Resource Consulting, Glasgow was recognised as one of the safest cities in the world and number one in the United Kingdom.</p><p>Glaswegians really know how to enjoy themselves and are renowned for their style and friendly, welcoming attitude.  Glasgow has some of the best clubs and pubs in the UK and is the largest retail centre outside of London. Glasgow's thriving retail, tourism and leisure industries also provide ideal term time employment for students. </p><p>Glasgow is also home to some of Scotland's best sporting facilities and clubs. The city has four football teams - Celtic, Partick Thistle, Queens Park and Rangers, and the national football stadium is at Hampden Park. Other sports are also well catered for and wherever in the city you choose to live, you will not be far from one of Glasgow's many parks and open spaces. </p><p><b>Glasgow is the safest city in the UK and only surpassed for quality of life by London, making it one of the top 60 places in the world to live. </b>Mercer Human Resource Consulting 2005</p><p>Glasgow is a compact city and as a student at the GSA, you are at the heart of it and getting around the City is easy, whether by foot, the extensive cycle routes, or by excellent public transport. Our campus and student residence are situated a short walk from Sauchiehall Street, one of the main pedestrian streets and all that Glasgow has to offer, including arts venues, shops, bars, clubs, restaurants, galleries and museums.</p><p>Scotland's other cities are within easy reach of Glasgow by road and rail and, if you tire of city life, some of the best hill walking, climbing and skiing in the UK is not far away.  The west coast of Scotland, with some of the country's most stunning coast line, is less than an hour away by train or car, as is Loch Lomond - Scotland's largest loch - and both provide excellent opportunities for sailing and other water sports.</p><p>Living in Glasgow, students become part of one of the largest and most vibrant creative communities outside of London. In 2003, Glasgow was awarded European Capital of Sport. This accolade is just one in a long line of prestigious titles the City of Glasgow has won. In 1990 Glasgow was European City of Culture, 1996 was the Year of Visual Arts and in 1999 Glasgow was City of Architecture and Design. At the beginning of 2003, the Paris based Organisation for Economic Cooperation and Development is quoted as saying; "Glasgow is poised to be the Berlin of the next decade".</p><ul><li><b>Glasgow is one of the most exciting music cities in the world.  </b>Time Magazine</li></ul><h2>AN INTERNATIONAL ART SCHOOL</h2><p>If you choose to study in Scotland at The Glasgow School of Art you can look forward to a rich, rewarding and truly memorable experience that will last you a lifetime.</p><p>With students from across the world, the School's cosmopolitan atmosphere provides the perfect climate for creative thinking and for new ideas and friendships to flourish.  </p><p>Students nurture their creative talent within an international context and establish a global network of like-minded individuals that will last a lifetime and such is the GSA's international reputation, a degree from here can help to open the door to a career in the creative industries almost anywhere in the world.  GSA graduates have excellent career and employment prospects. In the Guardian Good University Guide 2005, the Mackintosh School of Architecture scored maximum points for job prospects and it is a similar story across the other disciplines, with a recent study of graduates between 1999 and 2004 finding that 87% were either in employment or self employment.  86% of respondents said their work was related in whole or in part to their degree subject.</p><p>Of course, many graduates, regardless of where in the world they have come from, have no desire to leave Glasgow. Glasgow is now considered to be one of the most important centres in Europe for the visual arts, thought by some to rival London in the importance of the artists who live and work in the city. Glasgow is also home to the largest creative industries sector in the UK outside London and the South East of England and the recently introduced Fresh Talent initiative, allows overseas students to apply to stay and work in Scotland for two years after the end of their programme without the need for a work permit.</p><p>Approximately 19% of our student population of 1600 students come from outwith the UK, studying across all disciplines at undergraduate and postgraduate level. 75% of our non-EU full time international students come from America, China, Norway, Japan, Korea, Singapore, Canada, Malaysia, Hong Kong, Iceland and India and as students, they become fluent in English, the global language of the creative sector, and gain an international perspective which can have a profound influence on their career. </p><p>The GSA has an extensive student and staff exchange programme with over 80 of the worlds leading Art, Design and Architecture schools. Depending on your programme of study, exchanges can last from three month to one academic year and this provides all students with the opportunity to gain an international perspective and enhance their learning experience.</p><p>As a new student, from wherever in the world, you will find Glasgow is a multi-ethnic city, renowned for the warmth and friendship it extends to visitors. The GSA is a supportive environment. We recognise that many of our international students may need extra support especially in the early stages of their studies and have a network of staff to help with specific issues or concerns and fast-track all of our new international student's residential accommodation applications.</p><p><b>FULL-TIME STUDY</b><br />International students applying for undergraduate courses must apply through the Universities and Colleges Admissions Service (UCAS) and more information is given on page 192. </p><p>Applications for all of our postgraduate courses (taught and research) are made directly to the School. </p><p>Please note that you must be proficient in English before we can offer you a place on one of our courses and a minimum TOEFL score of 550 or IELTS score of 6.0 is required. </p><p><b>STUDY ABROAD </b><br />In recent years Study Abroad students have come from America, Canada, Australia, India and Norway. Students from European Union countries have to apply through the Socrates exchange programme.</p><p>Our Study Abroad students find a study placement an immensely satisfying experience, as it broadens and develops their personal studies and life skills, which adds to their credentials when seeking full-time employment.</p><p>Students are normally fully enrolled students at a home college or university and choose to come and study with us for a term, two terms or a full academic year before returning to their home college/university to complete their studies. Guidelines and application forms can be viewed on our website. </p><p><b>EXCHANGE OPPORTUNITIES</b><br />The School welcomes applications from students studying at any of our 80+ partner institutions around the world, all leading art, design and architecture institutions. Application forms are only available to students from their home institution or the GSA International Student Advisor. Incoming and outgoing students (and staff) from over 40 institutions within the EEA may be eligible for <br />financial assistance under the European Socrates Programme.</p><p>The School welcomes applications <br />for all its courses from suitably qualified students from all over the world. </p>
	

	

	

	

	

	

	
	
	
	
	


	
	







</div>


</body>
</html>

	



a 8cis