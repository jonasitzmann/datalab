From beginners-return-92253-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 14:13:40 2007
Return-Path: <beginners-return-92253-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l58IDchB018489
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 14:13:39 -0400
Received: (qmail 32408 invoked by uid 514); 8 Jun 2007 18:13:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32399 invoked from network); 8 Jun 2007 18:13:27 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 8 Jun 2007 18:13:27 -0000
Received: (qmail 24506 invoked by uid 225); 8 Jun 2007 18:13:26 -0000
Delivered-To: beginners@perl.org
Received: (qmail 24501 invoked by alias); 8 Jun 2007 18:13:26 -0000
X-Spam-Status: No, hits=-0.2 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of lakshmi.sailaja@supersolution.com designates 209.23.137.118 as permitted sender)
Received: from mail.supersolution.com (HELO mail.supersolution.com) (209.23.137.118)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 08 Jun 2007 11:13:23 -0700
Received: from cornelia (cornelia.supersolution.com [192.168.78.137])
	by mail.supersolution.com (Postfix) with ESMTP id 58F7D91E6;
	Fri,  8 Jun 2007 13:13:19 -0500 (CDT)
Reply-To: <lakshmi.sailaja@supersolution.com>
From: "Lakshmi Sailaja" <lakshmi.sailaja@supersolution.com>
To: "Adriano Ferreira" <a.r.ferreira@gmail.com>, <beginners@perl.org>
Subject: RE: Run a block of sql commands using 'here document'
Date: Fri, 8 Jun 2007 13:13:19 -0500
Message-ID: <EIEIIAMKDIBPECOEKDIKAEMFCDAA.lakshmi.sailaja@supersolution.com>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3 (Normal)
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook IMO, Build 9.0.6604 (9.0.2911.0)
x-mimeole: Produced By Microsoft MimeOLE V6.00.2800.1441
Importance: Normal
In-Reply-To: <73ddeb6c0706080955p49138e8djddbc62230c4eda69@mail.gmail.com>

Cool...This worked!!!

Thanks a zillion for the response!!

Thanks & Regards,
Lakshmi
952-833-1220

-----Original Message-----
From: Adriano Ferreira [mailto:a.r.ferreira@gmail.com]
Sent: Friday, June 08, 2007 11:56 AM
To: beginners@perl.org
Subject: Re: Run a block of sql commands using 'here document'


On 6/8/07, Martin Barth <martin@senfdax.de> wrote:
> Hi,
>
> > I know that using 'Here Documents', we can output multiple lines. But is
it
> > possible to run a couple of commands?
> >
> > $s = qx [sqlplus user/paswd\@schema <<ENDOFSQL
> > select 2 from DUAL;
> > exit
> > ENDOFSQL];
>
> what do you think about that:
>
> open(DBI, "| sqlplus user/passwd\@schmea");
> then print DBI with a Here Document?
>
> that should work, shouldn't it?

Martin's idea seems the way to go. You can abstract it via

sub sqlplus {
       my $param = shift;
       my $script_text = shift;
       open my $script, "| sqlplus $param" or die $!;
       print $script $script_text;
       close $script or die $!;
}

sqlplus("user/paswd@schema", <<SCRIPT );
 select 2 from DUAL;
 exit
SCRIPT

Another implementation could use File::Temp.


sub sqlplus {
       my $param = shift;
       my $script_text = shift;
       require File::Temp;
       my ($fh, $filename) = File::Temp::tempfile;
       print $fh $script_text;
       close $fh;
       system "sqlplus $param \@$tempfile"
}

(untested)

--
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/





-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


 

I7>eEaER<0e