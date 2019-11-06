From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 08:50:14 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62CoCL9013830
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 08:50:13 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62CncUn003761;
	Mon, 2 Jul 2007 14:49:45 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from coriana6.cis.mcmaster.ca (coriana6.CIS.McMaster.CA
	[130.113.128.17])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62CerU6000735
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 14:40:54 +0200
Received: from Gorash7.UTS.McMaster.CA (Gorash7.UTS.McMaster.CA
	[130.113.196.61])
	by coriana6.cis.mcmaster.ca (8.13.7/8.13.7) with ESMTP id
	l62Ceep2011280; Mon, 2 Jul 2007 08:40:48 -0400 (EDT)
Received: from cgpsrv2.cis.mcmaster.ca (cgpsrv2.CIS.mcmaster.ca
	[130.113.64.62])
	by Gorash7.UTS.McMaster.CA (8.13.7/8.13.7) with ESMTP id l62CeMKf024802;
	Mon, 2 Jul 2007 08:40:23 -0400
Received: from [69.128.87.26] (account jfox@univmail.cis.mcmaster.ca)
	by cgpsrv2.cis.mcmaster.ca (CommuniGate Pro WebUser 4.1.8)
	with HTTP id 178017759; Mon, 02 Jul 2007 08:40:26 -0400
From: "John Fox" <jfox@mcmaster.ca>
To: Bill.Venables@csiro.au
X-Mailer: CommuniGate Pro WebUser Interface v.4.1.8
Date: Mon, 02 Jul 2007 08:40:26 -0400
Message-ID: <web-178017759@cgpsrv2.cis.mcmaster.ca>
MIME-Version: 1.0
X-PMX-Version-Mac: 5.3.1.294258, Antispam-Engine: 2.5.1.298604,
	Antispam-Data: 2007.7.2.52333
X-PerlMx-Spam: Gauge=IIIIIII, Probability=7%, Report='RDNS_GENERIC_POOLED 0,
	RDNS_SUSP 0, RDNS_SUSP_GENERIC 0, __CP_URI_IN_BODY 0, __CT 0,
	__CTE 0, __CT_TEXT_PLAIN 0, __HAS_MSGID 0, __HAS_X_MAILER 0,
	__MIME_TEXT_ONLY 0, __MIME_VERSION 0, __SANE_MSGID 0'
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] termplot with uniform y-limits
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

Dear Bill,

Functions in the effects package are somewhat similar to termplot, and
allow you to specify the y-axis limits. For example, modify the last
line of the last example in example(all.effects) to 

plot(eff.pres, ask=FALSE, ylim=c(10, 70))

I hope this helps,
 John

------- original message -------

Does anyone have, or has anyone ever considered making, a version of
'termplot' that allows the user to specify that all plots should have
the same y-limits?

This seems a natural thing to ask for, as the plots share a y-scale.
 If
you don't have the same y-axes you can easily misread the comparative
contributions of the different components. 

Notes: the current version of termplot does not allow the user to
specify ylim.  I checked.

	  the plot tools that come with mgcv do this by default.  Thanks
Simon.

--------------------------------
John Fox, Professor
Department of Sociology
McMaster University
Hamilton, Ontario, Canada
http://socserv.mcmaster.ca/jfox/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

 i> 
nn>, iSe