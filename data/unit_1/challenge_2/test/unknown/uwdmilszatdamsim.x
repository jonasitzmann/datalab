From beginners-return-93086-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 11:31:30 2007
Return-Path: <beginners-return-93086-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l65FVTL9027907
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 11:31:29 -0400
Received: (qmail 13297 invoked by uid 514); 5 Jul 2007 15:31:18 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 24137 invoked from network); 5 Jul 2007 14:57:17 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of huanxiang.xu@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jul 05 14:56:57 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.133.4.7 is neither permitted nor denied by domain of news@google.com)
From: herostar1981 <huanxiang.xu@gmail.com>
Subject: SOS: a question write to file!
Date: Thu, 05 Jul 2007 07:56:43 -0700
Organization: http://groups.google.com
Lines: 72
Message-ID: <1183647403.692070.277640@c77g2000hse.googlegroups.com>
NNTP-Posting-Host: 128.128.110.65
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183647403 18222 127.0.0.1 (5 Jul 2007 14:56:43 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 5 Jul 2007 14:56:43 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (Windows; U; Windows NT 5.1; zh-CN; rv:1.8.1.4) Gecko/20070515 Firefox/2.0.0.4,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: c77g2000hse.googlegroups.com; posting-host=128.128.110.65;
   posting-account=jU-dbw0AAAC6tSxlAtPx_rdTlzZEkK-x
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi anybody,

    I have a big question.....
why are the contents different between what I write to file and what
print in screen?

I write a cgi script. In my opinion, it should write some information
into file which locates /htdocs/tmp.
But I don't know what happened.

It can print in terms of html, however the file is empty.
I don't know how to describe it....
<Placemark>
 <visibility>1</visibility><name>station38</name><description><!
[CDATA[<hr><center><h3>a href=http://globec.whoi.edu>U.S.GLOBEC</a> </
h3><img src="http://mapservice-xu.whoi.edu/globec.gif"><br><P>
<a href=http://mapservice-xu.whoi.edu/maps-bin/globec-xu/map4>GEORGES
BANK MAPSERVER</a></center>
<p><hr><a href=http://globec.whoi.edu/jg/serv/globec/gb/
inventory.html1?project%20eq%20AL9404>AL9404</a>
<p>38<center><table border=1><tr><th>station_id</th><th>instrument</
th><th>cast</th><th>date_time</th><th>se_flag</th><th>lat</th><th>lon</
th><th>depth_w</th><th>depth</th><th>comments</th></tr><tr><td>MkVCTD</
td><td>38</td><td>1994-6-8 04:55</td><td>nd</td><td>41.8008</
td><td>-68.2667</td><td>124.0</td><td>110.0</td><td>nd</td></
tr><tr><td>MkVCTD</td><td>38</td><td>1994-6-8 05:02</td><td>nd</
td><td>41.8017</td><td>-68.2667</td><td>nd</td><td>nd</td><td>nd</td></
tr><tr><td>MOC1</td><td>38</td><td>1994-6-8 05:08</td><td>nd</
td><td>41.8083</td><td>-68.2633</td><td>119.0</td><td>100.0</
td><td>MOC1198</td></tr><tr><td>MOC1</td><td>38</td><td>1994-6-8
05:53</td><td>nd</td><td>41.8017</td><td>-68.2967</td><td>146.0</
td><td>nd</td><td>nd</td></tr></table></center><p><hr><center></
center>]]></description>
<Point>
<coordinates>-68.2667,41.8008,0</coordinates>
 </Point></Placemark>

As you see, this is the html source.

<Placemark>
 <visibility>1</visibility><name>station</name><description><!
[CDATA[<hr><center><h3>a href=http://globec.whoi.edu>U.S.GLOBEC</a> </
h3><img src="http://mapservice-xu.whoi.edu/globec.gif"><br><P>
<a href=http://mapservice-xu.whoi.edu/maps-bin/globec-xu/map4>GEORGES
BANK MAPSERVER</a></center>
<p><hr><a href=http://globec.whoi.edu/jg/serv/globec/gb/
inventory.html1?project%20eq%20></a>
<p><center><table border=1><tr><th>station_id</th><th>instrument</
th><th>cast</th><th>date_time</th><th>se_flag</th><th>lat</th><th>lon</
th><th>depth_w</th><th>depth</th><th>comments</th></tr><tr><td></
td><td></td><td>-- :</td><td></td><td></td><td></td><td></td><td></
td><td></td></tr><tr><td></td><td></td><td>-- :</td><td></td><td></
td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></
td><td>-- :</td><td></td><td></td><td></td><td></td><td></td><td></
td></tr><tr><td></td><td></td><td>-- :</td><td></td><td></td><td></
td><td></td><td></td><td></td></tr></table></center><p><hr><center>Thu
Jul 5 10:36:08 EDT 2007</center>]]></description>
<Point>
<coordinates>,,0</coordinates>
 </Point></Placemark>

This is the file contents..

The table elements are gone.....

Please help me as soon as you can......

Thanks a lot..

Best Regards,
xu


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

:eii2 ADpUs