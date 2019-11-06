From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 08:50:42 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ICofL9017598
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 08:50:42 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ICnI3b018930;
	Mon, 18 Jun 2007 14:49:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from tomts20-srv.bellnexxia.net (tomts20.bellnexxia.net
	[209.226.175.74])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5ICn8c3018859
	for <r-help@stat.math.ethz.ch>; Mon, 18 Jun 2007 14:49:09 +0200
Received: from JohnDesktop8300 ([67.71.62.214]) by tomts20-srv.bellnexxia.net
	(InterMail vM.5.01.06.13 201-253-122-130-113-20050324) with ESMTP
	id <20070618124858.ZEHP1637.tomts20-srv.bellnexxia.net@JohnDesktop8300>;
	Mon, 18 Jun 2007 08:48:58 -0400
From: "John Fox" <jfox@mcmaster.ca>
To: "'Des Callaghan'" <descall@blueyonder.co.uk>
Date: Mon, 18 Jun 2007 08:48:55 -0400
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook, Build 11.0.6353
In-Reply-To: <000001c7b17a$dfb1dad0$9f159070$@co.uk>
Thread-Index: Acexet0WEiWEmzu6S2KdXdyFhk2h8AALAgMg
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
Message-Id: <20070618124858.ZEHP1637.tomts20-srv.bellnexxia.net@JohnDesktop8300>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Inverse BoxCox transformation
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

Dear Des,

The following should do the trick:

	invBoxCox <- function(x, lambda)
    		if (lambda == 0) exp(x) else (lambda*x + 1)^(1/lambda)

I hope this helps,
 John

--------------------------------
John Fox, Professor
Department of Sociology
McMaster University
Hamilton, Ontario
Canada L8S 4M4
905-525-9140x23604
http://socserv.mcmaster.ca/jfox 
-------------------------------- 

> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Des Callaghan
> Sent: Monday, June 18, 2007 3:33 AM
> To: r-help@stat.math.ethz.ch
> Subject: [R] Inverse BoxCox transformation
> 
> Hi,
>  
> I can't seem to find a function in R that will reverse a 
> BoxCox transformation. Can somebody help me locate one 
> please? Thanks in advance.
>  
> Best wishes,
> Des
>  
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

1@fslEa5