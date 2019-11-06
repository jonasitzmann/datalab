From beginners-return-92304-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 09:49:19 2007
Return-Path: <beginners-return-92304-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5CDnIL9026961
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 09:49:18 -0400
Received: (qmail 10229 invoked by uid 514); 12 Jun 2007 13:48:56 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 10138 invoked from network); 12 Jun 2007 13:48:55 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 12 Jun 2007 13:48:55 -0000
Received: (qmail 22050 invoked by uid 225); 12 Jun 2007 13:48:55 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22042 invoked by alias); 12 Jun 2007 13:48:54 -0000
X-Spam-Status: No, hits=0.0 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from h205.core.ignum.cz (HELO h205.core.ignum.cz) (217.31.49.205)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 06:48:45 -0700
Received: from localhost (localhost [127.0.0.1])
	by hroch.core.ignum.cz (Postfix) with SMTP id E94AF58CFC3
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:22 +0200 (CEST)
Received: from kartac.core.ignum.cz (kartac.local.ignum.cz [192.168.1.62])
	by hroch.core.ignum.cz (Postfix) with ESMTP id D802C58D066
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:22 +0200 (CEST)
Received: from [10.118.11.232] (unknown [194.228.230.147])
	by kartac.core.ignum.cz (Postfix) with ESMTP id A155A24CFA0
	for <beginners@perl.org>; Tue, 12 Jun 2007 15:48:35 +0200 (CEST)
From: "Jenda Krynicky" <Jenda@Krynicky.cz>
To: Beginners List <beginners@perl.org>
Date: Tue, 12 Jun 2007 15:48:35 +0200
MIME-Version: 1.0
Subject: Re: Database insertion, escape issue
Message-ID: <466EC053.23788.1092561@Jenda.Krynicky.cz>
Priority: normal
In-reply-to: <466E87DF.3000500@earthlink.net>
References: <1181605976.566716.57440@g4g2000hsf.googlegroups.com>, <466E87DF.3000500@earthlink.net>
X-mailer: Pegasus Mail for Windows (4.41)
Content-type: text/plain; charset=US-ASCII
Content-transfer-encoding: 7BIT
Content-description: Mail message body

From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
> On 06/11/2007 06:52 PM, Northstardomus wrote:
> > [...]
> >         print "<br/>Inserting into Database , @values.";
> 
> Use the "quotemeta" function to escape special characters
> that may be in the values.

Please don't!
 
> 	my @values_copy = @values;
> 	@values = map quotemeta($_), @values;
> 
> 
> >         $dbh->do("INSERT INTO area_status (areaID, survey_date,
> > update_time,
> > 
> > status ) VALUES ('$values[0]', '$values[1]', '$values[2]',
> > '$values[3]')");
> >         $dbh->disconnect();
> >     }
> > }
> > 
> > 
> 
> Read "perldoc -f quotemeta"

Please do!

The quotemeta() should NOT be used to escape data for the database. 
It was not designed for that and it knows nothing about your 
database. So it will most likely escape too much (it doesn't look too 
professional to display the text with backslashes scattered 
everywhere) and/or it may escape something in a different way than 
the database expects.

Either use the DATABASE SPECIFIC $dbh->quote() or even better use 
$dbh->prepare() and placeholders. That's by far the safest and most 
efficient solution.

Jenda
===== Jenda@Krynicky.cz === http://Jenda.Krynicky.cz =====
When it comes to wine, women and song, wizards are allowed 
to get drunk and croon as much as they like.
	-- Terry Pratchett in Sourcery


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

dm;oUc