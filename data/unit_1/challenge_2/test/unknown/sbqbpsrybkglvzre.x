From beginners-return-92436-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 14:02:44 2007
Return-Path: <beginners-return-92436-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5EI2hL9024886
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 14:02:43 -0400
Received: (qmail 21196 invoked by uid 514); 14 Jun 2007 18:02:31 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 24581 invoked from network); 14 Jun 2007 14:22:57 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-0.1 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of northstardomus@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jun 14 14:22:37 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Northstardomus <northstardomus@gmail.com>
Subject: Re: Database insertion, escape issue
Date: Thu, 14 Jun 2007 14:22:16 -0000
Organization: http://groups.google.com
Lines: 42
Message-ID: <1181830936.782640.217300@x35g2000prf.googlegroups.com>
References: <1181605976.566716.57440@g4g2000hsf.googlegroups.com>
   <466EC053.23788.1092561@Jenda.Krynicky.cz>
   <1181666033.860047.209590@g37g2000prf.googlegroups.com>
   <467149AF.24261.5DF6A92@Jenda.Krynicky.cz>
NNTP-Posting-Host: 207.109.1.73
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181830937 13766 127.0.0.1 (14 Jun 2007 14:22:17 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 14 Jun 2007 14:22:17 +0000 (UTC)
In-Reply-To: <467149AF.24261.5DF6A92@Jenda.Krynicky.cz>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: x35g2000prf.googlegroups.com; posting-host=207.109.1.73;
   posting-account=sNFuog0AAAB-uOxC49iR-T4MUn-Sq9e0
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.5 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 14, 6:59 am, J...@Krynicky.cz (Jenda Krynicky) wrote:
> From: Northstardomus <northstardo...@gmail.com>
>
> > ...
> >         $dbh->prepare('INSERT INTO area_status (areaID, survey_date,
> > update_time, status ) VALUES (?,?,?,?)');
> >         $dbh->execute('$values[0]', '$values[1]', '$values[2]',
> > '$values[3]');
>
> Apart from the $sth already explained by others, there is one more
> problem with this code. It seems you already found it as it is not
> present in the examples you give in the later posts, but I'd like to
> point it out anyway.
>
> You cannot use singlequotes around the $values[x] in the ->execute()
> call. You'd insert not the values in the @values array, but the
> literal dollar, "values", opening square brace, one and closing
> brace. Try
>
>  @values = (1,2,3,4);
>  print $values[1], "\n";
>  print '$values[1]', "\n";
>
> Just for reference, you should not use doublequotes around them
> either:
>
>  $dbh->execute("$values[0]", "$values[1]", "$values[2]",
>    "$values[3]");
>
> While this would work (in this case) it forces perl to make copies of
> the values and possibly also an unnecessary number->string
> conversion. I only mention this because I see things like this quite
> often.
>
> Jenda
> ===== J...@Krynicky.cz ===http://Jenda.Krynicky.cz=====
> When it comes to wine, women and song, wizards are allowed
> to get drunk and croon as much as they like.
>         -- Terry Pratchett in Sourcery

Yes, I found that after looking at my database contents!


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

xexfMoac