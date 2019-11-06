From r-help-bounces@stat.math.ethz.ch  Tue Jun 12 04:14:00 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5C8DwL9024302
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 04:13:59 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C8DRmY012753;
	Tue, 12 Jun 2007 10:13:37 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5C89000010606
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 10:09:01 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1Hy1Ql-00059i-UI
	for r-help@stat.math.ethz.ch; Tue, 12 Jun 2007 10:08:48 +0200
Received: from biol102145.oulu.fi ([130.231.102.145])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 10:08:47 +0200
Received: from jari.oksanen by biol102145.oulu.fi with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 12 Jun 2007 10:08:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Jari Oksanen <jari.oksanen@oulu.fi>
Date: Tue, 12 Jun 2007 08:08:34 +0000 (UTC)
Lines: 54
Message-ID: <loom.20070612T100215-99@post.gmane.org>
References: <11058255.post@talk.nabble.com>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 130.231.102.145 (Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.8.1.4) Gecko/20061201 Firefox/2.0.0.4 (Ubuntu-feisty))
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Error using mgcv package
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

spime <sabya23 <at> gmail.com> writes:

> 
> 
> Hi all,
> 
> I need some solution in the following problem. The following error appears
> when i use "mgcv" package for implementing GAM. But the same formula works
> fine in "gam" package.
> 
> > model.gam <- gam(formula = RES ~
> > CAT01+s(NUM01,5)+CAT02+CAT03+s(NUM02,5)+CAT04+
> + CAT05+s(NUM03,5)+CAT06+CAT07+s(NUM04,5)+CAT08+s(NUM05,5)+CAT09+
> + CAT10+s(NUM06,5)+CAT11+NUM07+CAT12+CAT13,
> + family = binomial(link = logit), data = train.data,na.action = na.exclude,
> + control = list(epsilon = 0.001,bf.epsilon = 0.001, maxit = 50, 
> + bf.maxit = 10, trace = F))
> 
> Error in terms.formula(reformulate(term[i])) : 
>         invalid model formula in ExtractVars
> 
It seems that nobody answered this (in public). 

It seems that function s() in mgcv is defined as:

s(..., k = -1, fx = FALSE, bs = "tp", m = 0, by = NA) 

(Like you see reading its help ?s). The function definition starts with "...",
and after three dots you cannot use positional arguments, but you must give the
full argument name. Try replacing s(NUM01, 5) with s(NUM01, k=5). See also help
in mgcv (?s pointing to ?choose.k) for interpreting argument 'k' which is not
directly degrees of freedom.

There may be other problems, but this probably fixes tha one you reported above.

cheers, jari oksanen

> And after deleting df's 
> 
> model.gam <- gam(formula = RES ~ CAT01+s(NUM01)+CAT02+CAT03+s(NUM02)+CAT04+
> + CAT05+s(NUM03)+CAT06+CAT07+s(NUM04)+CAT08+s(NUM05)+CAT09+
> + CAT10+s(NUM06)+CAT11+NUM07+CAT12+CAT13,
> + family = binomial(link = logit), data = train.data)
> 
> Error in smooth.construct.tp.smooth.spec(object, data, knots) : 
>         A term has fewer unique covariate combinations than specified
> maximum degrees of freedom
> 
> Can anybody show me some light in this case!!!
> 
> Thanks in advance.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

;3YBA
hnh/x