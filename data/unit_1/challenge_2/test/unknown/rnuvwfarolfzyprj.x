From beginners-return-93096-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 12:55:22 2007
Return-Path: <beginners-return-93096-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l65GtLL9028811
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 12:55:21 -0400
Received: (qmail 404 invoked by uid 514); 5 Jul 2007 16:54:45 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 10526 invoked from network); 5 Jul 2007 16:10:53 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of huanxiang.xu@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jul 05 16:10:30 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: herostar1981 <huanxiang.xu@gmail.com>
Subject: Re: a question write to file!
Date: Thu, 05 Jul 2007 09:10:14 -0700
Organization: http://groups.google.com
Lines: 59
Message-ID: <1183651814.711071.6040@k79g2000hse.googlegroups.com>
References: <E350C77ABFDBD242BDD51F5DA07905C1018878A7@SONNE.gw.bringe.net>
NNTP-Posting-Host: 128.128.110.65
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1183651815 5278 127.0.0.1 (5 Jul 2007 16:10:15 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 5 Jul 2007 16:10:15 +0000 (UTC)
In-Reply-To: <E350C77ABFDBD242BDD51F5DA07905C1018878A7@SONNE.gw.bringe.net>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Alexa Toolbar; TheWorld),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: k79g2000hse.googlegroups.com; posting-host=128.128.110.65;
   posting-account=jU-dbw0AAAC6tSxlAtPx_rdTlzZEkK-x
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On 7 5 ,   11 42 , t.baetz...@bringe.com (T Baetzler) wrote:
Thanks...

The following loop is used to format the contents:
for my $key (keys %station)
	{ $sta[$k].="<Placemark>\n <visibility>0</visibility><name>$key</
name><description><![CDATA[<hr><center><h3>a href=http://
globec.whoi.edu>U.S.GLOBEC</a> </h3><img src=\"http://mapservice-
xu.whoi.edu/globec.gif\"><br><P>
<a href=http://mapservice-xu.whoi.edu/maps-bin/globec-xu/map4>GEORGES
BANK MAPSERVER</a></center>
<p><hr><a href=http://globec.whoi.edu/jg/serv/globec/gb/
inventory.html1?project%20eq%20$cruise[$k]>$cruise[$k]</a>
<p>".$key."<center><table border=1><tr><th>instrument</th><th>cast</
th><th>date_time</th><th>se_flag</th><th>lat</th><th>lon</
th><th>depth_w</th><th>depth</th><th>comments</th></tr>";
	  my @tmp_lev0=@{$station{$key}};
	  for (my $p=0;$p<=$#tmp_lev0;$p++)
		{ my @sta_tmp=@{$tmp_lev0[$p]};
 		 $sta[$k].="<tr><td>".join("</td><td>",@sta_tmp)."</td></tr>";
		}
	  $sta[$k].="</table></center><p><hr><center>$date</center>]]></
description>\n"."<Point>\n<coordinates>".$tmp_lev0[0][5].','.
$tmp_lev0[0][4].",0</coordinates>\n </Point></Placemark>\n";
	}

}


And, this  is used to finish the whole file content:
for (my $i=0;$i<=$#data;$i++)
  {      $kml.="<Folder><open>0</open><name>station</name>".
$sta[$i]."</Folder>";}

At this point, if I use following script, I can work as I wish:
print "Content-type: text/html\n\n";
print $kml;

if I use "print FID $kml;", the trouble is coming...

What happened?

BR,
xu
> herostar1981 <huanxiang...@gmail.com> asked:
>
> >     I have a big question.....
> > why are the contents different between what I write to file
> > and what print in screen?
>
> Obviously you are doing something wrong ;-)
>
> If you want us to help you, please send a minimal code sample
> that demonstrates your problem.
>
> TIA,
> Thomas



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

> 
<QGISGleede