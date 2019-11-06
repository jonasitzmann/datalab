From r-help-bounces@stat.math.ethz.ch  Tue Jul  3 14:14:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l63IDxL9032153
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 3 Jul 2007 14:14:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63IDIFE008725;
	Tue, 3 Jul 2007 20:13:34 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from pd4mo1so.prod.shaw.ca (shawidc-mo1.cg.shawcable.net
	[24.71.223.10])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l63I5vuf004862
	for <r-help@stat.math.ethz.ch>; Tue, 3 Jul 2007 20:05:58 +0200
Received: from pd3mr2so.prod.shaw.ca
	(pd3mr2so-qfe3.prod.shaw.ca [10.0.141.178]) by l-daemon
	(Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15 2004))
	with ESMTP id <0JKM00BRX7LU74A0@l-daemon> for r-help@stat.math.ethz.ch;
	Tue, 03 Jul 2007 12:05:54 -0600 (MDT)
Received: from pn2ml6so.prod.shaw.ca ([10.0.121.150])
	by pd3mr2so.prod.shaw.ca (Sun Java System Messaging Server 6.2-7.05
	(built Sep
	5 2006)) with ESMTP id <0JKM008VH7LNUPJ1@pd3mr2so.prod.shaw.ca> for
	r-help@stat.math.ethz.ch; Tue, 03 Jul 2007 12:05:49 -0600 (MDT)
Received: from [192.168.1.13] ([24.108.14.144])
	by l-daemon (Sun ONE Messaging Server 6.0 HotFix 1.01 (built Mar 15
	2004))
	with ESMTP id <0JKM00KAG7LO6S60@l-daemon> for r-help@stat.math.ethz.ch;
	Tue, 03 Jul 2007 12:05:49 -0600 (MDT)
Date: Tue, 03 Jul 2007 10:34:10 -0700
From: dave fournier <otter@otter-rsch.com>
To: r-help@stat.math.ethz.ch
Message-id: <468A8892.1080503@otter-rsch.com>
MIME-version: 1.0
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R]  Using odesolve to produce non-negative solutions
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: davef@otter-rsch.com
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

If you didn't get this solved.

I have done parameter estimation with models
defined by ODE's where negative solutions are a problem
and one can only avoid them with great difficulty if the
standard explicit methods for solving the ODE are used. I found that
using implicit methods could be a great help.

For example in the exponential case

     dN/dt = -k*N

the simple finite difference approximation is

     N_{t+1}-N+t
     --------------  = -k*N_t ,  k>=0
        h

   or
     N_{t+1} = N_t -k*h*N_t

   and if  k*h gets too large N_{t+1} goes negative and you are in trouble.

   Consider instead the implicit formulation where the second
   N_t on the RHS is replaced by N_{t+1}  and one gets

     N_{t+1} = N_t/(1+k*h)

    which is correct  for k*h=0 and as k*h--> infinity

   For a more complicated example see

    http://otter-rsch.com/admodel/cc4.html

   for something I called "semi-implicit".
   I hope these ideas will be useful for your problem.


         Cheers,

          Dave





-- 
David A. Fournier
P.O. Box 2040,
Sidney, B.C. V8l 3S3
Canada
Phone/FAX 250-655-3364
http://otter-rsch.com

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

s wyLl