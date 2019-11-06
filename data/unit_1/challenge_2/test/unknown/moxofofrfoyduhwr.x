From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:29:06 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCT5L9028093
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:29:05 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PCSJPg026200;
	Mon, 25 Jun 2007 14:28:38 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mercury.cshl.edu (mercury.cshl.edu [143.48.1.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5PCO080024625
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Mon, 25 Jun 2007 14:24:00 +0200
Received: from fe01.cshl.edu (fe01.cshl.edu [143.48.42.50])
	by mercury.cshl.edu (8.13.8/8.13.8) with ESMTP id l5PCIIlZ003224;
	Mon, 25 Jun 2007 08:18:18 -0400 (EDT)
	(envelope-from rosenfel@cshl.edu)
Received: from mailbox05.cshl.edu ([143.48.42.49]) by fe01.cshl.edu with
	Microsoft SMTPSVC(6.0.3790.3959); Mon, 25 Jun 2007 08:23:58 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Mon, 25 Jun 2007 08:20:38 -0400
Message-ID: <4A7F2400BAF11B4DBC4BF3D2046593E20188517F@mailbox05.cshl.edu>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Re : [R] Half of a heatmap
Thread-Index: Ace3EaZ+naAqiIC5QPaMO8oI4oeIUQAEZbvZ
References: <31b34fca0706250314l80c7deeucd0f3ff2997bd97@mail.gmail.com>
From: "Rosenfeld, Jeffrey" <rosenfel@cshl.edu>
To: "Neil Shephard" <nshephard@gmail.com>, <r-help@stat.math.ethz.ch>
X-OriginalArrivalTime: 25 Jun 2007 12:23:58.0211 (UTC)
	FILETIME=[B46CB530:01C7B723]
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5PCO080024625
Subject: Re: [R] Re :  Half of a heatmap
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

Thank you for your reply.  I have looked at LDheatmap, but it does not seem to do what I want and seems to only work well for LD data.  I was looking for something that would produce a figure identical to what heatmap.2 gives me, including the proper X and Y-axis labels and a dendogram, except that it would only have half of the map.  Preferably, it would have the Color Key in the place where the other triangle of the heatmap would be, to save space.


Jeff


-----Original Message-----
From: Neil Shephard [mailto:nshephard@gmail.com]
Sent: Mon 6/25/2007 6:14 AM
To: r-help@stat.math.ethz.ch
Cc: Rosenfeld, Jeffrey
Subject: Re : [R] Half of a heatmap
 
> I am trying to produce a heatmap of pairwise correlations, but since the matrix is
> symmetric, I only need either the upper or the lower triangle.  I have scoured the
> web and R documentation, but I have not been able to find a way to produce such a
> figure.  Is there a simple way to produce a heat map with only the part above or
> below the diagonal?

You might want to check out the LDheatmap() package which can generate
the plots you describe.  The help indicates that it accepts a matrix
of pair-wise linkage disequilibrium measures, one of which is R^2 (the
correlation coefficient between loci), but I suspect you could simply
pass it a matrix of correlation coefficents.

Hope that helps,

Neil
-- 
"In mathematics you don't understand things. You just get used to
them."  - Johann von Neumann

Email - nshephard@gmail.com / n.shephard@sheffield.ac.uk
Website - http://slack.ser.man.ac.uk/
Photos - http://www.flickr.com/photos/slackline/

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

 omA