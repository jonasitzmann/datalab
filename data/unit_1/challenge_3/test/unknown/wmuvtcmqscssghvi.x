<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN'>
<html>
<head>
<title>DeBug - The Insect Zone</title>
<meta http-equiv='Content-Type' content='text/html; charset=iso-8859-1'>
<link rel='stylesheet' type='text/css' href='DeBugStyle.css'>

<script language="JavaScript" type="text/JavaScript">
/*
function ResizePage(){

	var LeftPos = 40;
	var TopPos = 40;
	document.getElementById('MainSection').style.top = TopPos;
	document.getElementById('MainSection').style.left = LeftPos;	
	//detect window resolution
	if(navigator.appName == "Microsoft Internet Explorer"){ 
		var intWidth = document.body.clientWidth;
		var intHeight = document.body.clientHeight;
		document.getElementById('MainSection').style.height = intHeight - 80;
		document.getElementById('MainSection').style.width = intWidth - 80;
	} else {
		var intWidth = window.innerWidth;
		var intHeight = window.innerHeight;
		document.getElementById('MainSection').style.height = intHeight - 140;
		document.getElementById('MainSection').style.width = intWidth - 110;
	}
}
*/

function disable(){
	if (event.button == 2){
		alert("Permission must be sought to use images or text.\nThank you")
	}
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>


<script type="text/javascript" language="javascript">
setTimeout("RandomImage()",3000); 

function Loopy(){
	setTimeout("RandomImage()",3000); 
}

function RandomImage(){

	var myimages=new Array()
	myimages[0]="400Aphid";
	myimages[1]="400BlackHoverfly";
	myimages[2]="400Bumblebee";
	myimages[3]="400CaribidBeetle";
	myimages[4]="400CombOfBees";
	myimages[5]="400hortorum";
	myimages[6]="400Hoverfly";
	myimages[7]="400InjectingAnEgg";
	myimages[8]="400Lacewing";
	myimages[9]="400Ladybird";
	myimages[10]="400LadybirdFeeding";
	myimages[11]="400Moth";
	myimages[12]="400Parasitoid";
	myimages[13]="400Peacock";
	myimages[14]="400PodMidge";
	myimages[15]="400StagBeetle";
	myimages[16]="400StagFight";
	myimages[17]="400TaggedButterfly";
	myimages[18]="400ThirstyBee";
	myimages[19]="400Weevil";
	myimages[20]="400WhiteButterfly";
	myimages[21]="400YellowParasitoid";
	
	var Path = "/pie/DeBug/images/";
	var FileType = ".jpg";
	var ry=Math.floor(Math.random()*myimages.length);
	document.getElementById('RandomImage').src = Path + myimages[ry] + FileType;
	document.getElementById('RandomImage').alt = "This image is chosen randomly from a collection";
	Loopy();
}

</script>
</head>

<body>


<table align="center" style="border: 4px solid #4678B4; " width="90%" bgcolor="#FFFFFF" cellpadding="10">
<tr>
<td valign="top" align="center">
<img name="RandomImage" id="RandomImage" width="400" height="300" src="/pie/DeBug/images/400Aphid.jpg" align="right" hspace="0">

<h1>Welcome to</h1>

<h1 style="font-size:xx-large; ">DeBug</h1>

<h2>Interactive Insects</h2>

<p>
Here you will find questions and answers about insects and their relatives. Play the "Guess the insect" 
game where you can see only a small part of the image at a time - move the circle! Learn about 
the internal workings of a honey bee! There are also fabtastic insect wallpapers to download.
</p>

</td>
<td valign="top" valign="middle">
</td>
</tr>
<tr>
<td colspan="2" align="center">
<p>
<a href="http://www.rothamsted.bbsrc.ac.uk/">
<img name="RResLogo" src="/Graphics/RR-Logo32px.gif" align="absmiddle" 
alt="Click here for the Rothamsted home page" style="border: 0px; ">
<a href="http://www.rothamsted.bbsrc.ac.uk/">Click&nbsp;here&nbsp;for&nbsp;the&nbsp;Rothamsted&nbsp;Research&nbsp;home&nbsp;page</a>
</p>
<p>
	<a class="MenuLink" href="index.html">&nbsp;Home&nbsp;</a>
	<a class="MenuLink" href="Quiz.html">&nbsp;Quiz&nbsp;</a>
	<a class="MenuLink" href="WhatAmI.html">&nbsp;Guess&nbsp;the&nbsp;insect&nbsp;</a>
	<a class="MenuLink" href="Anatomy.html">&nbsp;Insect&nbsp;anatomy&nbsp;</a>
	<a class="MenuLink" href="Wallpapers.html">&nbsp;Wallpapers&nbsp;</a>
	<!--<a class="MenuLink" href="AskAQuestion.html">&nbsp;Ask&nbsp;a&nbsp;question&nbsp;</a>-->
</p>
</td>
</tr>
</table>









>c  Rn	