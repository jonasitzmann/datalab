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

var pageID = 6;

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
  <IMG id="ConvertedImage" SRC="gif_2.gif" ALT="Resources" name=RasterImage BORDER="0" USEMAP="#visImageMap">
</center>

<MAP NAME="visImageMap">
  <AREA shape="POLYGON" tabindex="1" ALT="Building and Estate Office" origTitle="Building and Estate Office" TITLE="Building and Estate Office"  target="_top" COORDS=" 180,267 245,267 245,234 180,234 180,267" onmouseover="UpdateTooltip(this,6,109)" onfocus="UpdateTooltip(this,6,109)" onclick="return OnShapeClick(6,109);" onkeyup="OnShapeKey(6,109);">
  <AREA shape="POLYGON" tabindex="1" ALT="Student Accommodation" origTitle="Student Accommodation" TITLE="Student Accommodation"  target="_top" COORDS=" 489,307 554,307 554,275 489,275 489,307" onmouseover="UpdateTooltip(this,6,97)" onfocus="UpdateTooltip(this,6,97)" onclick="return OnShapeClick(6,97);" onkeyup="OnShapeKey(6,97);">
  <AREA shape="POLYGON" tabindex="1" ALT="Domestic Services" origTitle="Domestic Services" TITLE="Domestic Services"  target="_top" COORDS=" 489,267 554,267 554,234 489,234 489,267" onmouseover="UpdateTooltip(this,6,91)" onfocus="UpdateTooltip(this,6,91)" onclick="return OnShapeClick(6,91);" onkeyup="OnShapeKey(6,91);">
  <AREA shape="POLYGON" tabindex="1" ALT="Commercial Services" origTitle="Commercial Services" TITLE="Commercial Services"  target="_top" COORDS=" 570,307 635,307 635,275 570,275 570,307" onmouseover="UpdateTooltip(this,6,79)" onfocus="UpdateTooltip(this,6,79)" onclick="return OnShapeClick(6,79);" onkeyup="OnShapeKey(6,79);">
  <AREA shape="POLYGON" tabindex="1" ALT="Catering Service" origTitle="Catering Service" TITLE="Catering Service"  target="_top" COORDS=" 570,267 635,267 635,234 570,234 570,267" onmouseover="UpdateTooltip(this,6,73)" onfocus="UpdateTooltip(this,6,73)" onclick="return OnShapeClick(6,73);" onkeyup="OnShapeKey(6,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Library" origTitle="Library" TITLE="Library"  target="_top" COORDS=" 380,267 445,267 445,234 380,234 380,267" onmouseover="UpdateTooltip(this,6,49)" onfocus="UpdateTooltip(this,6,49)" onclick="return OnShapeClick(6,49);" onkeyup="OnShapeKey(6,49);">
  <AREA shape="POLYGON" tabindex="1" ALT="Corporate Services" origTitle="Corporate Services" TITLE="Corporate Services"  target="_top" COORDS=" 303,267 368,267 368,234 303,234 303,267" onmouseover="UpdateTooltip(this,6,43)" onfocus="UpdateTooltip(this,6,43)" onclick="return OnShapeClick(6,43);" onkeyup="OnShapeKey(6,43);">
  <AREA shape="POLYGON" tabindex="1" ALT="Director of Hospitality Services" origTitle="Director of Hospitality Services" TITLE="Director of Hospitality Services"  target="_top" COORDS=" 526,188 523,188 523,217 601,217 601,188 601,188 601,187 526,187 526,188" onmouseover="UpdateTooltip(this,6,37)" onfocus="UpdateTooltip(this,6,37)" onclick="return OnShapeClick(6,37);" onkeyup="OnShapeKey(6,37);">
  <AREA shape="POLYGON" tabindex="1" ALT="Director of Information Support Service" origTitle="Director of Information Support Service" TITLE="Director of Information Support Service"  target="_top" COORDS=" 335,188 329,188 329,217 415,217 415,188 412,188 412,187 335,187 335,188" onmouseover="UpdateTooltip(this,6,31)" onfocus="UpdateTooltip(this,6,31)" onclick="return OnShapeClick(6,31);" onkeyup="OnShapeKey(6,31);">
  <AREA shape="POLYGON" tabindex="1" ALT="Building and Estate Manager" origTitle="Building and Estate Manager" TITLE="Building and Estate Manager"  target="_top" COORDS=" 180,188 176,188 176,217 249,217 249,188 247,188 247,187 180,187 180,188" onmouseover="UpdateTooltip(this,6,25)" onfocus="UpdateTooltip(this,6,25)" onclick="return OnShapeClick(6,25);" onkeyup="OnShapeKey(6,25);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal  (Resources) Clerk to the Governors" origTitle="Assistant Principal  (Resources) Clerk to the Governors" TITLE="Assistant Principal  (Resources) Clerk to the Governors" HREF="gif_1.htm" target="frmDrawing" COORDS=" 325,168 435,168 435,123 325,123 325,168" onmouseover="UpdateTooltip(this,6,20)" onfocus="UpdateTooltip(this,6,20)" onclick="return OnShapeClick(6,20);" onkeyup="OnShapeKey(6,20);">
  <AREA shape="POLYGON" tabindex="1" ALT="" origTitle="" TITLE="" HREF="http://www.tasc.ac.uk/" target="_top" COORDS=" 721,47 724,47 724,44 724,44 724,44 724,43 724,43 724,43 724,43 725,43 725,43 725,42 725,42 725,42 725,42 725,42 726,42 726,42 726,42 726,42 726,42 727,42 727,42 727,42 727,42 727,42 728,42 728,42 728,42 728,42 728,43 728,43 728,43 729,43 729,43 729,43 729,44 729,44 729,44 729,47 732,47 732,36 735,38 735,38 727,30 726,29 726,30 718,38 718,38 721,36 721,47" onmouseover="UpdateTooltip(this,6,5)" onfocus="UpdateTooltip(this,6,5)" onclick="return OnShapeClick(6,5);" onkeyup="OnShapeKey(6,5);">
</MAP>



</DIV>

</body>
</html>



"er/e ln