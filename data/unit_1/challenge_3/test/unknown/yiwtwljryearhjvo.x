<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<HTML>
<HEAD>
<!-- TemplateBeginEditable name="doctitle" -->
<TITLE>RRes - Biomathematics and Bioinformatics - Environmetrics </TITLE>

<!-- TemplateEndEditable --> 

<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>

<link rel='stylesheet' type='text/css' href='http://www.rothamsted.bbsrc.ac.uk/Includes/NewRResStyle.css'>

<!-- TemplateBeginEditable name="head" -->

<script language="JavaScript" type="text/JavaScript">
<!--
function wopen(url, name, w, h)
{
// Fudge factors for window decoration space.
 // In my tests these work well on all platforms & browsers.
w += 32;
h += 96;
 var win = window.open(url,
  name, 
  'width=' + w + ', height=' + h + ', ' +
  'location=no, menubar=no, ' +
  'status=no, toolbar=no, scrollbars=no, resizable=no');
 win.resizeTo(w, h);
 win.focus();
}
// -->
</script>
<style>
/*Main HTML Tags Style  When updating styles in here, please also update the styles.php page accordingly...*/
/*IDs*/
#footer {
position: absolute; 
left: 0; bottom: 0; 
width: 585;
}
#masamb {
COLOR: #003c23;
background-color: #e6e8fa;
FONT-FAMILY: Tahoma, Arial, 'Sans serif';
FONT-SIZE: 11pt;
LETTER-SPACING: normal;
PADDING-BOTTOM: 20px;
PADDING-LEFT: 20px;
PADDING-RIGHT: 20px;
PADDING-TOP: 20px;
TEXT-INDENT: 0pt
border-style: thick grey;
position: absolute;
top: 200;
left: 50;
width: 400;
}
/*Classes*/

.infopage {
COLOR: #003c23;
FONT-FAMILY: Tahoma, Arial;
FONT-SIZE: 11pt;
LETTER-SPACING: normal;
MARGIN-left: 150px; 
PADDING-BOTTOM: 5px; 
PADDING-LEFT: 5px;
PADDING-RIGHT: 5px;
PADDING-TOP: 5px; 
TEXT-ALIGN: justify;
TEXT-INDENT: 0pt 
}
.NDLR {
background-color: yellow;
font-size: 8pt;
}
.NewsTick{
COLOR: #003333;
background-color: #FFFF99;
FONT-FAMILY: Tahoma, Arial, 'Sans serif';
FONT-SIZE: 8pt;
LETTER-SPACING: normal;
PADDING-BOTTOM: 5px;
PADDING-LEFT: 5px;
PADDING-RIGHT: 5px;
PADDING-TOP: 5px;
TEXT-INDENT: 0pt
}
.Formula{
COLOR: #003c23;
background-color: #e6e8fa;
FONT-FAMILY: Tahoma, Arial, 'Sans serif';
FONT-SIZE: 12pt;
LETTER-SPACING: normal;
PADDING-BOTTOM: 5px;
PADDING-LEFT: 5px;
PADDING-RIGHT: 5px;
PADDING-TOP: 5px;
TEXT-INDENT: 0pt
TEXT-ALIGN: center;

}
.nicelist {
    margin-left: 5px;
	  margin-bottom: 5px;
    padding-left: 5px;
    list-style: none;      
    background: none; /* undo the background-image */
    list-style-image: url('includes/SmallDot.gif');
    }
	
.nicelist li {

	  margin-left: 15px;
	  margin-bottom: 10px;
    padding-left: 10px;

    padding-right: 15px;
    background-image: url('includes/SmallDot.gif');
    background-repeat: no-repeat;
    background-position: 0 6px;
    }
.arrowlist {
    margin-left: 5px;
    padding-left: 0;
    list-style: none;      
    background: none; /* undo the background-image */
    list-style-image: url('includes/SmallArrow.gif');
    }

.arrowlist li {
    padding-left: 5px;
    background-image: url('includes/SmallArrow.gif');
    background-repeat: no-repeat;
    background-position: 0 6px;
    }

.simplelist
{
  FONT-FAMILY: 'courrier';
  FONT-SIZE: 1em;
  FONT-WEIGHT: bold;
  margin-left: 5px;
  display: list;
  list-style-type: none;
  padding-left: 0px;
}
.UserName
{
  COLOR: #003c23;
  FONT-FAMILY: 'Tahoma' , 'Arial';
  FONT-SIZE: 12pt;
  FONT-STYLE: italic;
  FONT-VARIANT: normal;
  FONT-WEIGHT: 600;
  TEXT-TRANSFORM: capitalize
}
.BC {//Bread Crumbs
  COLOR: #003c23;
  FONT-FAMILY: 'courier';
  FONT-SIZE: 1em;
  FONT-VARIANT: normal;
}
div.floatleft {
  float: left;
  }
  
div.floatleft p {
   text-align: center;
   }


div.floatright {
  float: right;
  }
  
div.floatright p {
   text-align: center;
   }

div.float {
    margin: 2em auto 0 auto;
    width: 550px;
  }

div.float p {
   text-align: center;
   }
/*Form Classes*/
.formbox
{
padding: 5px; margin: 0px auto
}

.row  /*Usually a div: starts a row in a form*/
{
clear: both;
padding-top: 2px;
}

.infolabel {  /*Label in a form : usually a span*/
  COLOR: #666699;
  text-align: right;
  float: left;
  width: 150px;
  FONT-FAMILY: Tahoma, arial;
  FONT-SIZE: 9pt;
  FONT-VARIANT: normal;
  Font-weight: 700;

}
.infothing    { /*Info in a form : usually a span*/
  COLOR: #000099;
  float: left;
  text-align: left;
  FONT-FAMILY: Tahoma, arial;
  FONT-SIZE: 10pt;
  FONT-VARIANT: normal;
  padding-left: 5px;
}
.help    {
  COLOR: #666699;
  background-color: #e6e8fa;
  text-align: left;
  FONT-FAMILY: Tahoma, arial;
  FONT-SIZE: 9pt;
  FONT-VARIANT: normal;
  text-align: left;
  width: 100px;
  padding-left: 2px;

} 
.small    {
  COLOR: #000099;
  text-align: center;
  FONT-FAMILY: Tahoma, arial;
  width: 100%;
  FONT-SIZE: 9pt;
  FONT-style: italic;
  padding-left: 5px;
}



.note    {
  COLOR: #666699;
  text-align: left;
  FONT-FAMILY: Tahoma, arial;
  FONT-SIZE: 9pt;
  FONT-VARIANT: normal;
}

.width75 {
  COLOR: #000099;
  float: left;
  text-align: left;
  width: 175px;
  height: 20px;
  FONT-FAMILY: 'arial narrow', arial;
  FONT-SIZE: 10pt;
  FONT-VARIANT: normal;
  padding-left: 2px;
  overflow:hidden;
}

.motd {
width: 600px;
height:200px;
overflow: scroll;}

.copyright        {
  COLOR: #666699;
  FONT-FAMILY: Arial;
  FONT-SIZE: 8pt;
  FONT-WEIGHT: 300;
  TEXT-DECORATION: none
}
.spacer  { visibility: hidden;}
.hrbottom  {
padding: 0px;
border-bottom: 3px #003c23 solid ;
height: 68px;
}
.areas
{
  COLOR: #666699;
  FONT-FAMILY: Tahoma, Arial;
  FONT-SIZE: 12pt;
  FONT-WEIGHT: bold;
  MARGIN: 0px;
  PADDING-BOTTOM: 1px;
  PADDING-LEFT: 1px;
  PADDING-RIGHT: 1px;
  PADDING-TOP: 1px;
  TEXT-DECORATION: none
}
/*Table for Results...........*/
.borderarea         /*Makes the flat outside border*/
{
  BACKGROUND-COLOR: #003c23;
}
.resulttable
{
  COLOR: #003c23;
  FONT-FAMILY: Tahoma, 'Arial Narrow';
  FONT-SIZE: 80%;
}
.TablePageHeader
{
  BACKGROUND-COLOR: #8D9D96;
}
.rowodd
{
  BACKGROUND-COLOR: #ffffff;
}
.roweven
{
  BACKGROUND-COLOR: #e6e8fa;
}
.content
{
  FONT-FAMILY: Arial, Tahoma;
  FONT-SIZE: smaller;
  LETTER-SPACING: normal;
  MARGIN: 5px;
  PADDING-BOTTOM: 0px;
  PADDING-LEFT: 0px;
  PADDING-RIGHT: 0px;
  PADDING-TOP: 10px;
  TEXT-ALIGN: left;
  TEXT-INDENT: 5pt
  height: 600 em;
  /*BACKGROUND-COLOR: #e6e8fa;*/

}
.mugshot {
float: right;
border: 3px #003c23 solid ;
z-index: 10;
}


/*IDs ...........*/
#description {
    OVERFLOW: auto;
    LEFT: 0px;
    MARGIN: 10px;
    WIDTH: 550px;
    POSITION: absolute;
    height: 240px;
	scrollbar-base-color: #B5C6C6;
	scrollbar-face-color: #B5C6C6; 
	scrollbar-track-color: #B5C6C6; 
	scrollbar-arrow-color: #003c23;
	scrollbar-highlight-color: #B5C6C6;
	scrollbar-3dlight-color: #003c23; 
	scrollbar-shadow-color: #B5C6C6;
	scrollbar-darkshadow-color: #003c23;
}
#themes {
    MARGIN: 10px;
    WIDTH: 250px;
    POSITION: absolute;
    top:240px;
    left: 0px;
}
#support {
float: right;
width:260px;
margin:10px;
 POSITION: absolute;
    top:240px;
    left:250px;

}
#links {
 MARGIN: 10px;
  POSITION: absolute;
    top:370px;
}

/*Links........*/
A.people {
   COLOR: #5f9f9f;
  FONT-SIZE: 2em;
  FONT-WEIGHT: bold;
  TEXT-DECORATION: none
}
A.people:link {
   COLOR: #5f9f9f;
  FONT-SIZE: 1em;
  FONT-WEIGHT: bold;
  TEXT-DECORATION: none
}
A.people:active {
   COLOR: #ffff33;
  FONT-SIZE: 1em;
  FONT-WEIGHT: bold;
  TEXT-DECORATION: none
}
A.people:hover {
   COLOR: #993300;
  FONT-SIZE: 1em;
  FONT-WEIGHT: bold;
  TEXT-DECORATION: underline;
}

A.people:visited {
   COLOR: #5f9f9f;
  FONT-SIZE: 1em;
  FONT-WEIGHT: bold;
  TEXT-DECORATION: none
}


A.toplink:active {
  COLOR: #ffff33;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: normal;
  TEXT-DECORATION: none
}
A.toplink:link
{
  COLOR: #993300;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: 600;
  TEXT-DECORATION: none
}
A.toplink:visited
{
  COLOR: #993300;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: 600;
  TEXT-DECORATION: none
}
A.UserName:active
{
  COLOR: #ffff33;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: normal;
  TEXT-DECORATION: none
}
A.UserName:link
{
  COLOR: #ff6666;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: 600;
  TEXT-DECORATION: none
}
A.UserName:visited
{
  COLOR: #660000;
  FONT-FAMILY: Courier;
  FONT-SIZE: 10pt;
  FONT-WEIGHT: 600;
  TEXT-DECORATION: none
}


.footer {
	position: relative;
	width: 750px;
	left:-10px;
	margin-top:10px;
	border-top: solid 1px #808080;
	border-bottom: solid 1px #808080;
	margin-bottom: 2px;
	background-color: #ffffe8;
	text-align:center;
}


</style>

<!--
ADD any extra style information here
-->

<meta name="description" content="Cereals and arable farming research from Rothamsted Research">

<meta name="keywords" content="cereals, arable crops, iacr, farming, crop science, research institute, wheat, barley, oats, rye, lupins, oilseed rape, sugar beet, biology, energy crops, linseed, bioimaging, biomathematics, soil science, entomology, rothamsted, sustainable farming, classical experiments, long term experiments, insect survey, rothamsted international">



<!-- TemplateEndEditable --> 
<script language="JavaScript" type="text/JavaScript" src="environmetrics//Includes/TemplateScriptTop.js"></script>
</HEAD>
<BODY background='http://www.rothamsted.bbsrc.ac.uk/Graphics/InternetBackground.gif' 
onLoad='ConfigurePage();' onResize='ConfigurePage();'>

<div id="LeftSection" tabindex="1" onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide','MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide','MenuSection6','','hide')">
<a href='http://www.rothamsted.bbsrc.ac.uk/index.html'>
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/LogoLarge.gif' alt='Click for RRes home page' width="148" height="195" border='0' style="position: absolute; top: 10px; left: 10px;"> 
</a> 

<form action='http://www.rothamsted.bbsrc.ac.uk/cgi-bin/htsearch' method='post' name='RResSearch' id='RResSearch'>
    <input type='hidden' name='method' value='and'>
    <input type='hidden' name='format' value='builtin-long'>
    <input type='hidden' name='sort' value='score'>
    <input type='hidden' name='restrict' value=''>
    <input type='hidden' name='exclude' value=''>
    <input type='hidden' name='config' value='rothamsted'>
    <input class='SearchBox' type='text' name='words' id='words' value='Search website' 
onClick='ClearSearchBox()' tabindex="2" title="Type a search term here and press enter">
<input type="submit" value="Go!" class="GoButton" />
</form>

<div tabindex="4" id="ScienceLinks" style="position:absolute; left:10px; top:228px; width:148px; height:18px;" 
class="Button" onMouseOver="className='ButtonHover'" onMouseOut="className='Button'" 
onClick="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Links.html');return document.MM_returnValue" 
onKeyPress="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Links.html');return document.MM_returnValue" 
>Science 
  Links</div>

<div tabindex="5" id="PrinterFriendlyVersion" style="position:absolute; left:10px; top:247px; width:148px; height:18px;" 
class="Button" onMouseOver="className='ButtonHover'" onMouseOut="className='Button'" 
onClick="PrintVersion();" onKeyPress="PrintVersion();" >Printer 
  friendly version</div>

</div>

<div tabindex="6" id="Disclaimer" style="position:absolute; left:10px; bottom:30px; width:148px; height:18px; visibility: hidden;" 
class="Button" onMouseOver="className='ButtonHover'" onMouseOut="className='Button'" 
onClick="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Disclaimer.html');return document.MM_returnValue" 
onKeyPress="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Disclaimer.html');return document.MM_returnValue" 
>Disclaimer</div>

<div tabindex="7" id="MakeComments" style="position:absolute; left:10px; bottom:10px; width:148px; height:18px; visibility: hidden;" 
class="Button" onMouseOver="className='ButtonHover'" onMouseOut="className='Button'" 
onClick="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Breedquack.html');return document.MM_returnValue"
onKeyPress="MM_goToURL('parent','http://www.rothamsted.bbsrc.ac.uk/corporate/Breedquack.html');return document.MM_returnValue"
>Make comments</div>



<div class='Category' style='left: 160px;' id="Category1" tabindex="8"
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','show','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','show','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
>About us</div>

<div class='Category' style='left: 260px;' id="Category2" tabindex="19" 
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','show',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','show',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
>Resources</div>

<div class='Category' style='left: 360px;' id="Category3" tabindex="30" 
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','show','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','show','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
>Research</div>

<div class='Category' style='left: 460px;' id="Category4" tabindex="41"
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','show','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','show','MenuSection5','','hide',
'MenuSection6','','hide'); this.className='CategoryHover'"
>Into practice</div>

<div class='Category' style='left: 560px;' id="Category5" tabindex="52" 
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','show',
'MenuSection6','','hide'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','show',
'MenuSection6','','hide'); this.className='CategoryHover'"
>For the public</div>

<div class='Category' style='left: 660px;' id="Category6" tabindex="62" 
onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','show'); this.className='CategoryHover'"
onFocus="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide',
'MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide',
'MenuSection6','','show'); this.className='CategoryHover'"
>Careers</div>

<div id="MenuSection1" class="MenuDetails" style="z-index:1; visibility: hidden;"> 

  <blockquote style="position:relative; left: -40px; "> <a class="MainMenuLink" tabindex="9" href="http://www.rothamsted.bbsrc.ac.uk/corporate/Introduction.html">Mission of Rothamsted Research</a><br />
    <a class="MainMenuLink" tabindex="10" href="http://www.rothamsted.bbsrc.ac.uk/corporate/Origins.html">Origins of Rothamsted Research</a><br />
    <a class="MainMenuLink" tabindex="10" href="http://www.rothamsted.bbsrc.ac.uk/corporate/CompanyInformation.html">Company Information</a><br />	
    <a class="MainMenuLink" tabindex="11" href="http://www.rothamsted.bbsrc.ac.uk/corporate/ContactUs.html">Contact Us</a><br />
    <a class="MainMenuLink" tabindex="12" href="http://www.rothamsted.bbsrc.ac.uk/corporate/AnnualReports.html">Annual Reports</a><br />
    <a class="MainMenuLink" tabindex="13" href="http://www.rothamsted.bbsrc.ac.uk/corporate/PressReleases/PressOffice.html">Press Office</a><br />
    <a class="MainMenuLink" tabindex="14" href="http://www.rothamsted.bbsrc.ac.uk/corporate/Location.html">Directions And Map of Campus</a><br />
    <a class="MainMenuLink" tabindex="15" href="http://www.rothamsted.bbsrc.ac.uk/corporate/OwnershipAndFunding.html">Ownership and Funding</a><br />
	<a class="MainMenuLink" tabindex="15" href="http://www.rothamsted.bbsrc.ac.uk/corporate/LawesAgriculturalTrust.html">Lawes Agricultural Trust</a><br />
    <a class="MainMenuLink" tabindex="16" href="http://www.rothamsted.bbsrc.ac.uk/corporate/Strategy.html">The Next Decade</a><br />
	    <a class="MainMenuLink" tabindex="16" href="http://www.rothamsted.bbsrc.ac.uk/corporate/StrategicPlan.html">Strategic Plan 2005-2010</a><br />
    <a class="MainMenuLink" tabindex="17" href="http://www.rothamsted.bbsrc.ac.uk/corporate/SeniorManagement.html">Senior Management</a><br />
    <a class="MainMenuLink" tabindex="18" href="http://www.rothamsted-international.org">Rothamsted International</a> </blockquote>
</div>

<div id="MenuSection2" class="MenuDetails" style="z-index:2; visibility: hidden;"> 
  <!--<h4>Resources</h4>-->
  <blockquote style="position:relative; left: 50px; "> <a class="MainMenuLink" tabindex="20" href="http://www.rothamsted.bbsrc.ac.uk/resources/ResourcesAtRRes.html">Resources 
    at Rothamsted Research</a><br />
    <a class="MainMenuLink" tabindex="21" href="http://www.rothamsted.bbsrc.ac.uk/resources/RResPromo.html">Rothamsted Research Promotional 
    video (18Mb)</a><br />
    <a class="MainMenuLink" tabindex="22" href="http://www.rothamsted.bbsrc.ac.uk/resources/LongTermExperiments.html">Long Term Experiments</a><br />
	    <a class="MainMenuLink" tabindex="22" href="http://www.rothamsted.bbsrc.ac.uk/resources/ClassicalExperiments.html">Classical Experiments</a><br />
	    <a class="MainMenuLink" tabindex="23" href="http://www.rothamsted.bbsrc.ac.uk/eRA/ ">Electronic Rothamsted Archive </a><br />
    <a class="MainMenuLink" tabindex="23" href="http://www.rothamsted.bbsrc.ac.uk/resources/TheRothamstedArchive.html">Rothamsted Archive </a><br />
    <a class="MainMenuLink" tabindex="24" href="http://www.rothamsted.bbsrc.ac.uk/resources/library/">Rothamsted Library</a><br />
    <a class="MainMenuLink" tabindex="25" href="http://www.rothamsted.bbsrc.ac.uk/resources/ConferenceFacilities.html">Conference Facilities</a><br />
    <a class="MainMenuLink" tabindex="26" href="http://www.rothamsted.bbsrc.ac.uk/resources/rmlmanor/index.htm">Rothamsted Manor</a><br />
    <a class="MainMenuLink" tabindex="27" href="http://www.rothamsted.bbsrc.ac.uk/resources/RothamstedFarms.html">Rothamsted Farms</a><br />
    <a class="MainMenuLink" tabindex="28" href="http://www.rothamsted.bbsrc.ac.uk/resources/TimeLapse.html">Time-lapse Video of the Construction of the Centenary Building</a><br />
    <a class="MainMenuLink" tabindex="29" href="http://www.rothamsted.bbsrc.ac.uk/resources/CentenaryOpening.html">Photo Gallery of the Opening of the Centenary Building</a> <br />
    <a class="MainMenuLink" tabindex="30" href="http://www.rothamsted.bbsrc.ac.uk/aen/ecn/">Local Weather and the Environmental Change Network</a> 	
	</blockquote>
</div>

<div id="MenuSection3" class="MenuDetails" style="z-index:3; visibility: hidden;"> 
  <!--<h4>Research</h4>-->
  <blockquote style="position:relative; left: 150px; "> 
  <!--<a class="MainMenuLink" tabindex="30" href="http://www.rothamsted.bbsrc.ac.uk/Research/Centres.php">Research Centres</a><br />-->
  <a class="MainMenuLink" tabindex="30" href="http://www.rothamsted.bbsrc.ac.uk/Research/Centres/">Research Centres</a><br />  
  <a class="MainMenuLink" tabindex="30" href="http://www.rothamsted.bbsrc.ac.uk/Research/ResearchOverview.html">Research Overview</a><br />
     <a class="MainMenuLink" tabindex="31" href="http://www.rothamsted.bbsrc.ac.uk/Research/RResQualityStatement.pdf">Rothamsted Research Quality Statement</a> (PDF)<br />
    <a class="MainMenuLink" tabindex="32" href="http://www.rothamsted.bbsrc.ac.uk/Research/FeaturedProjects.html">Featured Projects</a><br />
    <a class="MainMenuLink" tabindex="33" href="http://www.rothamsted.bbsrc.ac.uk/Research/Conferences.html">Conferences and Meetings</a> <br />
	 <a class="MainMenuLink" tabindex="33" href="http://www.rothamsted.bbsrc.ac.uk/Research/Publications/">Publications</a> <br />
	
	<b>Research Departments:</b><br />
    <a class="MainMenuLink" tabindex="34" href="http://www.rothamsted.bbsrc.ac.uk/broom/">Applied Crop Sciences</a> (Broom's Barn)<br />
    <a class="MainMenuLink" tabindex="35" href="http://www.rothamsted.bbsrc.ac.uk/bch/">Biological Chemistry</a><br />
	<a class="MainMenuLink" tabindex="36" href="http://www.rothamsted.bbsrc.ac.uk/bab/">Biomathematics and Bioinformatics</a><br />		
    <a class="MainMenuLink" tabindex="37" href="http://www.rothamsted.bbsrc.ac.uk/pie/">Plant and Invertebrate Ecology</a><br />
    <a class="MainMenuLink" tabindex="38" href="http://www.rothamsted.bbsrc.ac.uk/ppi/">Plant Pathology and Microbiology</a><br />
    <a class="MainMenuLink" tabindex="39" href="http://www.rothamsted.bbsrc.ac.uk/cpi/">Plant Science</a><br />
	
    <a class="MainMenuLink" tabindex="40" href="http://www.rothamsted.bbsrc.ac.uk/aen/">Soil Science</a><br />
    <!--<a class="MainMenuLink" tabindex="39" href="http://www.rothamsted.bbsrc.ac.uk/Research/Posters.html">Scientific posters</a><br />-->
  </blockquote>
</div>

<div id="MenuSection4" class="MenuDetails" style="z-index:4; visibility: hidden; text-align:right;"> 
  <!--<h4>Into practice</h4>-->
  <blockquote style="position:relative; right: 150px; "> <a class="MainMenuLink" tabindex="41" href="http://www.rothamsted.bbsrc.ac.uk/intopractice/Impact.html">Impact Over the Past 30 Years</a><br />
	   <a class="MainMenuLink" tabindex="42" href="http://www.rothamsted.bbsrc.ac.uk/intopractice/ClimateChange.html">Climate Change and Land Management</a><br />

    <a class="MainMenuLink" tabindex="43" href="http://www.rothamsted.bbsrc.ac.uk/intopractice/AssociatedCompanies.html">Associated Companies</a><br />
    <a class="MainMenuLink" tabindex="44" href="http://www.rothamsted.bbsrc.ac.uk/broom/sbrindex.html">Sugar Beet Research at Broom's Barn</a><br />
    <a class="MainMenuLink" tabindex="45" target="_blank" href="http://www.rothra.org/">Rothamsted 
    Research Association (formerly ARIA)</a><br />
    <a class="MainMenuLink" tabindex="46" href="http://www.rothamsted.ac.uk/insect-survey/STAphidBulletin.php">Rothamsted Insect Survey Aphid Bulletin</a><br />
    <a class="MainMenuLink" tabindex="47" href="http://www.rothamsted.bbsrc.ac.uk/pie/wowp/">Weeds or Wild Plants?</a><br />
    <a class="MainMenuLink" tabindex="48" href="http://www3.res.bbsrc.ac.uk/leafspot/">Light Leafspot Forecast</a><br />
    <a class="MainMenuLink" tabindex="49" href="http://www.rothamsted.bbsrc.ac.uk/aen/sundial/sundial.htm">SUNDIAL (SimUlation of Nitrogen 
    Dynamics In Arable Land)</a><br />
    <a class="MainMenuLink" tabindex="50" href="http://www.rothamsted.bbsrc.ac.uk/aen/rothlime/">RothLime (Rothamsted Lime Requirement Model)</a><br /><a class="MainMenuLink" tabindex="51" href="http://www.rothamsted.bbsrc.ac.uk/intopractice/Biomarket.html">Biomarket</a><br />
    <a class="MainMenuLink" tabindex="51" href="http://www.dessac.iacr.ac.uk">DESSAC - DEcision Support System for Arable Crops</a> 
	</blockquote>
</div>

<div id="MenuSection5" class="MenuDetails" style="z-index:5; visibility: hidden; text-align:right;"> 
  <!--<h4>For the public</h4>-->
  <blockquote style="position:relative; right: 50px;"> 
<!--  <a class="MainMenuLink" tabindex="52" href="http://www.rothamsted.bbsrc.ac.uk/forthepublic/MailingListForm.php">Join our mailing list</a><br />  -->
  
  <a class="MainMenuLink" tabindex="53" href="http://www.rothamsted.bbsrc.ac.uk/forthepublic/PublicEvents.html">Public 
    Events</a><br />
    <a class="MainMenuLink" tabindex="54" href="http://www.rothamsted.bbsrc.ac.uk/forthepublic/EventsForSchools.html">Resources for 
    Schools</a><br />
	
	    <a class="MainMenuLink" tabindex="55" href="http://www.rothamsted.bbsrc.ac.uk/forthepublic/ScienceSnapshots.html">Science Snapshots</a><br />

    <a class="MainMenuLink" tabindex="56" href="http://www.rothamsted.bbsrc.ac.uk/forthepublic/Exhibitions.html">Rothamsted Exhibitions</a><br />
    <a class="MainMenuLink" tabindex="57" href="http://www.rothamsted.bbsrc.ac.uk/pie/DeBug/">DeBug - Interactive Insects</a><br />
	

    <a class="MainMenuLink" tabindex="58" href="http://www.rothamsted.bbsrc.ac.uk/notebook/index.html">Molecular Biology Notebook (teaching 
    resource)</a><br />

    <!--<a class="MainMenuLink" tabindex="59" href="http://www.rothamsted.bbsrc.ac.uk/sportsday/">BBSRC sports day 2004</a><br />-->


    <strong>Links external to Rothamsted Research:</strong> <br />
	
    <a class="MainMenuLink" tabindex="59" target="_blank" href="http://www.bbsrc.ac.uk/life/buzz/Welcome.html">The 
    Buzz of Science</a><br />
    <a class="MainMenuLink" tabindex="60" target="_blank" href="http://www.bbsrc.ac.uk/life/comic/index.html">Science 
    Stories Comic Book </a><br />
    <a class="MainMenuLink" tabindex="61" target="_blank" href="http://www.bbsrc.ac.uk/life/zones/Welcome.html">Zones 
    of Inhibition. Science, Art and Fungi</a> </blockquote>
</div>

<div id="MenuSection6" class="MenuDetails" style="z-index:6; visibility: hidden; hidden; text-align:right;"> 
  <!--<h4>Careers</h4>-->
  <blockquote style="position:relative; right: -40px;"> 
  <a class="MainMenuLink" tabindex="63" href="http://www.rothamsted.bbsrc.ac.uk/careers/vacancies/Vacancies.html">Vacancies</a><br />
  
 <a class="MainMenuLink" tabindex="63" href="http://www.rothamsted.bbsrc.ac.uk/careers/vacancies/Studentships.html">PhD Studentships</a><br />
  
    <a class="MainMenuLink" tabindex="64" href="http://www.rothamsted.bbsrc.ac.uk/careers/WhyChooseRRes.html">Why Choose Rothamsted?</a><br />
    <a class="MainMenuLink" tabindex="65" href="http://www.rothamsted.bbsrc.ac.uk/careers/AboutRRes.html">About Rothamsted</a><br />
    <a class="MainMenuLink" tabindex="66" href="http://www.rothamsted.bbsrc.ac.uk/careers/OtherSites.html">Other Sites</a><br />
    <a class="MainMenuLink" tabindex="67" href="http://www.rothamsted.bbsrc.ac.uk/careers/OtherFacilities.html">Other Facilities Available</a><br />
    <a class="MainMenuLink" tabindex="68" href="http://www.rothamsted.bbsrc.ac.uk/careers/LearningResources.html">Learning Resources</a><br />
    <a class="MainMenuLink" tabindex="69" href="http://www.rothamsted.bbsrc.ac.uk/careers/StaffSupport.html">Staff Support and Sports 
    and Social Activities</a><br />
    <a class="MainMenuLink" tabindex="70" href="http://www.rothamsted.bbsrc.ac.uk/careers/Accommodation.html">Accommodation</a><br />
    <a class="MainMenuLink" tabindex="71" href="http://www.rothamsted.bbsrc.ac.uk/careers/PostGraduateProspectus.html">Postgraduate Information</a><br />
    <a class="MainMenuLink" tabindex="72" href="http://www.rothamsted.bbsrc.ac.uk/careers/PhDStudentPolicy.html">PhD policy</a> </blockquote>
</div>



<div class='RightImageSection' name='RightImageSection' id='RightImageSection' onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide','MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide','MenuSection6','','hide')"> 
  <img src='' name='RandomImage' width='200' height='550' id='RandomImage' alt='Random image'> 
</div>
<div id="SubMenuSection" class="SubMenuSection">
<!-- TemplateBeginEditable name="SubmenuRegion" -->

<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="/bab/index.html">BAB home page</a>
<div align="center"><strong>Themes</strong></div>
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=bioinformatics">Bioinformatics </a>
 <br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=biostatistics">Statistics
</a><br /> 
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=environmetrics">Environmetrics</a><br />

<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=modelling">Mathematical Modelling </a><br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=biostatistics">Statistical Consulting and Training</a><br />



<div align="center"><strong>Extras</strong></div>
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=home&amp;page=conferences">Conferences</a><br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="http://www.rothamsted.bbsrc.ac.uk/notebook/">Molecular Biology Notebook</a><br />


<div align="center"><strong>Contact Us</strong></div>

<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=home&amp;page=people">Who's who in BAB</a><br />
<!-- TemplateEndEditable --> 
</div>

<div class='MainSection' name='MainSection' id='MainSection' onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide','MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide','MenuSection6','','hide')"> 

  <!-- TemplateBeginEditable name="MainSectionRegion" -->

 <h2>Environmetrics</h2>



<p>We are interested in the spatial variation of environmental processes over a very wide range of spatial scales.  Many 
factors cause variation over all these scales, and this creates challenges whether we wish</p>

<ul>
<li class="nicelist">(i)	to map or monitor the environment or
<li class="nicelist">(ii)	to predict the response of a system, such as a cropped soil, to different kinds of management  
by modelling or experimentation.
 </ul>
 

<p>Our research focuses on mathematical and statistical ways of modelling spatial variation that are applicable to these 
problems.</p>

<div class="newstick"><b>New</b>: A recent <a href="http://www.nature.com/news/2005/050905/full/050905-8.html" target="out">paper in Nature (8th
September 2005)</a>, in which we were collaborators with the National Soil Resources Institute, has estimated
that the soils of the United Kingdom have lost some 13 million tonnes of carbon a year from 
1978 to 2003, approximately the amount by which Britain has reduced its carbon emissions 
from the base level that was set in 1990.

</div>

<div class="float">
<img src="environmetrics/environmetrics1.jpg" alt="Sampling to monitor changes in organic carbon content of the soil">
<p><b>Sampling to monitor changes in organic carbon content of the soil</b></p>

</div>

<div class="float">
<img src="environmetrics/environmetrics2.jpg" alt="Experiments on spatial variation of the nitrogen response of cereals.">
<p><b>Experiments on spatial variation of the nitrogen response of cereals.</b></p>

</div>



<h3>Staff</h3>
<ul>
<li class="nicelist">Dr Murray Lark </li>
<li class="nicelist">Prof. Richard Webster (Senior Research Fellow)   </li>
<li class="nicelist">Dr Ben Marchant </li>
<li class="nicelist">Dr Alice Milne </li>
<li class="nicelist">Dr Matthew Pringle </li>
<li class="nicelist">Dr Thomas Bishop   </li>
<li class="nicelist">Mr Thomas Orton       </li>
<li class="nicelist">Miss Ying Li (PhD student)     </li>
<li class="nicelist">Dr Ron Corstanje</li>
</ul>
<h3>Collaborations</h3>

<p>As well as collaborations within Rothamsted we have active collaborations with staff at the</p>
<ul>

<li class="nicelist">British Geological Survey,  </li>
<li class="nicelist">the National Soil Resources Institute (Cranfield University),  </li>
<li class="nicelist">the New South Wales Agricultural Research Institute (Wagga Wagga), </li>
<li class="nicelist">Wageningen University,     </li>
<li class="nicelist">the University of Reading,   </li>
<li class="nicelist">the University of Plymouth (Coastal Engineering),  </li>
<li class="nicelist">the University of Sydney and   </li>
<li class="nicelist">the University of Nebraska. </li>
 </ul>
<p>We are active within the <a href="http://www.pedometrics.org/">Pedometrics Commission of the International Union of Soil Sciences</a></p>


<h4>Core Problems.</h4>

<p>Geostatistical methods have been used by environmental scientists over the last 25 to 30 years for estimating spatially 
correlated variables at unsampled locations or over larger regions (blocks).  Geostatistics uses a model of the spatial 
structure of  variability, called the variogram, as a basis for optimizing such estimates.  We are particularly interested 
in problems associated with the estimation of the variogram in difficult cases such as where the variable of interest has a 
strong deterministic trend or where it consists of both continuous variation and the discrete effects of point contamination 
(Lark, 2003).</p>

<p>Several of our externally funded projects have developed out of this core interest.  For example, past research on 
optimizing spatial sampling for estimation of the variogram is currently being developed into a method for <a href="index.php?folder=environmetrics&amp;page=environmetrics1">adaptive spatial
sampling</a> .  We are also interested in how mechanistic models that predict environmental variables can best be deployed
along with observations for spatial prediction and temporal monitoring.</p>

<p>The assumptions of geostatistics fail when the variability of a property is not uniform in space but changes, perhaps from one part of the landscape to another.  Here we have played a leading role in the application of the wavelet transform to environmental problems.  We have developed inferential methods for detecting change in variation and covariation of properties (Lark and Webster, 2001) and gained insight into the underlying sources of variation, and the implications for how to sample variables or how to predict them with mathematical models (Milne et al., 2005).</p>


<h3>Applications </h3>

<p>Our methods have been applied in a range of projects, funded by BBSRC, Defra and the Home-Grown Cereals Authority.  We have studied factors that control nitrous oxide emission from arable soils using wavelet techniques, and we are also applying these to spatio-temporal analysis of beach profiles to illuminate problems in coastal engineering.  We have studied the spatial variation of crop requirement for nitrogen at within-field scales using geostatistically based methods for analysis of data from novel experimental methods.  Our interests in robust geostatistics have equipped us to contribute to work for Defra on the design of monitoring schemes for the assessment of changes in soil quality over time.</p>


<p>Our research includes: </p>
<ul>
<li class="nicelist"><a href="index.php?folder=environmetrics&amp;page=environmetrics1">Adaptive Sampling</a></li>
<li class="nicelist"><a href="index.php?folder=environmetrics&amp;page=environmetrics2">Spatial analysis of model error</a></li>
<li class="nicelist"><a href="index.php?folder=environmetrics&amp;page=environmetrics3">Landscape scale experiments</a></li>
<li class="nicelist"><a href="index.php?folder=environmetrics&amp;page=environmetrics4">Boundary line analysis</a></li>
<li class="nicelist"><a href="index.php?folder=environmetrics&amp;page=environmetrics5&amp;group=environmetrics">General method to 'scale up' process models</a> </li>

</ul>
<h3>Recent publications</h3>
<ul>
<li class="nicelist">Bishop, T.F.A. & McBratney, A.B. (2001).  A comparison of prediction methods for the creation of field-extent soil property maps.  Geoderma  103, 151-162.</li>

<li class="nicelist">Bishop, T.F.A. & McBratney, A.B. (2001).  Measuring the quality of digital soil maps using information criteria.  Geoderma 103, 97-113.                        </li>

<li class="nicelist">Bishop, T.F.A. & McBratney, A.B. (2002).  Creating field extent digital elevation models for precision agriculture.  Precision Agriculture  3, 37-46.</li>

<li class="nicelist">Bosch, E.H., Oliver, M.A. & Webster, R. (2004).  Wavelets and the generalization of the variogram.  Mathematical Geology  36, 147-186.</li>

<li class="nicelist">Heuvelink, G.B.M. & Webster, R.  (2001).  Modelling soil variation: past, present and future.  Geoderma  100, 269-301.</li>

<li class="nicelist">Lark, R.M. (2003) Two robust estimators of the cross-variogram for multivariategeostatistical analysis of soil properties. European Journal of Soil Science 54, 187-201.</li>

<li class="nicelist">Lark, R.M. (2005) Exploring scale-dependent correlation of soil properties by nested sampling.  European Journal of Soil Science 56</li>

<li class="nicelist">Lark, R.M. & Webster, R. (2001) Changes in variance and correlation of soil properties with scale and location: analysis using an adapted maximal overlap discretewavelet transform. European Journal of Soil Science 52, 547-562.</li>

<li class="nicelist">Marchant B.P.  (2003)  Review Paper: Time-frequency analysis for biosystems engineering. Biosytems Engineering  85, 261-281.</li>

<li class="nicelist">Marchant, B.P & Lark, R.M.  (2004)  Estimating variogram uncertainty. Mathematical Geology  36, 867-898.</li>

<li class="nicelist">Marchant B.P. &  Norbury J. (2002) Discontinuous travelling wave solutions for certain hyperbolic systems. IMA Journal of Applied Mathematics 67, 201-224.</li>

<li class="nicelist">Milne A.E.,  Paveley N.D., Audsley E. & Livermore P.A. (2003) Wheat canopy model for use in disease management decision support systems.  Annals of Applied Biology 143, 265-274</li>

<li class="nicelist">Milne, A.E. & Chalabi, Z.S. (2001) Control analysis of the Rose-Hindmarsh model for neural activity. IMA Journal of Mathematics Applied in Medicine and Biology, 8, 53-75</li>

<li class="nicelist">Milne, A. E.,  Lark, R. M., Addiscott, T. M., Goulding, K. W. T., Webster, C. P.,  O'Flaherty,  S.  (2005)  Wavelet analysis of the scale and locationdependent correlation of modelled and measured nitrous oxide emissions from soil.  European Journal of Soil Science 56</li>

<li class="nicelist">Parsons, D.J., Orton, T.G., D'Souza, J., Moore, A., Jones R. & Dodd C.E.R.  (2005).  A comparison of three modelling approaches for quantitative risk assessment using the case study of Salmonella spp in poultry meat. International Journal of Food Microbiology 98, 35-51.</li>

<li class="nicelist">Pringle, M.J., Cook, S.E. & McBratney, A.B. (In press).  Field-scale experiments for site-specific crop management.  Part I: Design considerations. Precision Agriculture.</li>

<li class="nicelist">Pringle, M.J., McBratney, A.B. & Cook, S.E. (In press).  Field-scale experiments for site-specific crop management.  Part II: A geostatistical analysis. Precision Agriculture.</li>

<li class="nicelist">Pringle M.J., McBratney A.B., Whelan B.M., & Taylor J.A. (2003).  A preliminary approach to assessing the opportunity for site-specific crop management in a field, using yield monitor data.  Agricultural Systems, 76, 273-292.</li>

<li class="nicelist">Webster, R. & Maestre, F.T.  (2004).  Spatial analysis of semi-arid patchy vegetation by the cumulative distribution of patch boundary spacings and transition probabilities.  Environmental and Ecological Statistics  11, 257-281.</li>

<li class="nicelist">Webster, R. & Payne, R.W.  (2002).  Analysing repeated measurements in soil monitoring and experimentation.  European Journal of Soil Science  53, 1-13.</li>

</ul>
  <!-- TemplateEndEditable --> 
  
  </div>

<script type="text/javascript" language="JavaScript" src="/Includes/TemplateScriptBottom.js"></script>
</BODY></HTML>


i"acn'vt>peh