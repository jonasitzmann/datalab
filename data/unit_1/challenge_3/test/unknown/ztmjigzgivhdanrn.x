





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="EN" xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/SubPages.dwt.cfm" codeOutsideHTMLIsLocked="false" -->
<head>
<title>University of Abertay Dundee</title>
<meta name="robots" content="index" />
<meta http-equiv="Content-Language" content="en-gb" />
<meta name="title" content="University of Abertay Dundee" />
<meta name="description" content="Welcome to the Homepage of The University of Abertay, Dundee, Scotland, UK. Abertay offers world-leading courses in computer arts and computer games technology is home to the International Centre for Computer Games & Virtual Entertainment (IC-CAVE) - unique in Europe. Abertay is based in Scotlandâs 4th largest City and is the sunniest city in Scotland with over 1400 hours of sunshine per year." />
<meta name="keywords" content="Abertay, university, Dundee, courses, Scotland, course, management, student, computer, application,
Games, college, postgraduate, business, forensic, library, international, school, jobs, science, nursing, mba, studies, engineering, degree, crime, graduation, technology, research, undergraduate, prospectus, education, teaching, UK, union, law, Scottish, MSc, BA, languages, management, learning, city, clearing, UCAS, alumni, graduate, support, welcome, programme, Britain, H.E., HE, FE, F.E., higher, college" />
<meta name="author" content="webservices" />
<link href="http://www.abertay.ac.uk/Images/fav.ico" rel="icon" type="image"/>





<!-- InstanceBeginEditable name="Scripts" -->
<script language="javascript" type="text/javascript">

function checkemail(address){
var str=address
var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
if (filter.test(str))
return true;
else{
return false;
}
return (testresults)
}

function checkData() {
 if (document.feedback.From_Email.value == "") {
 	alert("Please enter your email address");
	document.feedback.From_Email.focus();
	return false;
	}
 if (document.feedback.Comment.value == "") {
 	alert("Please enter your comment");
	document.feedback.Comment.focus();
	return false;
	}
 if (!checkemail(document.feedback.From_Email.value)) {
 	alert("Please enter a valid email address");
	document.feedback.From_Email.focus();
	return false;
	}
return true;
}
</script>


<!-- InstanceEndEditable -->
</head>
<body>

<!-- Access Keys -->
<a href="http://www.abertay.ac.uk//help/AccessKeys.cfm?Key=997" accesskey="0" title="Access Keys (access key: 0)"></a>
<a href="http://www.abertay.ac.uk/index.cfm?Key=000" accesskey="1" title="Home Page (access key: 1)"></a>
<a href="http://www.abertay.ac.uk/Search/index.cfm?Key=011.001" accesskey="2" title="Search (access key: 2)"></a>
<a href="/Help/feedback.cfm?printer=TRUE&amp;printer=TRUE&Key=995" target="_blank" accesskey="3" title="Print version (text only) (access key: 3)"></a>
<a href="#skip" accesskey="4" title="Skip to main content (access key: 4)"></a>
<a href="http://www.abertay.ac.uk//A-Z.cfm?Key=011" accesskey="5" title="A-Z index (access key: 5)"></a>
<a href="http://www.abertay.ac.uk//Help/ContactUs.cfm?Key=999" accesskey="6" title="Contact Us (access key: 6)"></a>


<div class="bodyminwidth">
<div class="bodycontainer">


<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td rowspan="2"><img src="http://www.abertay.ac.uk/Images/uad_logo_print.gif" style="border:0px; height:75px; width:163px;" alt="Printable Version"/></td>
		<td align="center"><h2>www.abertay.ac.uk</h2></td>
	</tr>
</table>


<div id="middlecolumn">
<div class="minwidth">
<div class="container">
<div class="outercontent">


<div id="content">
<!-- InstanceBeginEditable name="MainBody" -->
<form action="feedback_email.cfm" method="post" name="feedback" id="feedback" onSubmit="return checkData()">
<h1>Website Feedback</h1>
Please use this form to help us improve the functionality, design and content of this site. To allow us to contact you, please enter your details below. If you require information about courses or wish to request a copy of our prospectus please use our <a href="../questions/" rel="external" title="Got a Question">'Got a Question'</a> page.<br /><br />
<p>* Denotes a field which must be entered.</p>
<table width="90%" border="0" cellpadding="4" cellspacing="2">
	<tr valign="top"> 
      <td>
	  	<p><label for="Name">Name:</label><br />
          <input type="text" name="Name" size="50" />
        </p>
        <p><label for="From_Email">* Email:</label><br />
          <input type="text" name="From_Email" size="50" />
        </p>
        <p><label for="Phone">Telephone:</label><br />
          <input type="text" name="Phone" size="50" />
        </p>
        <p><label for="Comment">* Comment:</label><br />
          <textarea name="Comment" rows="10" cols="45"></textarea>
        </p></td>
    </tr>
    <tr valign="top"> 
      <td colspan="2"><input type="submit" name="Submit" value="Submit" /> </td>
    </tr>
  </table>
</form>
<!-- InstanceEndEditable -->
</div>
</div>
</div>
</div>
</div>


</div>
</div>

<!-- Begin SitestatIX code -->
<script type='text/javascript'>
<!--
function sitestat(ns_l){ns_l+='&amp;ns__t='+(new Date()).getTime();ns_pixelUrl=ns_l;
ns_0=document.referrer;
ns_0=(ns_0.lastIndexOf('/')==ns_0.length-1)?ns_0.substring(ns_0.lastIndexOf('/'),0):ns_0;
if(ns_0.length>0)ns_l+='&amp;ns_referrer='+escape(ns_0);
if(document.images){ns_1=new Image();ns_1.src=ns_l;}else
document.write('<img src="'+ns_l+'" width="1" height="1" alt="">');}

//remove http://xxx.xxx.xxx.xx/
counter_name=document.URL.replace(/https?:\/\/([a-zA-Z0-9]+(\.)?){1,4}\//g, "");
//remove [?|&]Key=000.000.00
counter_name=counter_name.replace(/[\?|\&]Key\=([0-9]{1,4}\.?){1,4}/g, "");
//remove .cfm .htm .html extension
counter_name=counter_name.replace(/(\/index)?(\.htm|\.html|\.cfm)/g, "");
//remove jsessionid, CFTOKEN, CFID
counter_name=counter_name.replace(/[\?|\&]CFID\=[0-9]+/g,"");
counter_name=counter_name.replace(/[\?|\&]CFTOKEN\=[0-9]+/g,"");
counter_name=counter_name.replace(/[\?|\&]jsessionid\=[a-f0-9]+\$..\$...\$/g,"");
// remove printer attribute
counter_name=counter_name.replace(/[\?|\&]printer\=TRUE/g,"");



//global find / and change to .
    counter_name = counter_name.replace(/\//g, ".");
//global find + and change to _
 counter_name = counter_name.replace(/\+/g, "_");
//global find ? and change to _
 counter_name = counter_name.replace(/\?/g, "_");
//global find & and change to _
    counter_name = counter_name.replace(/\&/g, "_");
//global find = and change to _
    counter_name = counter_name.replace(/\=/g, "_");
//global find %20 and change to _
 counter_name = counter_name.replace(/%20/g, "_");
//global find # and change to _
 counter_name = counter_name.replace(/\#/g, "_");

sitestat("http://uk.sitestat.com/abertay/abertay-ext/s?Home." + counter_name);


//-->
</script>
<noscript>
<div>
<img src='https://uk.sitestat.com/abertay/abertay-ext/s?javascriptoff' width='1' height='1' alt='' />
</div>
</noscript>




</body>
<!-- InstanceEnd --></html>



/b niUtunt