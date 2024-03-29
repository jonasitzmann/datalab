From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 04:26:43 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S8QgL9007817
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 04:26:43 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S8PuSw002505;
	Thu, 28 Jun 2007 10:26:13 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S8PGsL002069
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 10:25:16 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5S8P8Or020646; 
	Thu, 28 Jun 2007 09:25:08 +0100 (BST)
Date: Thu, 28 Jun 2007 09:25:07 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Wolfram Fischer <wolfram@fischer-zim.ch>
In-Reply-To: <20070628074357.GA4502@s1x.fischer-zim.local>
Message-ID: <Pine.LNX.4.64.0706280921230.4206@gannet.stats.ox.ac.uk>
References: <20070628074357.GA4502@s1x.fischer-zim.local>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] : regular expressions: escaping a dot
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

On Thu, 28 Jun 2007, Wolfram Fischer wrote:

> What's really the problem with:
>
>> regexpr( '\.odt$', "xxxxYodt", perl=TRUE )
> 	Warning: '\.' is an unrecognized escape in a character string
> 	Warning: unrecognized escape removed from "\.odt$"
> 	[1] 5
> 	attr(,"match.length")
> 	[1] 4
>
> I know that I could use:
>> regexpr( '[.]odt$', "xxxxYodt", perl=TRUE )
>
> But it seems to me that the first expression is also
> an accepted regular expression in accordance with perl.

This is explained in ?regexp (in the See Also of ?regexpr):

      Patterns are described here as they would be printed by 'cat': _do
      remember that backslashes need to be doubled when entering R
      character strings from the keyboard_.

and in the R FAQ and ....

-- 
Brian D. Ripley,                  ripley@stats.ox.ac.uk
Professor of Applied Statistics,  http://www.stats.ox.ac.uk/~ripley/
University of Oxford,             Tel:  +44 1865 272861 (self)
1 South Parks Road,                     +44 1865 272866 (PA)
Oxford OX1 3TG, UK                Fax:  +44 1865 272595

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

       

 /Nt