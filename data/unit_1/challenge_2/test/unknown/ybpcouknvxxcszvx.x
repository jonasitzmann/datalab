From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 10:27:32 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SERUL9011742
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 10:27:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SEQEm2019481;
	Thu, 28 Jun 2007 16:26:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from markov.stats.ox.ac.uk (markov.stats.ox.ac.uk [163.1.210.1])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SE8btO011175
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 16:08:37 +0200
Received: from gannet.stats.ox.ac.uk (gannet.stats [163.1.211.17])
	by markov.stats.ox.ac.uk (8.13.6/8.13.6) with ESMTP id l5SE8L8n021762; 
	Thu, 28 Jun 2007 15:08:21 +0100 (BST)
Date: Thu, 28 Jun 2007 15:08:21 +0100 (BST)
From: Prof Brian Ripley <ripley@stats.ox.ac.uk>
To: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
In-Reply-To: <4683B1EB.7030501@biostat.ku.dk>
Message-ID: <Pine.LNX.4.64.0706281506320.10053@gannet.stats.ox.ac.uk>
References: <20070628074357.GA4502@s1x.fischer-zim.local>
	<Pine.LNX.4.64.0706280921230.4206@gannet.stats.ox.ac.uk>
	<4683B1EB.7030501@biostat.ku.dk>
MIME-Version: 1.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, Wolfram Fischer <wolfram@fischer-zim.ch>
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

On Thu, 28 Jun 2007, Peter Dalgaard wrote:

> Prof Brian Ripley wrote:
>>
>>
>> This is explained in ?regexp (in the See Also of ?regexpr):
>>
>>       Patterns are described here as they would be printed by 'cat': _do
>>       remember that backslashes need to be doubled when entering R
>>       character strings from the keyboard_.
>>
>> and in the R FAQ and ....
>>
>>
> Hmm, that's not actually correct, is it? Perhaps this is better
>
> "...entering R character string literals (i.e., between quote symbols.)"
>
> The counterexample would be
>
>> readLines()
> \\abc
> [1] "\\\\abc"
>
> (of course it is more important to get people to read the documentation
> at all...)

The definition of 'character string' used throughout the help is your 
'character string literal', as distinct from an element of a character 
vector.

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

         

t=tWloeEC