From r-help-bounces@stat.math.ethz.ch  Fri Jun  1 16:45:54 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l51KjrhB014607
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 16:45:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51Ki5Vq008151;
	Fri, 1 Jun 2007 22:44:30 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ipex3.johnshopkins.edu (ipex3.johnshopkins.edu
	[128.220.161.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l51KhuFu008115
	(version=TLSv1/SSLv3 cipher=RC4-SHA bits=128 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Fri, 1 Jun 2007 22:43:57 +0200
Received: from dom-59mfy81.monument1.jhmi.edu (HELO DOM59MFY81)
	([10.16.148.124]) by ipex3.johnshopkins.edu with ESMTP/TLS/RC4-MD5;
	01 Jun 2007 16:43:56 -0400
X-BrightmailFiltered: true
X-Brightmail-Tracker: AAAAAA==
X-IronPort-AV: i="4.16,373,1175486400"; 
	d="scan'208,217"; a="306535695:sNHT64079408"
From: "Ravi Varadhan" <rvaradhan@jhmi.edu>
To: "'R-help'" <r-help@stat.math.ethz.ch>
Date: Fri, 1 Jun 2007 16:43:55 -0400
Message-ID: <001101c7a48d$929faaf0$7c94100a@win.ad.jhu.edu>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MIMEOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
Thread-index: AcekjZKFNdpd0eTxRzCGvZqm3UeuWQ==
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] An extension of Gabriel's biplot
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

Hi All,

 

I would like to extend the standard biplot of Grabriel (1971), which is done
by the R function biplot().  Rather than just showing the variables as
vectors (with arrows at end point), I would like to show them as line
segments, where the segment runs from minimum value of the variable to its
maximum.  In other words, I would like to produce a plot similar to that
shown in Figure 1 of Gabriel and Odoroff (1990), rather than the classical
biplot shown in Figure 2 of the same paper.   Has anyone generated biplots
similar to Figure 1 of Gabriel and Odoroff?

 

Any help is greatly appreciated.

 

Best,

Ravi.

----------------------------------------------------------------------------
-------

Ravi Varadhan, Ph.D.

Assistant Professor, The Center on Aging and Health

Division of Geriatric Medicine and Gerontology 

Johns Hopkins University

Ph: (410) 502-2619

Fax: (410) 614-9625

Email: rvaradhan@jhmi.edu

Webpage:  http://www.jhsph.edu/agingandhealth/People/Faculty/Varadhan.html

 

----------------------------------------------------------------------------
--------

 


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

< >-