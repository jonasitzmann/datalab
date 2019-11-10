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

var pageID = 5;

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
  <IMG id="ConvertedImage" SRC="gif_1.gif" ALT="SMT" name=RasterImage BORDER="0" USEMAP="#visImageMap">
</center>

<MAP NAME="visImageMap">
  <AREA shape="POLYGON" tabindex="1" ALT="Senior Management Team" origTitle="Senior Management Team" TITLE="Senior Management Team"  target="_top" COORDS=" 334,109 193,109 192,109 192,109 191,109 191,109 190,109 190,109 189,110 189,110 188,110 188,110 187,110 187,110 186,110 186,111 185,111 185,111 184,111 184,112 184,112 183,112 183,113 182,113 182,113 181,114 181,114 181,114 180,115 180,115 180,115 179,116 179,116 179,117 179,117 178,118 178,118 178,118 178,119 177,119 177,120 177,120 177,121 177,121 176,122 176,122 176,123 176,123 176,124 176,124 176,125 176,125 176,126 176,339 176,339 176,340 176,340 176,341 176,342 176,342 176,343 176,343 177,344 177,344 177,345 177,345 177,345 178,346 178,346 178,347 178,347 179,348 179,348 179,349 179,349 180,349 180,350 180,350 181,351 181,351 181,351 182,352 182,352 183,352 183,353 184,353 184,353 184,354 185,354 185,354 186,354 186,354 187,355 187,355 188,355 188,355 189,355 189,355 190,355 190,356 191,356 191,356 192,356 192,356 193,356 649,356 649,356 650,356 650,356 651,356 651,356 652,355 652,355 653,355 653,355 654,355 654,355 655,355 655,354 656,354 656,354 657,354 657,354 657,353 658,353 658,353 659,352 659,352 660,352 660,351 660,351 661,351 661,350 661,350 662,349 662,349 662,349 663,348 663,348 663,347 663,347 664,346 664,346 664,345 664,345 665,345 665,344 665,344 665,343 665,343 665,342 665,342 665,341 665,340 665,340 665,339 665,339 665,126 665,125 665,125 665,124 665,124 665,123 665,123 665,122 665,122 665,121 665,121 665,120 664,120 664,119 664,119 664,118 663,118 663,118 663,117 663,117 662,116 662,116 662,115 661,115 661,115 661,114 660,114 660,114 660,113 659,113 659,113 658,112 658,112 657,112 657,111 657,111 656,111 656,111 655,110 655,110 654,110 654,110 653,110 653,110 652,110 652,109 651,109 651,109 650,109 650,109 649,109 649,109 508,109 508,110 649,110 649,110 650,110 650,110 651,110 651,110 652,110 652,111 653,111 653,111 654,111 654,111 655,111 655,112 656,112 656,112 656,112 657,112 657,113 658,113 658,113 659,114 659,114 659,114 660,115 660,115 660,115 661,116 661,116 661,117 662,117 662,117 662,118 662,118 663,119 663,119 663,120 663,120 664,121 664,121 664,121 664,122 664,122 664,123 664,123 664,124 664,124 664,125 664,125 664,126 664,339 664,339 664,340 664,340 664,341 664,341 664,342 664,342 664,343 664,343 664,344 664,344 663,345 663,345 663,346 663,346 662,347 662,347 662,348 662,348 661,348 661,349 661,349 660,350 660,350 660,350 659,351 659,351 659,351 658,352 658,352 657,352 657,352 656,353 656,353 656,353 655,353 655,354 654,354 654,354 653,354 653,354 652,354 652,354 651,355 651,355 650,355 650,355 649,355 649,355 193,355 192,355 192,355 191,355 191,355 190,355 190,354 189,354 189,354 188,354 188,354 187,354 187,354 186,353 186,353 185,353 185,353 185,352 184,352 184,352 183,352 183,351 183,351 182,351 182,350 181,350 181,350 181,349 180,349 180,348 180,348 180,348 179,347 179,347 179,346 179,346 178,345 178,345 178,344 178,344 178,343 177,343 177,342 177,342 177,341 177,341 177,340 177,340 177,339 177,339 177,126 177,125 177,125 177,124 177,124 177,123 177,123 177,122 177,122 178,121 178,121 178,121 178,120 178,120 179,119 179,119 179,118 179,118 180,117 180,117 180,117 180,116 181,116 181,115 181,115 182,115 182,114 183,114 183,114 183,113 184,113 184,113 185,112 185,112 185,112 186,112 186,112 187,111 187,111 188,111 188,111 189,111 189,111 190,110 190,110 191,110 191,110 192,110 192,110 193,110 334,110" onmouseover="UpdateTooltip(this,5,73)" onfocus="UpdateTooltip(this,5,73)" onclick="return OnShapeClick(5,73);" onkeyup="OnShapeKey(5,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Senior Management Team" origTitle="Senior Management Team" TITLE="Senior Management Team"  target="_top" COORDS=" 333,106 333,112 339,109 333,106" onmouseover="UpdateTooltip(this,5,73)" onfocus="UpdateTooltip(this,5,73)" onclick="return OnShapeClick(5,73);" onkeyup="OnShapeKey(5,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Senior Management Team" origTitle="Senior Management Team" TITLE="Senior Management Team"  target="_top" COORDS=" 508,112 508,106 502,109 508,112" onmouseover="UpdateTooltip(this,5,73)" onfocus="UpdateTooltip(this,5,73)" onclick="return OnShapeClick(5,73);" onkeyup="OnShapeKey(5,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Senior Management Team" origTitle="Senior Management Team" TITLE="Senior Management Team"  target="_top" COORDS=" 376,355 376,365 466,365 466,355 376,355" onmouseover="UpdateTooltip(this,5,73)" onfocus="UpdateTooltip(this,5,73)" onclick="return OnShapeClick(5,73);" onkeyup="OnShapeKey(5,73);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Media, Business &#38; Marketing" origTitle="Dean of the Faculty of Media, Business &#38; Marketing" TITLE="Dean of the Faculty of Media, Business &#38; Marketing" HREF="gif_5.htm" target="frmDrawing" COORDS=" 473,252 471,252 471,289 540,289 540,262 541,262 541,251 473,251 473,252" onmouseover="UpdateTooltip(this,5,67)" onfocus="UpdateTooltip(this,5,67)" onclick="return OnShapeClick(5,67);" onkeyup="OnShapeKey(5,67);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Education" origTitle="Dean of the Faculty of Education" TITLE="Dean of the Faculty of Education" HREF="gif_5.htm" target="frmDrawing" COORDS=" 566,293 560,293 560,322 646,322 646,293 642,293 642,292 566,292 566,293" onmouseover="UpdateTooltip(this,5,55)" onfocus="UpdateTooltip(this,5,55)" onclick="return OnShapeClick(5,55);" onkeyup="OnShapeKey(5,55);">
  <AREA shape="POLYGON" tabindex="1" ALT="Dean of the Faculty of Arts and Social Sciences" origTitle="Dean of the Faculty of Arts and Social Sciences" TITLE="Dean of the Faculty of Arts and Social Sciences" HREF="gif_5.htm" target="frmDrawing" COORDS=" 566,252 560,252 560,281 646,281 646,252 642,252 642,252 566,252 566,252" onmouseover="UpdateTooltip(this,5,61)" onfocus="UpdateTooltip(this,5,61)" onclick="return OnShapeClick(5,61);" onkeyup="OnShapeKey(5,61);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal  (Registrar)" origTitle="Assistant Principal  (Registrar)" TITLE="Assistant Principal  (Registrar)" HREF="gif_3.htm" target="frmDrawing" COORDS=" 321,233 391,233 391,204 321,204 321,233" onmouseover="UpdateTooltip(this,5,43)" onfocus="UpdateTooltip(this,5,43)" onclick="return OnShapeClick(5,43);" onkeyup="OnShapeKey(5,43);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal (Finance and Personnel)" origTitle="Assistant Principal (Finance and Personnel)" TITLE="Assistant Principal (Finance and Personnel)" HREF="gif_4.htm" target="frmDrawing" COORDS=" 422,204 410,204 410,233 496,233 496,204 486,204 486,203 422,203 422,204" onmouseover="UpdateTooltip(this,5,37)" onfocus="UpdateTooltip(this,5,37)" onclick="return OnShapeClick(5,37);" onkeyup="OnShapeKey(5,37);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal (Resources) Clerk to the Governors" origTitle="Assistant Principal (Resources) Clerk to the Governors" TITLE="Assistant Principal (Resources) Clerk to the Governors" HREF="gif_2.htm" target="frmDrawing" COORDS=" 224,204 208,204 208,233 302,233 302,204 286,204 286,203 224,203 224,204" onmouseover="UpdateTooltip(this,5,31)" onfocus="UpdateTooltip(this,5,31)" onclick="return OnShapeClick(5,31);" onkeyup="OnShapeKey(5,31);">
  <AREA shape="POLYGON" tabindex="1" ALT="Assistant Principal (Academic)" origTitle="Assistant Principal (Academic)" TITLE="Assistant Principal (Academic)" HREF="gif_5.htm" target="frmDrawing" COORDS=" 515,233 585,233 585,204 515,204 515,233" onmouseover="UpdateTooltip(this,5,25)" onfocus="UpdateTooltip(this,5,25)" onclick="return OnShapeClick(5,25);" onkeyup="OnShapeKey(5,25);">
  <AREA shape="POLYGON" tabindex="1" ALT="Principal and Chief Executive" origTitle="Principal and Chief Executive" TITLE="Principal and Chief Executive"  target="_top" COORDS=" 342,184 451,184 451,139 342,139 342,184" onmouseover="UpdateTooltip(this,5,20)" onfocus="UpdateTooltip(this,5,20)" onclick="return OnShapeClick(5,20);" onkeyup="OnShapeKey(5,20);">
  <AREA shape="POLYGON" tabindex="1" ALT="" origTitle="" TITLE="" HREF="http://www.tasc.ac.uk/" target="_top" COORDS=" 722,42 725,42 725,39 725,39 725,38 725,38 725,38 725,38 725,38 725,38 725,37 726,37 726,37 726,37 726,37 726,37 726,37 727,37 727,37 727,37 727,37 727,37 728,37 728,37 728,37 728,37 728,37 729,37 729,37 729,37 729,37 729,38 729,38 729,38 729,38 730,38 730,38 730,39 730,39 730,42 733,42 733,31 735,33 736,33 728,25 727,24 727,25 719,33 719,33 722,31 722,42" onmouseover="UpdateTooltip(this,5,5)" onfocus="UpdateTooltip(this,5,5)" onclick="return OnShapeClick(5,5);" onkeyup="OnShapeKey(5,5);">
</MAP>



</DIV>

</body>
</html>



ts  /s>/'