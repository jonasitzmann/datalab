From r-help-bounces@stat.math.ethz.ch  Wed Jun 20 07:47:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5KBkwL9009425
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 07:46:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KBjQQu005161;
	Wed, 20 Jun 2007 13:46:29 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mail.precheza.cz (mail.precheza.cz [80.188.29.243])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5KBNZIC028082
	for <r-help@stat.math.ethz.ch>; Wed, 20 Jun 2007 13:23:35 +0200
Received: from localhost (localhost [127.0.0.1])
	by mail.precheza.cz (Mailer) with ESMTP id AC8DB34E586;
	Wed, 20 Jun 2007 13:23:33 +0200 (CEST)
Received: from mail.precheza.cz ([127.0.0.1])
	by localhost (mail.precheza.cz [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 28483-01; Wed, 20 Jun 2007 13:23:30 +0200 (CEST)
Received: from n5en1.precheza.cz (n5en1.precheza.cz [192.168.210.35])
	by mail.precheza.cz (Mailer) with ESMTP id DE6F434E587;
	Wed, 20 Jun 2007 13:23:29 +0200 (CEST)
In-Reply-To: <200706201247.12054.amicogodzilla@bruttocarattere.org>
To: amicogodzilla@bruttocarattere.org
MIME-Version: 1.0
X-Mailer: Lotus Notes Release 7.0.1 January 17, 2006
Message-ID: <OF1E093486.422B9307-ONC1257300.003E734A-C1257300.003E938A@precheza.cz>
From: Petr PIKAL <petr.pikal@precheza.cz>
Date: Wed, 20 Jun 2007 13:23:28 +0200
X-MIMETrack: Serialize by Router on SRVDomino/PRECHEZA(Release 7.0.1FP1 | May
	25, 2006) at 20.06.2007 13:23:30,
	Serialize complete at 20.06.2007 13:23:30
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: [R] Odp:  extract elements
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

Hi

you can use tail

tail(data, -95)

gives you all but first 95 records.

Regards


Petr Pikal
petr.pikal@precheza.cz

r-help-bounces@stat.math.ethz.ch napsal dne 20.06.2007 12:47:11:

> Dear R users,
> just another little question... are there other ways, I mean more easy 
to 
> write, to obtain the same result I got with:
> 
> data[95:length(dati[,1]), ]
> 
> where data is a data frame
> 
> to extract the last elements starting from a fixed position?
> 
> thank you very much
> 
> best regards
>    Manuele PEsenti
> -- 
> Manuele Pesenti
>    manuele@inventati.org
>    amicogodzilla@jabber.linux.it
>    http://mpesenti.polito.it
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

               

v/oZ  no+ cma