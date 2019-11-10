<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<meta name="Description" content="Interactive map with buttons for selecting arbitrary Unicode characters for copying and pasting into other applications">
<meta name="Keywords" content="Unicode, characters, map, character map, multilingual, foreign, copy, paste, copying, pasting, online, form, input, search, Google, free, GPL, perl, javascript">
<title>Free Online Unicode Character Map</title>
<script language="Javascript" type="text/javascript">
<!--
// COPYRIGHT:
//
// This code consists of an HTML/javascript character map for Unicode
// and/or a perl script which generates it.  You may have received either
// or both of these.
//
// Both the perl and javascript code are copyright (c) Alan Iwi 2003, but you
// may copy either or both under the terms of the GNU GPL.
// See http://www.gnu.org/copyleft/gpl.html
//
// (For those unfamiliar with the GPL...  Note that the GPL mainly exists to
// give freedom to modify and copy code rather than to restrict it.  Your main
// obligation is to grant to others this same freedom which you yourself enjoy.)
//
// Note that if you use the perl code and put the output on a web site,
// you are DISTRIBUTING the javascript code and you must comply with the
// conditions of the GNU GPL (even if you are not distributing the perl code).
//
//====
// PLEASE EMAIL ME IF YOU MAKE AN IMPROVED VERSION:  A.M.Iwi {AT} rl.ac.uk
// (NB this is only a request, not an obligation.)
//====
//

var theform;
var textfield;
var d3,d2;
var digits;

//---------------------
function insert (d1d0) 
{
    // eval("textfield.value += \"\\u"+d3+d2+d1d0+"\"");
    eval("insertAtCursor(textfield,\"\\u"+d3+d2+d1d0+"\")");
    textfield.focus();
}

//---------------------
// The function insertAtCursor is modified version of code from
// PHPMyAdmin.  PHPMyAdmin is GPLed, so copyright for this is fine.
//
// (IE and Mozilla code both modified to leave cursor position correct after
//  insert.)
//
function insertAtCursor(myField, myValue)
{
  //IE support
  if (document.selection)
  {
      myField.focus();
      sel = document.selection.createRange();
      sel.text = myValue;
      sel.select();
  }
  //MOZILLA/NETSCAPE support
  else if (myField.selectionStart || myField.selectionStart == '0')
  {
      var startPos = myField.selectionStart;
      var endPos = myField.selectionEnd;
      var newEndPos = startPos + myValue.length;
      myField.value = myField.value.substring(0, startPos)
                      + myValue 
                      + myField.value.substring(endPos, myField.value.length);
      myField.setSelectionRange(newEndPos, newEndPos);
  }
  else 
  {
      var newEndPos = myField.value.length + myValue.length;
      myField.value += myValue;
      myField.setSelectionRange(newEndPos, newEndPos);
  }
}

//---------------------
function initSection()
{
    // assumes d2, d3 already set
    var ctrl;
    for (var v1=0; v1 < 16; v1++)
    {
	d1=digits[v1];
	ctrl=(d3==0 && d2==0 && d1<=1);
	for (var v0=0; v0 < 16; v0++)
	{
	    d0=digits[v0];
	    if (!ctrl)
	    {
		eval("theform.c"+d1+d0+".value=\"\\u"+d3+d2+d1+d0+"\"");
	    }
	    else
	    {
		eval("theform.c"+d1+d0+".value=\"[]\"");
	    }
	}
    }
    textfield.focus();
}

//---------------------
function selectOption(obj,reqdvalue,defaultindex)
{
    var found=0;
    for (var opt=0; opt<obj.options.length;opt++)
    {
	if(obj.options[opt].value==reqdvalue)
	{
	    found=1;
	    obj.selectedIndex=opt;
	    break;
	}
    }
    if (!found && defaultindex>=0)
    {
	obj.selectedIndex=defaultindex;
    }
}

//---------------------
function valueSelected(obj)
{
    return obj.options[obj.selectedIndex].value;
}

//---------------------
function initSectionFromNumeric()
{
    d3=valueSelected(theform.d3);
    d2=valueSelected(theform.d2);
    selectOption(theform.list,d3+d2,0);
    initSection();
}

//---------------------
function initSectionFromList() 
{
    var d3d2=valueSelected(theform.list);
    if (d3d2=='none'){return}
    d3=d3d2.charAt(0);
    d2=d3d2.charAt(1);
    selectOption(theform.d3,d3,-1);
    selectOption(theform.d2,d2,-1);
    initSection();
}

//---------------------
function clearInput() 
{
    // use this function because reset button resets too many things
    textfield.value="";
    htmlfield.value="";
    textfield.focus();
}

//---------------------
function setup()
{
    digits=new Array("0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F");
    lcdigits=new Array("0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f");
    theform = document.mainform
    textfield = theform.myinput;
    htmlfield = theform.html;
    initSectionFromNumeric();
}

//---------------------
function hex(n)
{
    return "%"+lcdigits[n>>4]+lcdigits[n&15];
}

//---------------------
function utf8(text) 
{
    // NB this function is valid up to uFFFF; would need extending
    // for >2 byte characters 
    var enc = "";
    for(var pos=0; pos<text.length; pos++)
    {
        var c=text.charCodeAt(pos);
	if (c<128)
	{
	    enc += escape(text.charAt(pos));
	}
	else if(c<2048)
	{
	    enc += hex((c>>6)|192);
	    enc += hex((c&63)|128);
	}
	else
	{
	    enc += hex((c>>12)|224);
	    enc += hex(((c>>6)&63)|128);
	    enc += hex((c&63)|128);
	}
    }
    return enc;
}

//---------------------
function html(text) 
{
    var enc = "";
    for(var pos=0; pos<text.length; pos++)
    {
        var c=text.charCodeAt(pos);
	if (c==60){
	    enc += "&lt;";
	}
	else if (c==62) {
	    enc += "&gt;";
	}
	else if (c==38) {
	    enc += "&amp;";
	}
	else if (c>=32 && c<128)
	{
	    enc += text.charAt(pos);
	}
	else
	{
	    enc += "&#"+c+";";
	}
    }
    return enc;
}

//---------------------
function copyToClipboard()
{
    var range;
    if (document.selection)
    {
	textfield.focus();
	textfield.select();
	range=textfield.createTextRange();
	range.execCommand("Copy");
    }
}

//---------------------
function htmlify()
{
    htmlfield.value=html(textfield.value);
    textfield.focus();
}

//---------------------
function google()
{
    window.open("http://www.google.com/search?q="+utf8(textfield.value)+"&ie=UTF-8&oe=UTF-8");
}

//---------------------
//-->
</script>
</head>
<body onload="setup()" bgcolor="white" text="black">
<center>
<H1>Free Online Unicode Character Map</H1>
<noscript>
This is an interactive map for selecting arbitrary Unicode characters for
copying and pasting.<br>
<strong><font size="+2" color="red">
You need to enable Javascript for this to work properly.
</font></strong>
<p>
</noscript>
Enter characters by using buttons below (and/or typing).<BR>
Then copy and paste your text as required,<BR>
or click "Google" to use your text as a Google&#8482; search term,<BR>
or click "Make HTML" to show (non-UTF8) HTML code for your text.
<P>
<form name="mainform" onSubmit="return(false);" action="">
<input type=text name="myinput" size=60>
<input type=button value="Google" onClick='google()'>
<SCRIPT language='Javascript' type="text/javascript">
<!--
// "Copy" button for use in IE
if (document.selection)
{
    document.write("<input type=button value=\"Copy\" onClick=copyToClipboard()>");
}
// -->
</SCRIPT>
<input type=button value="Clear" onClick='clearInput()'>

<P>
HTML: 
<input type=text name="html" size=40 readonly>
<input type=button value="Make HTML" onClick='htmlify()'>
<P>Select section by hex code: <select name="d3" onChange='initSectionFromNumeric()'><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option><option value="E">E</option><option value="F">F</option></select>
<select name="d2" onChange='initSectionFromNumeric()'><option value="0">0</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="A">A</option><option value="B">B</option><option value="C">C</option><option value="D">D</option><option value="E">E</option><option value="F">F</option></select>
or from list:
<select name="list" onChange='initSectionFromList()'>
<option value="none"></option>
<option value="00">00: Basic Latin, Latin 1</option><option value="01">01: Latin ext A, Latin ext B</option><option value="02">02: Latin ext B cont, ...</option><option value="03">03: Diacrit, Greek, Coptic</option><option value="04">04: Cyrillic</option><option value="05">05: Cyrillic Supp., Armenian, Hebrew</option><option value="06">06: Arabic</option><option value="07">07: Syriac, Thaana</option><option value="09">09: Devanagari, Bengali</option><option value="0A">0A: Gurmukhi, Gujarati</option><option value="0B">0B: Oriya, Tamil</option><option value="0C">0C: Telugu, Kannada</option><option value="0D">0D: Malayalam, Sinhala</option><option value="0E">0E: Thai, Lao</option><option value="0F">0F: Tibetan</option><option value="10">10: Mayanmar, Georgian</option><option value="11">11: Hangul Jamo</option><option value="12">12: Ethiopic</option><option value="13">13: Ethiopic, Cherokee</option><option value="17">17: Tagalog,Hanunoo,Buhid,Tagbanwa,Khmer</option><option value="18">18: Mongolian</option><option value="19">19: Limbu, Tai Le, Khmer Symbols</option><option value="1D">1D: Phonetic Extensions</option><option value="1E">1E: Latin Extended Additional</option><option value="1F">1F: Greek Extended</option><option value="20">20: Punctuation,Sub/Superscripts,Currency</option><option value="21">21: Letterlike Syms, Number Forms, Arrows</option><option value="22">22: Mathematical Operators</option><option value="23">23: Misc. Technical</option><option value="24">24: Ctl Picts, OCR, Encl Alphanumerics</option><option value="25">25: Box Drawing, Block Elem, Geom Shapes</option><option value="26">26: Misc Symbols</option><option value="27">27: Dingbats,Misc.Math-A,Supp.Arrows-A</option><option value="28">28: Braille</option><option value="29">29: Suppl. Arrows-B, Misc.Math.Symbols-B</option><option value="2A">2A: Supplemental Mathematical Operators</option><option value="2B">2B: Miscellaneous Symbols and Arrows</option><option value="2E">2E: CJK Radicals Supplement</option><option value="2F">2F: Kanji Radicals,Ideographic DescChars</option><option value="30">30: CJK Syms+Punct, Hiragana, Katakana</option><option value="31">31: Bopomofo, Hangul Compat Jamo, ...</option><option value="32">32: Enclosed CJK Letters and Months</option><option value="33">33: CJK Compatibility</option><option value="34">34: CJK Unified Ideographs Extension A</option><option value="4D">4D: Yijing Hexagram Symbols</option><option value="4E">4E: CJK Unified Ideographs (start)</option><option value="9F">9F: CJK Unified Ideographs (end)</option><option value="A0">A0: Yi Syllables (start)</option><option value="A4">A4: Yi Syllables (end), Yi Radicals</option><option value="AC">AC: Hangul Syllables (start)</option><option value="D7">D7: Hangul Syllables (end)</option><option value="D8">D8: High Surrogates (start)</option><option value="DB">DB: High Surrogates (end),</option><option value="DC">DC: Low Surrogates (start)</option><option value="DF">DF: Low Surrogates (end)</option><option value="E0">E0: Private Use Area (start)</option><option value="F8">F8: Private Use Area (end)</option><option value="F9">F9: CJK Compatibility Ideographs</option><option value="FA">FA: CJK Compatibility Ideographs (cont)</option><option value="FB">FB: Alpha Pres Fms,Arabic Pres Fms A(st)</option><option value="FD">FD: Arabic Presentation Forms-A (end)</option><option value="FE">FE: misc...</option><option value="FF">FF: Halfwidth+Fullwidth Forms, Specials</option></select>
<P><table width="90%" border="0" cellpadding="1" cellspacing="0">
<tr align="center"><td> </td><td bgcolor="#aaaaff"><font size="-1">x</font><B>0</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>1</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>2</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>3</B></td><td bgcolor="#aaaaff"><font size="-1">x</font><B>4</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>5</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>6</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>7</B></td><td bgcolor="#aaaaff"><font size="-1">x</font><B>8</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>9</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>A</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>B</B></td><td bgcolor="#aaaaff"><font size="-1">x</font><B>C</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>D</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>E</B></td><td bgcolor="#ddddff"><font size="-1">x</font><B>F</B></td></tr>
<tr align="center"><td bgcolor="#aaaaff"><B>0</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c00" Style="background:#f0fff0" onClick='insert("00")'></td><td bgcolor="#aaaaff"><input type="button" name="c01" Style="background:#f0fff0" onClick='insert("01")'></td><td bgcolor="#aaaaff"><input type="button" name="c02" Style="background:#f0fff0" onClick='insert("02")'></td><td bgcolor="#aaaaff"><input type="button" name="c03" Style="background:#f0fff0" onClick='insert("03")'></td><td bgcolor="#aaaaff"><input type="button" name="c04" Style="background:#f0fff0" onClick='insert("04")'></td><td bgcolor="#aaaaff"><input type="button" name="c05" Style="background:#f0fff0" onClick='insert("05")'></td><td bgcolor="#aaaaff"><input type="button" name="c06" Style="background:#f0fff0" onClick='insert("06")'></td><td bgcolor="#aaaaff"><input type="button" name="c07" Style="background:#f0fff0" onClick='insert("07")'></td><td bgcolor="#aaaaff"><input type="button" name="c08" Style="background:#f0fff0" onClick='insert("08")'></td><td bgcolor="#aaaaff"><input type="button" name="c09" Style="background:#f0fff0" onClick='insert("09")'></td><td bgcolor="#aaaaff"><input type="button" name="c0A" Style="background:#f0fff0" onClick='insert("0A")'></td><td bgcolor="#aaaaff"><input type="button" name="c0B" Style="background:#f0fff0" onClick='insert("0B")'></td><td bgcolor="#aaaaff"><input type="button" name="c0C" Style="background:#f0fff0" onClick='insert("0C")'></td><td bgcolor="#aaaaff"><input type="button" name="c0D" Style="background:#f0fff0" onClick='insert("0D")'></td><td bgcolor="#aaaaff"><input type="button" name="c0E" Style="background:#f0fff0" onClick='insert("0E")'></td><td bgcolor="#aaaaff"><input type="button" name="c0F" Style="background:#f0fff0" onClick='insert("0F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>1</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c10" Style="background:#f0fff0" onClick='insert("10")'></td><td bgcolor="#ddddff"><input type="button" name="c11" Style="background:#f0fff0" onClick='insert("11")'></td><td bgcolor="#ddddff"><input type="button" name="c12" Style="background:#f0fff0" onClick='insert("12")'></td><td bgcolor="#ddddff"><input type="button" name="c13" Style="background:#f0fff0" onClick='insert("13")'></td><td bgcolor="#aaaaff"><input type="button" name="c14" Style="background:#f0fff0" onClick='insert("14")'></td><td bgcolor="#ddddff"><input type="button" name="c15" Style="background:#f0fff0" onClick='insert("15")'></td><td bgcolor="#ddddff"><input type="button" name="c16" Style="background:#f0fff0" onClick='insert("16")'></td><td bgcolor="#ddddff"><input type="button" name="c17" Style="background:#f0fff0" onClick='insert("17")'></td><td bgcolor="#aaaaff"><input type="button" name="c18" Style="background:#f0fff0" onClick='insert("18")'></td><td bgcolor="#ddddff"><input type="button" name="c19" Style="background:#f0fff0" onClick='insert("19")'></td><td bgcolor="#ddddff"><input type="button" name="c1A" Style="background:#f0fff0" onClick='insert("1A")'></td><td bgcolor="#ddddff"><input type="button" name="c1B" Style="background:#f0fff0" onClick='insert("1B")'></td><td bgcolor="#aaaaff"><input type="button" name="c1C" Style="background:#f0fff0" onClick='insert("1C")'></td><td bgcolor="#ddddff"><input type="button" name="c1D" Style="background:#f0fff0" onClick='insert("1D")'></td><td bgcolor="#ddddff"><input type="button" name="c1E" Style="background:#f0fff0" onClick='insert("1E")'></td><td bgcolor="#ddddff"><input type="button" name="c1F" Style="background:#f0fff0" onClick='insert("1F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>2</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c20" Style="background:#f0fff0" onClick='insert("20")'></td><td bgcolor="#ddddff"><input type="button" name="c21" Style="background:#f0fff0" onClick='insert("21")'></td><td bgcolor="#ddddff"><input type="button" name="c22" Style="background:#f0fff0" onClick='insert("22")'></td><td bgcolor="#ddddff"><input type="button" name="c23" Style="background:#f0fff0" onClick='insert("23")'></td><td bgcolor="#aaaaff"><input type="button" name="c24" Style="background:#f0fff0" onClick='insert("24")'></td><td bgcolor="#ddddff"><input type="button" name="c25" Style="background:#f0fff0" onClick='insert("25")'></td><td bgcolor="#ddddff"><input type="button" name="c26" Style="background:#f0fff0" onClick='insert("26")'></td><td bgcolor="#ddddff"><input type="button" name="c27" Style="background:#f0fff0" onClick='insert("27")'></td><td bgcolor="#aaaaff"><input type="button" name="c28" Style="background:#f0fff0" onClick='insert("28")'></td><td bgcolor="#ddddff"><input type="button" name="c29" Style="background:#f0fff0" onClick='insert("29")'></td><td bgcolor="#ddddff"><input type="button" name="c2A" Style="background:#f0fff0" onClick='insert("2A")'></td><td bgcolor="#ddddff"><input type="button" name="c2B" Style="background:#f0fff0" onClick='insert("2B")'></td><td bgcolor="#aaaaff"><input type="button" name="c2C" Style="background:#f0fff0" onClick='insert("2C")'></td><td bgcolor="#ddddff"><input type="button" name="c2D" Style="background:#f0fff0" onClick='insert("2D")'></td><td bgcolor="#ddddff"><input type="button" name="c2E" Style="background:#f0fff0" onClick='insert("2E")'></td><td bgcolor="#ddddff"><input type="button" name="c2F" Style="background:#f0fff0" onClick='insert("2F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>3</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c30" Style="background:#f0fff0" onClick='insert("30")'></td><td bgcolor="#ddddff"><input type="button" name="c31" Style="background:#f0fff0" onClick='insert("31")'></td><td bgcolor="#ddddff"><input type="button" name="c32" Style="background:#f0fff0" onClick='insert("32")'></td><td bgcolor="#ddddff"><input type="button" name="c33" Style="background:#f0fff0" onClick='insert("33")'></td><td bgcolor="#aaaaff"><input type="button" name="c34" Style="background:#f0fff0" onClick='insert("34")'></td><td bgcolor="#ddddff"><input type="button" name="c35" Style="background:#f0fff0" onClick='insert("35")'></td><td bgcolor="#ddddff"><input type="button" name="c36" Style="background:#f0fff0" onClick='insert("36")'></td><td bgcolor="#ddddff"><input type="button" name="c37" Style="background:#f0fff0" onClick='insert("37")'></td><td bgcolor="#aaaaff"><input type="button" name="c38" Style="background:#f0fff0" onClick='insert("38")'></td><td bgcolor="#ddddff"><input type="button" name="c39" Style="background:#f0fff0" onClick='insert("39")'></td><td bgcolor="#ddddff"><input type="button" name="c3A" Style="background:#f0fff0" onClick='insert("3A")'></td><td bgcolor="#ddddff"><input type="button" name="c3B" Style="background:#f0fff0" onClick='insert("3B")'></td><td bgcolor="#aaaaff"><input type="button" name="c3C" Style="background:#f0fff0" onClick='insert("3C")'></td><td bgcolor="#ddddff"><input type="button" name="c3D" Style="background:#f0fff0" onClick='insert("3D")'></td><td bgcolor="#ddddff"><input type="button" name="c3E" Style="background:#f0fff0" onClick='insert("3E")'></td><td bgcolor="#ddddff"><input type="button" name="c3F" Style="background:#f0fff0" onClick='insert("3F")'></td></tr>
<tr align="center"><td bgcolor="#aaaaff"><B>4</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c40" Style="background:#f0fff0" onClick='insert("40")'></td><td bgcolor="#aaaaff"><input type="button" name="c41" Style="background:#f0fff0" onClick='insert("41")'></td><td bgcolor="#aaaaff"><input type="button" name="c42" Style="background:#f0fff0" onClick='insert("42")'></td><td bgcolor="#aaaaff"><input type="button" name="c43" Style="background:#f0fff0" onClick='insert("43")'></td><td bgcolor="#aaaaff"><input type="button" name="c44" Style="background:#f0fff0" onClick='insert("44")'></td><td bgcolor="#aaaaff"><input type="button" name="c45" Style="background:#f0fff0" onClick='insert("45")'></td><td bgcolor="#aaaaff"><input type="button" name="c46" Style="background:#f0fff0" onClick='insert("46")'></td><td bgcolor="#aaaaff"><input type="button" name="c47" Style="background:#f0fff0" onClick='insert("47")'></td><td bgcolor="#aaaaff"><input type="button" name="c48" Style="background:#f0fff0" onClick='insert("48")'></td><td bgcolor="#aaaaff"><input type="button" name="c49" Style="background:#f0fff0" onClick='insert("49")'></td><td bgcolor="#aaaaff"><input type="button" name="c4A" Style="background:#f0fff0" onClick='insert("4A")'></td><td bgcolor="#aaaaff"><input type="button" name="c4B" Style="background:#f0fff0" onClick='insert("4B")'></td><td bgcolor="#aaaaff"><input type="button" name="c4C" Style="background:#f0fff0" onClick='insert("4C")'></td><td bgcolor="#aaaaff"><input type="button" name="c4D" Style="background:#f0fff0" onClick='insert("4D")'></td><td bgcolor="#aaaaff"><input type="button" name="c4E" Style="background:#f0fff0" onClick='insert("4E")'></td><td bgcolor="#aaaaff"><input type="button" name="c4F" Style="background:#f0fff0" onClick='insert("4F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>5</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c50" Style="background:#f0fff0" onClick='insert("50")'></td><td bgcolor="#ddddff"><input type="button" name="c51" Style="background:#f0fff0" onClick='insert("51")'></td><td bgcolor="#ddddff"><input type="button" name="c52" Style="background:#f0fff0" onClick='insert("52")'></td><td bgcolor="#ddddff"><input type="button" name="c53" Style="background:#f0fff0" onClick='insert("53")'></td><td bgcolor="#aaaaff"><input type="button" name="c54" Style="background:#f0fff0" onClick='insert("54")'></td><td bgcolor="#ddddff"><input type="button" name="c55" Style="background:#f0fff0" onClick='insert("55")'></td><td bgcolor="#ddddff"><input type="button" name="c56" Style="background:#f0fff0" onClick='insert("56")'></td><td bgcolor="#ddddff"><input type="button" name="c57" Style="background:#f0fff0" onClick='insert("57")'></td><td bgcolor="#aaaaff"><input type="button" name="c58" Style="background:#f0fff0" onClick='insert("58")'></td><td bgcolor="#ddddff"><input type="button" name="c59" Style="background:#f0fff0" onClick='insert("59")'></td><td bgcolor="#ddddff"><input type="button" name="c5A" Style="background:#f0fff0" onClick='insert("5A")'></td><td bgcolor="#ddddff"><input type="button" name="c5B" Style="background:#f0fff0" onClick='insert("5B")'></td><td bgcolor="#aaaaff"><input type="button" name="c5C" Style="background:#f0fff0" onClick='insert("5C")'></td><td bgcolor="#ddddff"><input type="button" name="c5D" Style="background:#f0fff0" onClick='insert("5D")'></td><td bgcolor="#ddddff"><input type="button" name="c5E" Style="background:#f0fff0" onClick='insert("5E")'></td><td bgcolor="#ddddff"><input type="button" name="c5F" Style="background:#f0fff0" onClick='insert("5F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>6</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c60" Style="background:#f0fff0" onClick='insert("60")'></td><td bgcolor="#ddddff"><input type="button" name="c61" Style="background:#f0fff0" onClick='insert("61")'></td><td bgcolor="#ddddff"><input type="button" name="c62" Style="background:#f0fff0" onClick='insert("62")'></td><td bgcolor="#ddddff"><input type="button" name="c63" Style="background:#f0fff0" onClick='insert("63")'></td><td bgcolor="#aaaaff"><input type="button" name="c64" Style="background:#f0fff0" onClick='insert("64")'></td><td bgcolor="#ddddff"><input type="button" name="c65" Style="background:#f0fff0" onClick='insert("65")'></td><td bgcolor="#ddddff"><input type="button" name="c66" Style="background:#f0fff0" onClick='insert("66")'></td><td bgcolor="#ddddff"><input type="button" name="c67" Style="background:#f0fff0" onClick='insert("67")'></td><td bgcolor="#aaaaff"><input type="button" name="c68" Style="background:#f0fff0" onClick='insert("68")'></td><td bgcolor="#ddddff"><input type="button" name="c69" Style="background:#f0fff0" onClick='insert("69")'></td><td bgcolor="#ddddff"><input type="button" name="c6A" Style="background:#f0fff0" onClick='insert("6A")'></td><td bgcolor="#ddddff"><input type="button" name="c6B" Style="background:#f0fff0" onClick='insert("6B")'></td><td bgcolor="#aaaaff"><input type="button" name="c6C" Style="background:#f0fff0" onClick='insert("6C")'></td><td bgcolor="#ddddff"><input type="button" name="c6D" Style="background:#f0fff0" onClick='insert("6D")'></td><td bgcolor="#ddddff"><input type="button" name="c6E" Style="background:#f0fff0" onClick='insert("6E")'></td><td bgcolor="#ddddff"><input type="button" name="c6F" Style="background:#f0fff0" onClick='insert("6F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>7</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c70" Style="background:#f0fff0" onClick='insert("70")'></td><td bgcolor="#ddddff"><input type="button" name="c71" Style="background:#f0fff0" onClick='insert("71")'></td><td bgcolor="#ddddff"><input type="button" name="c72" Style="background:#f0fff0" onClick='insert("72")'></td><td bgcolor="#ddddff"><input type="button" name="c73" Style="background:#f0fff0" onClick='insert("73")'></td><td bgcolor="#aaaaff"><input type="button" name="c74" Style="background:#f0fff0" onClick='insert("74")'></td><td bgcolor="#ddddff"><input type="button" name="c75" Style="background:#f0fff0" onClick='insert("75")'></td><td bgcolor="#ddddff"><input type="button" name="c76" Style="background:#f0fff0" onClick='insert("76")'></td><td bgcolor="#ddddff"><input type="button" name="c77" Style="background:#f0fff0" onClick='insert("77")'></td><td bgcolor="#aaaaff"><input type="button" name="c78" Style="background:#f0fff0" onClick='insert("78")'></td><td bgcolor="#ddddff"><input type="button" name="c79" Style="background:#f0fff0" onClick='insert("79")'></td><td bgcolor="#ddddff"><input type="button" name="c7A" Style="background:#f0fff0" onClick='insert("7A")'></td><td bgcolor="#ddddff"><input type="button" name="c7B" Style="background:#f0fff0" onClick='insert("7B")'></td><td bgcolor="#aaaaff"><input type="button" name="c7C" Style="background:#f0fff0" onClick='insert("7C")'></td><td bgcolor="#ddddff"><input type="button" name="c7D" Style="background:#f0fff0" onClick='insert("7D")'></td><td bgcolor="#ddddff"><input type="button" name="c7E" Style="background:#f0fff0" onClick='insert("7E")'></td><td bgcolor="#ddddff"><input type="button" name="c7F" Style="background:#f0fff0" onClick='insert("7F")'></td></tr>
<tr align="center"><td bgcolor="#aaaaff"><B>8</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c80" Style="background:#f0fff0" onClick='insert("80")'></td><td bgcolor="#aaaaff"><input type="button" name="c81" Style="background:#f0fff0" onClick='insert("81")'></td><td bgcolor="#aaaaff"><input type="button" name="c82" Style="background:#f0fff0" onClick='insert("82")'></td><td bgcolor="#aaaaff"><input type="button" name="c83" Style="background:#f0fff0" onClick='insert("83")'></td><td bgcolor="#aaaaff"><input type="button" name="c84" Style="background:#f0fff0" onClick='insert("84")'></td><td bgcolor="#aaaaff"><input type="button" name="c85" Style="background:#f0fff0" onClick='insert("85")'></td><td bgcolor="#aaaaff"><input type="button" name="c86" Style="background:#f0fff0" onClick='insert("86")'></td><td bgcolor="#aaaaff"><input type="button" name="c87" Style="background:#f0fff0" onClick='insert("87")'></td><td bgcolor="#aaaaff"><input type="button" name="c88" Style="background:#f0fff0" onClick='insert("88")'></td><td bgcolor="#aaaaff"><input type="button" name="c89" Style="background:#f0fff0" onClick='insert("89")'></td><td bgcolor="#aaaaff"><input type="button" name="c8A" Style="background:#f0fff0" onClick='insert("8A")'></td><td bgcolor="#aaaaff"><input type="button" name="c8B" Style="background:#f0fff0" onClick='insert("8B")'></td><td bgcolor="#aaaaff"><input type="button" name="c8C" Style="background:#f0fff0" onClick='insert("8C")'></td><td bgcolor="#aaaaff"><input type="button" name="c8D" Style="background:#f0fff0" onClick='insert("8D")'></td><td bgcolor="#aaaaff"><input type="button" name="c8E" Style="background:#f0fff0" onClick='insert("8E")'></td><td bgcolor="#aaaaff"><input type="button" name="c8F" Style="background:#f0fff0" onClick='insert("8F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>9</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="c90" Style="background:#f0fff0" onClick='insert("90")'></td><td bgcolor="#ddddff"><input type="button" name="c91" Style="background:#f0fff0" onClick='insert("91")'></td><td bgcolor="#ddddff"><input type="button" name="c92" Style="background:#f0fff0" onClick='insert("92")'></td><td bgcolor="#ddddff"><input type="button" name="c93" Style="background:#f0fff0" onClick='insert("93")'></td><td bgcolor="#aaaaff"><input type="button" name="c94" Style="background:#f0fff0" onClick='insert("94")'></td><td bgcolor="#ddddff"><input type="button" name="c95" Style="background:#f0fff0" onClick='insert("95")'></td><td bgcolor="#ddddff"><input type="button" name="c96" Style="background:#f0fff0" onClick='insert("96")'></td><td bgcolor="#ddddff"><input type="button" name="c97" Style="background:#f0fff0" onClick='insert("97")'></td><td bgcolor="#aaaaff"><input type="button" name="c98" Style="background:#f0fff0" onClick='insert("98")'></td><td bgcolor="#ddddff"><input type="button" name="c99" Style="background:#f0fff0" onClick='insert("99")'></td><td bgcolor="#ddddff"><input type="button" name="c9A" Style="background:#f0fff0" onClick='insert("9A")'></td><td bgcolor="#ddddff"><input type="button" name="c9B" Style="background:#f0fff0" onClick='insert("9B")'></td><td bgcolor="#aaaaff"><input type="button" name="c9C" Style="background:#f0fff0" onClick='insert("9C")'></td><td bgcolor="#ddddff"><input type="button" name="c9D" Style="background:#f0fff0" onClick='insert("9D")'></td><td bgcolor="#ddddff"><input type="button" name="c9E" Style="background:#f0fff0" onClick='insert("9E")'></td><td bgcolor="#ddddff"><input type="button" name="c9F" Style="background:#f0fff0" onClick='insert("9F")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>A</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cA0" Style="background:#f0fff0" onClick='insert("A0")'></td><td bgcolor="#ddddff"><input type="button" name="cA1" Style="background:#f0fff0" onClick='insert("A1")'></td><td bgcolor="#ddddff"><input type="button" name="cA2" Style="background:#f0fff0" onClick='insert("A2")'></td><td bgcolor="#ddddff"><input type="button" name="cA3" Style="background:#f0fff0" onClick='insert("A3")'></td><td bgcolor="#aaaaff"><input type="button" name="cA4" Style="background:#f0fff0" onClick='insert("A4")'></td><td bgcolor="#ddddff"><input type="button" name="cA5" Style="background:#f0fff0" onClick='insert("A5")'></td><td bgcolor="#ddddff"><input type="button" name="cA6" Style="background:#f0fff0" onClick='insert("A6")'></td><td bgcolor="#ddddff"><input type="button" name="cA7" Style="background:#f0fff0" onClick='insert("A7")'></td><td bgcolor="#aaaaff"><input type="button" name="cA8" Style="background:#f0fff0" onClick='insert("A8")'></td><td bgcolor="#ddddff"><input type="button" name="cA9" Style="background:#f0fff0" onClick='insert("A9")'></td><td bgcolor="#ddddff"><input type="button" name="cAA" Style="background:#f0fff0" onClick='insert("AA")'></td><td bgcolor="#ddddff"><input type="button" name="cAB" Style="background:#f0fff0" onClick='insert("AB")'></td><td bgcolor="#aaaaff"><input type="button" name="cAC" Style="background:#f0fff0" onClick='insert("AC")'></td><td bgcolor="#ddddff"><input type="button" name="cAD" Style="background:#f0fff0" onClick='insert("AD")'></td><td bgcolor="#ddddff"><input type="button" name="cAE" Style="background:#f0fff0" onClick='insert("AE")'></td><td bgcolor="#ddddff"><input type="button" name="cAF" Style="background:#f0fff0" onClick='insert("AF")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>B</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cB0" Style="background:#f0fff0" onClick='insert("B0")'></td><td bgcolor="#ddddff"><input type="button" name="cB1" Style="background:#f0fff0" onClick='insert("B1")'></td><td bgcolor="#ddddff"><input type="button" name="cB2" Style="background:#f0fff0" onClick='insert("B2")'></td><td bgcolor="#ddddff"><input type="button" name="cB3" Style="background:#f0fff0" onClick='insert("B3")'></td><td bgcolor="#aaaaff"><input type="button" name="cB4" Style="background:#f0fff0" onClick='insert("B4")'></td><td bgcolor="#ddddff"><input type="button" name="cB5" Style="background:#f0fff0" onClick='insert("B5")'></td><td bgcolor="#ddddff"><input type="button" name="cB6" Style="background:#f0fff0" onClick='insert("B6")'></td><td bgcolor="#ddddff"><input type="button" name="cB7" Style="background:#f0fff0" onClick='insert("B7")'></td><td bgcolor="#aaaaff"><input type="button" name="cB8" Style="background:#f0fff0" onClick='insert("B8")'></td><td bgcolor="#ddddff"><input type="button" name="cB9" Style="background:#f0fff0" onClick='insert("B9")'></td><td bgcolor="#ddddff"><input type="button" name="cBA" Style="background:#f0fff0" onClick='insert("BA")'></td><td bgcolor="#ddddff"><input type="button" name="cBB" Style="background:#f0fff0" onClick='insert("BB")'></td><td bgcolor="#aaaaff"><input type="button" name="cBC" Style="background:#f0fff0" onClick='insert("BC")'></td><td bgcolor="#ddddff"><input type="button" name="cBD" Style="background:#f0fff0" onClick='insert("BD")'></td><td bgcolor="#ddddff"><input type="button" name="cBE" Style="background:#f0fff0" onClick='insert("BE")'></td><td bgcolor="#ddddff"><input type="button" name="cBF" Style="background:#f0fff0" onClick='insert("BF")'></td></tr>
<tr align="center"><td bgcolor="#aaaaff"><B>C</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cC0" Style="background:#f0fff0" onClick='insert("C0")'></td><td bgcolor="#aaaaff"><input type="button" name="cC1" Style="background:#f0fff0" onClick='insert("C1")'></td><td bgcolor="#aaaaff"><input type="button" name="cC2" Style="background:#f0fff0" onClick='insert("C2")'></td><td bgcolor="#aaaaff"><input type="button" name="cC3" Style="background:#f0fff0" onClick='insert("C3")'></td><td bgcolor="#aaaaff"><input type="button" name="cC4" Style="background:#f0fff0" onClick='insert("C4")'></td><td bgcolor="#aaaaff"><input type="button" name="cC5" Style="background:#f0fff0" onClick='insert("C5")'></td><td bgcolor="#aaaaff"><input type="button" name="cC6" Style="background:#f0fff0" onClick='insert("C6")'></td><td bgcolor="#aaaaff"><input type="button" name="cC7" Style="background:#f0fff0" onClick='insert("C7")'></td><td bgcolor="#aaaaff"><input type="button" name="cC8" Style="background:#f0fff0" onClick='insert("C8")'></td><td bgcolor="#aaaaff"><input type="button" name="cC9" Style="background:#f0fff0" onClick='insert("C9")'></td><td bgcolor="#aaaaff"><input type="button" name="cCA" Style="background:#f0fff0" onClick='insert("CA")'></td><td bgcolor="#aaaaff"><input type="button" name="cCB" Style="background:#f0fff0" onClick='insert("CB")'></td><td bgcolor="#aaaaff"><input type="button" name="cCC" Style="background:#f0fff0" onClick='insert("CC")'></td><td bgcolor="#aaaaff"><input type="button" name="cCD" Style="background:#f0fff0" onClick='insert("CD")'></td><td bgcolor="#aaaaff"><input type="button" name="cCE" Style="background:#f0fff0" onClick='insert("CE")'></td><td bgcolor="#aaaaff"><input type="button" name="cCF" Style="background:#f0fff0" onClick='insert("CF")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>D</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cD0" Style="background:#f0fff0" onClick='insert("D0")'></td><td bgcolor="#ddddff"><input type="button" name="cD1" Style="background:#f0fff0" onClick='insert("D1")'></td><td bgcolor="#ddddff"><input type="button" name="cD2" Style="background:#f0fff0" onClick='insert("D2")'></td><td bgcolor="#ddddff"><input type="button" name="cD3" Style="background:#f0fff0" onClick='insert("D3")'></td><td bgcolor="#aaaaff"><input type="button" name="cD4" Style="background:#f0fff0" onClick='insert("D4")'></td><td bgcolor="#ddddff"><input type="button" name="cD5" Style="background:#f0fff0" onClick='insert("D5")'></td><td bgcolor="#ddddff"><input type="button" name="cD6" Style="background:#f0fff0" onClick='insert("D6")'></td><td bgcolor="#ddddff"><input type="button" name="cD7" Style="background:#f0fff0" onClick='insert("D7")'></td><td bgcolor="#aaaaff"><input type="button" name="cD8" Style="background:#f0fff0" onClick='insert("D8")'></td><td bgcolor="#ddddff"><input type="button" name="cD9" Style="background:#f0fff0" onClick='insert("D9")'></td><td bgcolor="#ddddff"><input type="button" name="cDA" Style="background:#f0fff0" onClick='insert("DA")'></td><td bgcolor="#ddddff"><input type="button" name="cDB" Style="background:#f0fff0" onClick='insert("DB")'></td><td bgcolor="#aaaaff"><input type="button" name="cDC" Style="background:#f0fff0" onClick='insert("DC")'></td><td bgcolor="#ddddff"><input type="button" name="cDD" Style="background:#f0fff0" onClick='insert("DD")'></td><td bgcolor="#ddddff"><input type="button" name="cDE" Style="background:#f0fff0" onClick='insert("DE")'></td><td bgcolor="#ddddff"><input type="button" name="cDF" Style="background:#f0fff0" onClick='insert("DF")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>E</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cE0" Style="background:#f0fff0" onClick='insert("E0")'></td><td bgcolor="#ddddff"><input type="button" name="cE1" Style="background:#f0fff0" onClick='insert("E1")'></td><td bgcolor="#ddddff"><input type="button" name="cE2" Style="background:#f0fff0" onClick='insert("E2")'></td><td bgcolor="#ddddff"><input type="button" name="cE3" Style="background:#f0fff0" onClick='insert("E3")'></td><td bgcolor="#aaaaff"><input type="button" name="cE4" Style="background:#f0fff0" onClick='insert("E4")'></td><td bgcolor="#ddddff"><input type="button" name="cE5" Style="background:#f0fff0" onClick='insert("E5")'></td><td bgcolor="#ddddff"><input type="button" name="cE6" Style="background:#f0fff0" onClick='insert("E6")'></td><td bgcolor="#ddddff"><input type="button" name="cE7" Style="background:#f0fff0" onClick='insert("E7")'></td><td bgcolor="#aaaaff"><input type="button" name="cE8" Style="background:#f0fff0" onClick='insert("E8")'></td><td bgcolor="#ddddff"><input type="button" name="cE9" Style="background:#f0fff0" onClick='insert("E9")'></td><td bgcolor="#ddddff"><input type="button" name="cEA" Style="background:#f0fff0" onClick='insert("EA")'></td><td bgcolor="#ddddff"><input type="button" name="cEB" Style="background:#f0fff0" onClick='insert("EB")'></td><td bgcolor="#aaaaff"><input type="button" name="cEC" Style="background:#f0fff0" onClick='insert("EC")'></td><td bgcolor="#ddddff"><input type="button" name="cED" Style="background:#f0fff0" onClick='insert("ED")'></td><td bgcolor="#ddddff"><input type="button" name="cEE" Style="background:#f0fff0" onClick='insert("EE")'></td><td bgcolor="#ddddff"><input type="button" name="cEF" Style="background:#f0fff0" onClick='insert("EF")'></td></tr>
<tr align="center"><td bgcolor="#ddddff"><B>F</B><font size="-1">x</font></td><td bgcolor="#aaaaff"><input type="button" name="cF0" Style="background:#f0fff0" onClick='insert("F0")'></td><td bgcolor="#ddddff"><input type="button" name="cF1" Style="background:#f0fff0" onClick='insert("F1")'></td><td bgcolor="#ddddff"><input type="button" name="cF2" Style="background:#f0fff0" onClick='insert("F2")'></td><td bgcolor="#ddddff"><input type="button" name="cF3" Style="background:#f0fff0" onClick='insert("F3")'></td><td bgcolor="#aaaaff"><input type="button" name="cF4" Style="background:#f0fff0" onClick='insert("F4")'></td><td bgcolor="#ddddff"><input type="button" name="cF5" Style="background:#f0fff0" onClick='insert("F5")'></td><td bgcolor="#ddddff"><input type="button" name="cF6" Style="background:#f0fff0" onClick='insert("F6")'></td><td bgcolor="#ddddff"><input type="button" name="cF7" Style="background:#f0fff0" onClick='insert("F7")'></td><td bgcolor="#aaaaff"><input type="button" name="cF8" Style="background:#f0fff0" onClick='insert("F8")'></td><td bgcolor="#ddddff"><input type="button" name="cF9" Style="background:#f0fff0" onClick='insert("F9")'></td><td bgcolor="#ddddff"><input type="button" name="cFA" Style="background:#f0fff0" onClick='insert("FA")'></td><td bgcolor="#ddddff"><input type="button" name="cFB" Style="background:#f0fff0" onClick='insert("FB")'></td><td bgcolor="#aaaaff"><input type="button" name="cFC" Style="background:#f0fff0" onClick='insert("FC")'></td><td bgcolor="#ddddff"><input type="button" name="cFD" Style="background:#f0fff0" onClick='insert("FD")'></td><td bgcolor="#ddddff"><input type="button" name="cFE" Style="background:#f0fff0" onClick='insert("FE")'></td><td bgcolor="#ddddff"><input type="button" name="cFF" Style="background:#f0fff0" onClick='insert("FF")'></td></tr>
</table>
</form>
</center>
<hr>
<font size="-1">
<B>Notes:</B>
Unicode characters up to uFFFF supported here; see also 
<A HREF="http://www.unicode.org/Public/UNIDATA/Blocks.txt">full list</A>
of character ranges. Many codes may be undefined or unsupported 
by your browser. This page uses no server-side code, so a
downloaded copy will work equally.
Or download the <A HREF="mkcharmap.pl">perl script</A> which 
made this page. Javascript and perl code are &#169; 2003 Alan Iwi and others, 
but may be copied under 
<A HREF="http://www.gnu.org/copyleft/gpl.html">GNU GPL</a>;
see comment lines for more info.
<hr>
<center>
<i>The URL of this page has changed slightly &mdash; the best form to use is
now <tt><a
href="http://www-atm.physics.ox.ac.uk/user/iwi/charmap.html">http://www-atm.physics.ox.ac.uk/user/iwi/charmap.html</a></tt></i></center>
<hr>
</font>
</body>
</html>


<neS<	> s"
"