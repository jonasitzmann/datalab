From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 11:07:52 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5RF7oL9028450
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 11:07:50 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RF6NwN008566;
	Wed, 27 Jun 2007 17:06:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from mtaprod5.gene.com (smtp-out.gene.com [72.34.128.226])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5RF6BWJ008480
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Wed, 27 Jun 2007 17:06:12 +0200
Received: from mta-rwc-1.gene.com (mta-rwc-1.gene.com [128.137.15.60])
	by mtaprod5.gene.com (Switch-3.2.4/Switch-3.2.4) with ESMTP id
	l5RF67e3012690
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=OK);
	Wed, 27 Jun 2007 08:06:08 -0700
Received: from BGUNTERDT2 (dhcp144-77.gene.com [128.137.144.77])
	by mta-rwc-1.gene.com (Switch-3.1.7/Switch-3.1.7) with ESMTP id
	l5RF67hW010913; Wed, 27 Jun 2007 08:06:07 -0700 (PDT)
From: Bert Gunter <gunter.berton@gene.com>
To: "'Gareth Hughes'" <ghughes.email@gmail.com>, <r-help@stat.math.ethz.ch>
Date: Wed, 27 Jun 2007 08:06:06 -0700
Organization: Genentech Inc.
Message-ID: <001501c7b8cc$b0655aa0$4d908980@gne.windows.gene.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
Thread-Index: Ace4yrhm9dmLORB+QOOpK+2Kgt2j0wAAVu9w
In-Reply-To: <3cc99a20706270750w5a77c51eid44db929ad21b5a1@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] lme correlation structures
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

Please read ?lme carefully -- the info you seek is there. In particular, the
weights argument for changing variance weighting by covariates and the
correlation argument for specifying correlation structures.

Pinheiro and Bates's MIXED EFFECT MODELS IN S... is the canonical reference
(which you should get if you want to use R as you said) that exposits the
ideas at greater length.


Bert Gunter
Genentech Nonclinical Statistics

-----Original Message-----
From: r-help-bounces@stat.math.ethz.ch
[mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Gareth Hughes
Sent: Wednesday, June 27, 2007 7:50 AM
To: r-help@stat.math.ethz.ch
Subject: [R] lme correlation structures

Hi all,

I've been using SAS proc mixed to fit linear mixed models and would
like to be able to fit the same models in R. Two things in particular:

1) I have longitudinal data and wish to allow for different repeated
measures covariance parameter estimates for different groups (men and
women), each covariance matrix having the same structure. In proc
mixed this would be done by specifying group= in the REPEATED
statement. Is this simple to do in R? (I've tried form=~time|indv/sex
for example but this doesn't seem to do the job).

2) I've read that other correlation structures can be specified. Does
anyone have any examples of how toeplitz or (first-order)
ante-dependence structures can be specified?

Many thanks,

Gareth

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

u3
e2i <B<R9&EA-