<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<HTML>
<HEAD>
<!-- TemplateBeginEditable name="doctitle" -->
<TITLE>RRes - e-RA  </TITLE>

<!-- TemplateEndEditable --> 

<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>

<link rel='stylesheet' type='text/css' href='http://www.rothamsted.bbsrc.ac.uk/Includes/NewRResStyle.css'>

<!-- TemplateBeginEditable name="head" -->

<script language="JavaScript" type="text/JavaScript">
<!--
window.focus();
/****************************************************
     AUTHOR: WWW.CGISCRIPT.NET, LLC
     URL: http://www.cgiscript.net
     Use the code for FREE but leave this message intact.
     Download your FREE CGI/Perl Scripts today!
     ( http://www.cgiscript.net/scripts.htm )
****************************************************/
var win=null;
function NewWindow(mypage,myname,w,h,pos,infocus){
if(pos=="random"){myleft=(screen.width)?Math.floor(Math.random()*(screen.width-w)):100;mytop=(screen.height)?Math.floor(Math.random()*((screen.height-h)-75)):100;}
if(pos=="center"){myleft=(screen.width)?(screen.width-w)/2:100;mytop=(screen.height)?(screen.height-h)/2:100;}
else if((pos!='center' && pos!="random") || pos==null){myleft=0;mytop=20}
settings="width=" + w + ",height=" + h + ",top=" + mytop + ",left=" + myleft + ",scrollbars=yes,location=no,directories=no,status=no,menubar=no,toolbar=no,resizable=yes";win=window.open(mypage,myname,settings);
win.focus();}
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
.masamb {
COLOR: #003c23;
background-color: #ffffcc;
FONT-FAMILY: Tahoma, Arial, 'Sans serif';
FONT-SIZE: 8pt;
LETTER-SPACING: normal;
border-top: #003c23 solid 1px;
border-right: #003c23 solid 3px;
border-bottom: #003c23 solid 3px;
border-left: #003c23 solid 1px;
PADDING: 5px;
TEXT-INDENT: 0pt

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

.emphasis{
COLOR: #003333;
background-color: #FFFF99;
FONT-FAMILY: Tahoma, Arial, 'Sans serif';
FONT-SIZE: 10pt;
LETTER-SPACING: normal;
PADDING: 5px;
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
<script language="JavaScript" type="text/JavaScript" src="/Includes/TemplateScriptTop.js"></script>
</HEAD>
<BODY background='http://www.rothamsted.bbsrc.ac.uk/Graphics/InternetBackground.gif' 
onLoad='ConfigurePage();' onLoad=  'window.name('main');' onResize='ConfigurePage();'>

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
<a class="SubMenuLink" href="index.php">e-RA Home</a><br />
<br />

<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=experiments">Classical  and Long-term Experiments</a><br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=datasets">Other Datasets</a><br />
<br />

<br /> 
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="http://www.era.rothamsted.ac.uk/">Get data</a>
<br />
<br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=home&amp;page=papers">Publications</a><br />
<img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=home&amp;page=credits">Credits</a><br />
 <img src='http://www.rothamsted.bbsrc.ac.uk/Graphics/SmallDot.gif' border='0' alt='Bullet point'>
<a class="SubMenuLink" href="index.php?folder=home&amp;page=contact">Contact us</a><br />
<br />
<br />
<!-- TemplateEndEditable -->
</div>

<div class='MainSection' name='MainSection' id='MainSection' onMouseOver="UnHighlightAllCategories(); MM_showHideLayers('MenuSection1','','hide','MenuSection2','','hide','MenuSection3','','hide','MenuSection4','','hide','MenuSection5','','hide','MenuSection6','','hide')"> 

  <!-- TemplateBeginEditable name="MainSectionRegion" -->

<h2>Welcome to e-RA</h2>


<p>The Electronic Rothamsted Archive (e-RA) provides a permanent managed database 
for secure storage of Rothamsted's long term experimental data. Together with the 
accompanying meteorological records, associated documentation and sample archive 
it is a unique historical record from experiments that have measured the effects 
of agricultural practices on soils, crops and associated ecosystems continuously 
for over 150 years. Users not only have easy access to the data, but have specialist 
information available to them as well. </p>
<p>
Note: the information here is available for scientific research, but remains 
the copyright of the Lawes Agricultural Trust. The data held within e-RA is
password-protected. If you are not an employee of Rothamsted Research then access
to data held in e-RA is subject to our <a href="home/eap.doc">Data Access Policy</a></p>
<p>Datasets information and data extraction are made through a <a href="http://www.era.rothamsted.ac.uk/">dedicated interface</a></p>
<p>
Further information about e-RA can be obtained from the <a href="mailto:res era@bbsrc.ac.uk"> e-RA Curator </a>


<h3>Publications</h3>

<p>You can search our publications list for papers related to e-RA, and the classical experiments</p>
<ul>
<LI> <A HREF="index.php?folder=home&amp;page=papers">Bibliography of papers related to the classical and long term experiments.</A>.
</ul>

<h3>Classical Experiments available through e-RA:</h3>

<UL>
<LI> <A HREF="" target="popup" onClick="NewWindow('pix.php?folder=home&amp;page=imagemap', 'popup', 850, 700, 'center'); return false; window.name('Main');">Field Plan and Soil Map of Rothamsted.</A>&nbsp;&nbsp;

<LI> <A HREF="index.php?folder=experiments&amp;page=parkgrass">The Park Grass Experiment.</A>&nbsp;&nbsp;Park Grass yields.

<LI> <A HREF="">Broadbalk Continuous Wheat.</A>&nbsp;&nbsp;Broadbalk wheat yields.


</UL>

<h3>Other Datasets</h3>

<p>e-RA holds data generated by numerous experiments. Access to this data is restricted and done through the e-RA data extraction tool.
TO obtain access, you need to register and obtain a password.</p>
<p>This is a list of some of the experimental data available. </p>
<ul>
<li class="nicelist">Meteorological data for three RRes sites in England (Hertfordshire, Bedfordshire and Suffolk). </li>
<p>
- Rothamsted Meteorological Records. <br />
- Woburn Meteorological Records.     <br />
- Brooms Barn Meteorological Records. <br />
</p>
<li class="nicelist">Meteorological data collected for the <a href="http://www.ecn.ac.uk/">Environmental Change Network (ECN)</a>.
<p>
 - and a  <a href="http://www.rothamsted.bbsrc.ac.uk/aen/ecn/index.htm#climate">graphical interface to the ECN climate data</a> held at Rothamsted.<br />
</p>
<li class="nicelist">GCTE SOMNET database.</li>
<li class="nicelist">Rothamsted Insect Survey Store Catalogue</li>
<li class="nicelist">Integrated Disease Risk Projects (ADAS/LARS)</li>
<p>
- IDR4 - ADAS wheat ear disease data  <br />
- IDR4 - ADAS foliar disease data   <br />
- IDR4 - ADAS stem disease data        <br />
- IDR4 - ADAS growth and green leaf area data  <br />
- IDR4 - ADAS harvest data  <br />
- IDR4 - ADAS met. data              <br />
- IDR - LARS leaf data               <br />
- IDR - LARS lesion proximity data     <br />
- IDR - LARS met. data         <br />
</p>
<li class="nicelist">ADN - Appropriate Dose Network    </li>

</ul>

  <!-- TemplateEndEditable --> 
  
  </div>

<script type="text/javascript" language="JavaScript" src="/Includes/TemplateScriptBottom.js"></script>
</BODY></HTML>


p du  