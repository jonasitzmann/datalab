From r-help-bounces@stat.math.ethz.ch  Wed Jun 27 21:43:17 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5S1hEL9003394
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 27 Jun 2007 21:43:16 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S1gX78007956;
	Thu, 28 Jun 2007 03:42:46 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp-gw4.usq.edu.au (smtp-gw4.usq.edu.au [139.86.2.59])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5S1Ynws004771
	(version=TLSv1/SSLv3 cipher=EDH-RSA-DES-CBC3-SHA bits=168 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 03:34:52 +0200
Received: from smtp-gw2.usq.edu.au (smtp-gw2.usq.edu.au [139.86.2.57])
	by smtp-gw4.usq.edu.au (8.13.7+Sun/8.13.4) with ESMTP id l5S1YfTQ013130;
	Thu, 28 Jun 2007 11:34:42 +1000 (EST)
Received: from romulus.sci.usq.edu.au (romulus.sci.usq.edu.au [139.86.138.21])
	by smtp-gw2.usq.edu.au (8.13.7+Sun/8.13.4) with ESMTP id
	l5S1Yf8N013127; Thu, 28 Jun 2007 11:34:41 +1000 (EST)
Received: from q06-3224.local (unknown [139.86.144.126])
	by romulus.sci.usq.edu.au (Postfix) with ESMTP
	id B0B25232FA; Thu, 28 Jun 2007 11:34:40 +1000 (EST)
From: Peter Dunn <dunn@usq.edu.au>
Organization: USQ
To: r-help@stat.math.ethz.ch, rossiter@itc.nl
Date: Thu, 28 Jun 2007 11:31:44 +1000
User-Agent: KMail/1.9.5
References: <4E1EDA98-6048-4144-8168-6EC48D992C20@itc.nl>
In-Reply-To: <4E1EDA98-6048-4144-8168-6EC48D992C20@itc.nl>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <200706281131.44980.dunn@usq.edu.au>
X-Scanned-By: MIMEDefang 2.57 on 139.86.2.59
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Sweave bug? when writing figures / deleting variable in
	chunk
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: dunn@usq.edu.au
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

> I have found a quite strange (to me) behaviour in Sweave. It only
> occurs in the following situation:

You need to understand what Sweave does when it creates pictures:
> <<>>=
> sel <- 1:5
> @
> <<fig=T>>=
> plot(trees[sel,])
> rm(sel)
> @

By default, a eps and pdf version of the graphic is made.
That is, this chunk producing the graphic is *run twice*:
once to make the eps file, once to make the pdf file.

After this code chunk is run once:

> <<fig=T>>=
> plot(trees[sel,])
> rm(sel)

...the variable  sel  is obviously deleted, so the
second time it runs... well, there's your error message.

Best to place the command  rm( sel )  in it's
own separate chunk.

P.

-- 
Dr Peter Dunn  |  dunn <at> usq.edu.au
Faculty of Sciences, USQ; http://www.sci.usq.edu.au/staff/dunn
Aust. Centre for Sustainable Catchments: www.usq.edu.au/acsc

This email (including any attached files) is confidential an...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

/v6ioG53-1l0d I