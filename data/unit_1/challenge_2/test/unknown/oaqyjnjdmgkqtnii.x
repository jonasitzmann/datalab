From beginners-return-92249-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  8 12:28:07 2007
Return-Path: <beginners-return-92249-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l58GS6hB017522
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 12:28:06 -0400
Received: (qmail 31252 invoked by uid 514); 8 Jun 2007 16:27:55 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31242 invoked from network); 8 Jun 2007 16:27:55 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 8 Jun 2007 16:27:55 -0000
Received: (qmail 7593 invoked by uid 225); 8 Jun 2007 16:27:54 -0000
Delivered-To: beginners@perl.org
Received: (qmail 7589 invoked by alias); 8 Jun 2007 16:27:54 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from lexx.senfdax.de (HELO lexx.senfdax.de) (85.10.209.43)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 08 Jun 2007 09:27:53 -0700
Received: from [85.179.50.222] (helo=nietzsche)
	by lexx.senfdax.de with esmtpsa (TLS-1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.63)
	(envelope-from <martin@senfdax.de>)
	id 1HwhF8-0003jV-S7
	for beginners@perl.org; Fri, 08 Jun 2007 18:23:26 +0200
Date: Fri, 8 Jun 2007 18:27:36 +0200
From: Martin Barth <martin@senfdax.de>
To: beginners@perl.org
Subject: Re: Run a block of sql commands using 'here document'
Message-ID: <20070608182736.79f58291@nietzsche>
In-Reply-To: <EIEIIAMKDIBPECOEKDIKMEMECDAA.lakshmi.sailaja@supersolution.com>
References: <EIEIIAMKDIBPECOEKDIKMEMECDAA.lakshmi.sailaja@supersolution.com>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spam-Score: -3.6 (---)
X-Spam-Report: Content analysis details:   (-3.6 points, 5.0 required)
	pts rule name              description
	---- ---------------------- --------------------------------------------------
	-1.8 ALL_TRUSTED            Nachricht wurde nur über vertrauenswürdige Rechner
	weitergeleitet
	-2.6 BAYES_00               BODY: Spamwahrscheinlichkeit nach Bayes-Test: 0-1%
	[score: 0.0000]
	0.8 AWL                    AWL: From: address is in the auto white-list

Hi,

> I know that using 'Here Documents', we can output multiple lines. But is it
> possible to run a couple of commands?
> 
> $s = qx [sqlplus user/paswd\@schema <<ENDOFSQL
> select 2 from DUAL;
> exit
> ENDOFSQL];

what do you think about that:

open(DBI, "| sqlplus user/passwd\@schmea");
then print DBI with a Here Document?

that should work, shouldn't it?

HTH Martin

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


  

m rn9o