<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<link rel="stylesheet" type="text/css" href="visio.css"/>
<title>
tas_dec05
</title>
<script type="text/javascript" language="javascript">
function UpdateTooltip(){};
function OnShapeClick(){};
</script>

<script src="gif_1.js" type="text/jscript" language="jscript"></script>

<script type="text/jscript" language="jscript">
	if(parent.isUpLevel)
	{
		location.replace(parent.g_FileList[parent.g_CurPageIndex].PriImage);
	}
</script>



<script type="text/jscript" language="jscript">

var pageID = 0;

var isUpLevel = parent.isUpLevel;
var OnShapeClick = null;
if (!parent.isMac)
{
	OnShapeClick = parent.OnShapeClick;
}

var OnShapeKey = parent.OnShapeKey;
var UpdateTooltip = parent.UpdateTooltip;
var clickMenu = parent.clickMenu;
var toggleMenuDiv = parent.toggleMenuDiv;
var toggleMenuLink = parent.toggleMenuLink;
var GoToPage = parent.GoToPage;


if (parent.isUpLevel)
{

	if (parent.g_FirstPageToLoad != null && parent.g_FirstPageToLoad.length > 0)
	{
		if (parent.g_FileList[parent.g_CurPageIndex].PageID != pageID)
		{
			var fileEntry = parent.g_FileList[parent.g_CurPageIndex];
			var fileToLoad = fileToLoad = fileEntry.PriImage;
			if (fileEntry.SecImage.length > 0)
			{
				fileToLoad = fileEntry.SecImage;
			}

			location.replace(fileToLoad);
		}

		parent.g_FirstPageToLoad = null;
	}


	var viewMgr = new parent.CViewMgr();
	parent.viewMgr = viewMgr;

	viewMgr.SupportsDetails = true;
	viewMgr.SupportsSearch = true;

	viewMgr.put_Location = ViewMgrSetRasterLocation;
	viewMgr.visBBoxLeft = -0.000000;
	viewMgr.visBBoxRight = 11.692913;
	viewMgr.visBBoxBottom = 0.000000;
	viewMgr.visBBoxTop = 8.267717;
	viewMgr.highlightDiv = null;
}

function load ()
{
	if(isUpLevel)
	{
		arrowdiv.innerHTML = '<img id="arrowgif" alt="Shows the location of the selected shape" src="arrow.gif"/>';

		var pageIndex = parent.PageIndexFromID (pageID);
		parent.CurPageUpdate (pageIndex);
	}
}

function unload()
{
	if(isUpLevel)
	{
		viewMgr = null;
		parent.viewMgr = null;
	}
}

window.onload = load;
window.onunload = unload;
document.onclick = clickMenu;

</script>
</head>

<body class="pageView" bgcolor="#FFFFFF">

<div id=arrowdiv style="position:absolute;top:0;left:0;visibility:hidden;z-index:5">
</div>

<div id="menu1" onclick="clickMenu()" class="hlMenu">
</div>

<DIV id=RasterDiv>


<center>
  <IMG id="ConvertedImage" SRC="gif_5.gif" ALT="Academic" name=RasterImage BORDER="0" USEMAP="#visImageMap">
</center>

<MAP NAME="visImageMap">
  <AREA shape="POLYGON" tabindex="1" ALT="Schools Partnership Office" origTitle="Schools Partnership Office" TITLE="Schools Partnership Office"  target="_top" COORDS=" 388,340 453,340 453,307 388,307 388,340" onmouseover="UpdateTooltip(this,0,161)" onfocus="UpdateTooltip(this,0,161)" onclick="return OnShapeClick(0,161);" onkeyup="OnShapeKey(0,161);">
  <AREA shape="POLYGON" tabindex="1" ALT="Media Services" origTitle="Media Services" TITLE="Media Services"  target="_top" COORDS=" 194,291 259,291 259,259 194,259 194,291" onmouseover="UpdateTooltip(this,0,155)" onfocus="UpdateTooltip(this,0,155)" onclick="return OnShapeClick(0,155);" onkeyup="OnShapeKey(0,155);">
  <AREA shape="POLYGON" tabindex="1" ALT="Comenius Centre" origTitle="Comenius Centre" TITLE="Comenius Centre"  target="_top" COORDS=" 65,348 129,348 129,315 65,315 65,348" onmouseover="UpdateTooltip(this,0,148)" onfocus="UpdateTooltip(this,0,148)" onclick="return OnShapeClick(0,148);" onkeyup="OnShapeKey(0,148);">
  <AREA shape="POLYGON" tabindex="1" ALT="Marketing &#38; Recruitment" origTitle="Marketing &#38; Recruitment" TITLE="Marketing &#38; Recruitment"  target="_top" COORDS=" 65,267 129,267 129,234 65,234 65,267" onmouseover="UpdateTooltip(this,0,142)" onfocus="UpdateTooltip(this,0,142)" onclick="return OnShapeClick(0,142);" onkeyup="OnShapeKey(0,142);">
  <AREA shape="POLYGON" tabindex="1" ALT="Quality Support Unit" origTitle="Quality Support Unit" TITLE="Quality Support Unit"  target="_top" COORDS=" 676,257 740,257 740,224 676,224 676,257" onmouseover="UpdateTooltip(this,0,133)" onfocus="UpdateTooltip(this,0,133)" onclick="return OnShapeClick(0,133);" onkeyup="OnShapeKey(0,133);">
  <AREA shape="POLYGON" tabindex="1" ALT="Employer Partnership Office" origTitle="Employer Partnership Office" TITLE="Employer Partnership Office"  target="_top" COORDS=" 676,297 740,297 740,265 676,265 676,297" onmouseover="UpdateTooltip(this,0,127)" onfocus="UpdateTooltip(this,0,127)" onclick="return OnShapeClick(0,127);" onkeyup="OnShapeKey(0,127);">
  <AREA shape="POLYGON" tabindex="1" ALT="Director of Learning and Teaching" origTitle="Director of Learning and Teaching" TITLE="Director of Learning and Teaching"  target="_top" COORDS=" 743,177 743,176 673,176 673,209 743,209 743,187 743,187 743,177 743,177" onmouseover="UpdateTooltip(this,0,122)" onfocus="UpdateTooltip(this,0,122)" onclick="return OnShapeClick(0,122);" onkeyup="OnShapeKey(0,122);">
  <AREA shape="POLYGON" tabindex="1" ALT="Business &#38; Community" origTitle="Business &#38; Community" TITLE="Business &#38; Community"  target="_top" COORDS=" 65,307 129,307 129,275 65,275 65,307" onmouseover="UpdateTooltip(this,0,114)" onfocus="UpdateTooltip(this,0,114)" onclick="return OnShapeClick(0,114);" onkeyup="OnShapeKey(0,114);">
  <AREA shape="POLYGON" tabindex="1" ALT="Director of Development &#38; Centre for New Opportunities" origTitle="Director of Development &#38; Centre for New Opportunities" TITLE="Director of Development &#38; Centre for New Opportunities"  target="_top" COORDS=" 66,211 148,211 148,172 66,172 66,211" onmouseover="UpdateTooltip(this,0,109)" onfocus="UpdateTooltip(this,0,109)" onclick="return OnShapeClick(0,109);" onkeyup="OnShapeKey(0,109);">
  <AREA shape="POLYGON" tabindex="1" ALT="Humanities: English, History, Theology and SPP" origTitle="Humanities: English, History, Theology and SPP" TITLE="Humanities: English, History, Theology and SPP"  target="_top" COORDS=" 498,275 562,275 562,234 498,234 498,275" onmouseover="UpdateTooltip(this,0,91)" onfocus="UpdateTooltip(this,0,91)" onclick="return OnShapeClick(0,91);" onkeyup="OnShapeKey(0,91);">
  <AREA shape="POLYGON" tabindex="1" ALT="SHLN" origTitle="SHLN" TITLE="SHLN"  target="_top" COORDS=" 574,291 639,291 639,259 574,259 574,291" onmouseover="UpdateTooltip(this,0,85)" onfocus="UpdateTooltip(this,0,85)" onclick="return OnShapeClick(0,85);" onkeyup="OnShapeKey(0,85);">
  <AREA shape="POLYGON" tabindex="1" ALT="Psychology (inc Sociology)" origTitle="Psychology (inc Sociology)" TITLE="Psychology (inc Sociology)"  target="_top" COORDS=" 574,251 639,251 639,218 574,218 574,251" onmouseover="UpdateTooltip(this,0,79)" onfocus="UpdateTooltip(this,0,79)" onclick="return OnShapeClick(0,79);" onkeyup="OnShapeKey(0,79);">
  <AREA shape="POLYGON" tabindex="1" ALT="Secondary Education" origTitle="Secondary Education" TITLE="Secondary Education"  target="_top" COORDS=" 388,299 453,299 453,267 388,267 388,299" onmouseover="UpdateTooltip(this,0,73)" onfocus="UpdateTooltip(this,0,73)" onclick="return OnShapeClick(0,73);" onkeyup="OnShapeKey(0,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Primary Education (inc Maths/Science)" origTitle="Primary Education (inc Maths/Science)" TITLE="Primary Education (inc Maths/Science)"  target="_top" COORDS=" 453,219 453,218 388,218 388,259 453,259 453,229 454,229 454,219 453,219" onmouseover="UpdateTooltip(this,0,67)" onfocus="UpdateTooltip(this,0,67)" onclick="return OnShapeClick(0,67);" onkeyup="OnShapeKey(0,67);">
  <AREA shape="POLYGON" tabindex="1" ALT="Media, Film  and Culture" origTitle="Media, Film  and Culture" TITLE="Media, Film  and Culture"  target="_top" COORDS=" 194,251 259,251 259,218 194,218 194,251" onmouseover="UpdateTooltip(this,0,61)" onfocus="UpdateTooltip(this,0,61)" onclick="return OnShapeClick(0,61);" onkeyup="OnShapeKey(0,61);">
  <AREA shape="POLYGON" tabindex="1" ALT="Business/Management &#38; Marketing" origTitle="Business/Management &#38; Marketing" TITLE="Business/Management &#38; Marketing"  target="_top" COORDS=" 275,299 340,299 340,259 275,259 275,299" onmouseover="UpdateTooltip(this,0,55)" onfocus="UpdateTooltip(this,0,55)" onclick="return OnShapeClick(0,55);" onkeyup="OnShapeKey(0,55);">
  <AREA shape="POLYGON" tabindex="1" ALT="Centre for Journalism" origTitle="Centre for Journalism" TITLE="Centre for Journalism"  target="_top" COORDS=" 275,251 340,251 340,218 275,218 275,251" onmouseover="UpdateTooltip(this,0,49)" onfocus="UpdateTooltip(this,0,49)" onclick="return OnShapeClick(0,49);" onkeyup="OnShapeKey(0,49);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Arts and Social Sciences" origTitle="Dean of the Faculty of Arts and Social Sciences" TITLE="Dean of the Faculty of Arts and Social Sciences"  target="_top" COORDS=" 529,171 523,171 523,201 609,201 609,171 606,171 606,171 529,171 529,171" onmouseover="UpdateTooltip(this,0,43)" onfocus="UpdateTooltip(this,0,43)" onclick="return OnShapeClick(0,43);" onkeyup="OnShapeKey(0,43);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Media, Business &#38; Marketing" origTitle="Dean of the Faculty of Media, Business &#38; Marketing" TITLE="Dean of the Faculty of Media, Business &#38; Marketing"  target="_top" COORDS=" 315,171 217,171 217,171 208,171 208,201 326,201 326,171 319,171 319,171 315,171" onmouseover="UpdateTooltip(this,0,37)" onfocus="UpdateTooltip(this,0,37)" onclick="return OnShapeClick(0,37);" onkeyup="OnShapeKey(0,37);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Education" origTitle="Dean of the Faculty of Education" TITLE="Dean of the Faculty of Education"  target="_top" COORDS=" 375,171 366,171 366,201 460,201 460,171 452,171 452,171 375,171 375,171" onmouseover="UpdateTooltip(this,0,12)" onfocus="UpdateTooltip(this,0,12)" onclick="return OnShapeClick(0,12);" onkeyup="OnShapeKey(0,12);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal  (Academic)" origTitle="Assistant Principal  (Academic)" TITLE="Assistant Principal  (Academic)" HREF="gif_1.htm" target="frmDrawing" COORDS=" 342,152 435,152 435,107 342,107 342,152" onmouseover="UpdateTooltip(this,0,1)" onfocus="UpdateTooltip(this,0,1)" onclick="return OnShapeClick(0,1);" onkeyup="OnShapeKey(0,1);">
  <AREA shape="POLYGON" tabindex="1" ALT="" origTitle="" TITLE="" HREF="http://www.tasc.ac.uk/" target="_top" COORDS=" 715,48 718,48 718,44 718,44 718,44 718,44 718,44 719,43 719,43 719,43 719,43 719,43 719,43 719,43 720,43 720,42 720,42 720,42 720,42 720,42 721,42 721,42 721,42 721,42 721,42 722,42 722,43 722,43 722,43 722,43 722,43 723,43 723,43 723,43 723,44 723,44 723,44 723,44 723,44 723,48 726,48 726,37 729,39 729,38 721,30 721,30 720,30 712,38 713,39 715,37 715,48" onmouseover="UpdateTooltip(this,0,17)" onfocus="UpdateTooltip(this,0,17)" onclick="return OnShapeClick(0,17);" onkeyup="OnShapeKey(0,17);">
</MAP>



</DIV>

</body>
</html>



c<r0si