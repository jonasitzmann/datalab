From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 16:33:10 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EKX9L9026171
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 16:33:10 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EKW4ku027114;
	Thu, 14 Jun 2007 22:32:11 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE autolearn=no version=3.2.0
Received: from outbound7-sin-R.bigfish.com (outbound-sin.frontbridge.com
	[207.46.51.80])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EKH7Qn021565
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 22:17:10 +0200
Received: from outbound7-sin.bigfish.com (localhost.localdomain [127.0.0.1])
	by outbound7-sin-R.bigfish.com (Postfix) with ESMTP id CDB1A5126E4
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:17:06 +0000 (UTC)
Received: from mail148-sin-R.bigfish.com (unknown [10.3.40.3])
	by outbound7-sin.bigfish.com (Postfix) with ESMTP id B9D0E134005E
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:17:06 +0000 (UTC)
Received: from mail148-sin (localhost.localdomain [127.0.0.1])
	by mail148-sin-R.bigfish.com (Postfix) with ESMTP id B007C1030202
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:17:06 +0000 (UTC)
X-BigFish: V
X-MS-Exchange-Organization-Antispam-Report: OrigIP: 216.65.215.221;
	Service: EHS
Received: by mail148-sin (MessageSwitch) id 1181852226660120_18511;
	Thu, 14 Jun 2007 20:17:06 +0000 (UCT)
Received: from AIRHUB1.IRVINE.EDWARDS.COM (unknown [216.65.215.221])
	by mail148-sin.bigfish.com (Postfix) with ESMTP id 503188D0058
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 20:17:06 +0000 (UTC)
To: r-help@stat.math.ethz.ch
X-Mailer: Lotus Notes Release 6.5.5 November 30, 2005
Message-ID: <OF9AEA0D70.0C0D2A44-ON882572FA.0066D600-882572FA.006F6C63@irvine.edwards.com>
From: Cody_Hamilton@Edwards.com
Date: Thu, 14 Jun 2007 13:19:13 -0700
X-MIMETrack: Serialize by Router on AIRHUB1/Edwards(Release 6.5.5FP2|October
	04, 2006) at 06/14/2007 13:19:17
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: Re: [R] R vs. Splus in Pharma/Devices Industry
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


Greg,

This is very interesting.  Perhaps something similar could be worked out
here.  Do you have to get MS Word users to work only with the template you
provide, or can they provide you any old MS Word document?

Regards, -Cody

Cody Hamilton, PhD
Edwards Lifesciences

But sweave is expanding.  There is a driver for HTML sweaving in the
R2HTML package and the odfWeave package allows you to sweave with open
office docs (which can be converted to/from MS word).  I personally like
using LaTeX and the original sweave, but I work with people who want
everything in MS word or similar, so for them I will create a template
file in open office, odfWeave that, convert to MS word and send that to
them.

I think the offset is more that S-PLUS 8 is supposed to implement many
of the things that R does now (I don't know which, I'm waiting for my
copy of 8), so soon it may be possible to sweave in both.

--
Gregory (Greg) L. Snow Ph.D.
Statistical Data Center
Intermountain Healthcare
greg.snow@intermountainmail.org
(801) 408-8111



> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of
> Cody_Hamilton@edwards.com
> Sent: Wednesday, June 13, 2007 4:07 PM
> To: r-help@stat.math.ethz.ch
> Subject: Re: [R] R vs. Splus in Pharma/Devices Industry
>
>
> I should have also noted that Sweave is available for use
> with R.  This is offset, however, by the fact that I will
> probably never be able to convince anyone to use Latex.  This
> is a pity as I often find myself admiring reports done in
> Latex as opposed to the ones I have worked on in MS Word.
>
> Cody Hamilton, PhD
> Edwards Lifesciences
>
> As always, I am speaking for myself and not necessarily for
> Edwards Lifesciences.


	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

eCR1ut