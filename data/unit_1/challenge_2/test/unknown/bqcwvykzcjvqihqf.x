From beginners-return-92976-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jul  3 01:29:12 2007
Return-Path: <beginners-return-92976-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l635TAL9024093
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 01:29:11 -0400
Received: (qmail 27624 invoked by uid 514); 3 Jul 2007 05:29:01 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 27614 invoked from network); 3 Jul 2007 05:29:01 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 3 Jul 2007 05:29:01 -0000
Received: (qmail 5951 invoked by uid 225); 3 Jul 2007 05:29:01 -0000
Delivered-To: beginners@perl.org
Received: (qmail 5947 invoked by alias); 3 Jul 2007 05:29:00 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of jcasale@activenetwerx.com designates 24.71.223.10 as permitted sender)
Received: from shawidc-mo1.cg.shawcable.net (HELO pd4mo3so.prod.shaw.ca) (24.71.223.10)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Mon, 02 Jul 2007 22:28:56 -0700
Received: from pd3mr2so.prod.shaw.ca
 (pd3mr2so-qfe3.prod.shaw.ca [10.0.141.178]) by l-daemon
 (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKL007GP8K4IZ20@l-daemon> for beginners@perl.org; Mon,
 02 Jul 2007 23:28:52 -0600 (MDT)
Received: from pn2ml1so.prod.shaw.ca ([10.0.121.145])
 by pd3mr2so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05 (built Sep
 5 2006)) with ESMTP id <0JKL005C18K4OXU0@pd3mr2so.prod.shaw.ca> for
 beginners@perl.org; Mon, 02 Jul 2007 23:28:52 -0600 (MDT)
Received: from mail.activenetwerx.com ([68.144.63.12])
 by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
 with ESMTP id <0JKL00KG28K3OX66@l-daemon> for beginners@perl.org; Mon,
 02 Jul 2007 23:28:51 -0600 (MDT)
Received: from AN-EX.ActiveNetwerx.int (an-ex.activenetwerx.int [192.168.5.3])
	by mail.activenetwerx.com (Postfix) with ESMTP id C389E2821E; Mon,
 02 Jul 2007 23:28:26 -0600 (MDT)
Received: from an-ex.ActiveNetwerx.int ([192.168.5.3])
 by an-ex.ActiveNetwerx.int ([192.168.5.3]) with mapi; Mon,
 02 Jul 2007 23:28:47 -0600
Date: Mon, 02 Jul 2007 23:28:47 -0600
From: "Joseph L. Casale" <JCasale@ActiveNetwerx.com>
Subject: RE: Conditional question
In-reply-to: <58ce48dc0707022205m1447da5cxd30fadeefb25cee9@mail.gmail.com>
To: "'Chas Owens'" <chas.owens@gmail.com>
Cc: "beginners@perl.org" <beginners@perl.org>
Message-id: <80D663F66DF55241BD12E3DB42DDF132045367CCC5@an-ex.ActiveNetwerx.int>
MIME-version: 1.0
Content-type: text/plain; charset=us-ascii
Content-language: en-US
Accept-Language: en-US
Thread-topic: Conditional question
Thread-index: Ace9Mp/8+uX7D6dNRSGf+//9keifBQAABbYg
acceptlanguage: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-ActiveNetwerx-MailScanner-ESVA-Information: Please contact the ISP for more
 information
X-ActiveNetwerx-MailScanner-ESVA: Found to be clean
X-ActiveNetwerx-MailScanner-ESVA-From: jcasale@activenetwerx.com
References: 
 <80D663F66DF55241BD12E3DB42DDF132045367CCC4@an-ex.ActiveNetwerx.int>
 <58ce48dc0707022205m1447da5cxd30fadeefb25cee9@mail.gmail.com>
X-Old-Spam-Status: No
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l635TAL9024093

Heh, I never tried to use "and"? I assumed it wasn't that simple!
Problem with learning something from the beginning is I don't even know what that's called so searching the net is rather hard:)

I'll try this!

Thanks.
jlc

-----Original Message-----
From: Chas Owens [mailto:chas.owens@gmail.com]
Sent: Monday, July 02, 2007 11:05 PM
To: Joseph L. Casale
Cc: beginners@perl.org
Subject: Re: Conditional question

On 7/3/07, Joseph L. Casale <JCasale@activenetwerx.com> wrote:
> I want to script an "if" based on two conditions, var1=0 and var2=1.
> Is there some quicker way to write this in one "if" statement like:
>
> If ($var1=0 ?and? var2=1) {
>                 Do my stuff
> }
>
> I know I can nest a second if, but just hoped I could do it quicker :)
>
> Thanks!
> jlc

um, how about

if ($var1 == 0 and $var2) {
    #do stuff
}

--
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/







-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



        

l
+bN
/a