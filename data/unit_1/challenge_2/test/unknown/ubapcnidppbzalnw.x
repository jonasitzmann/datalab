From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 09:45:47 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55DjkhB009605
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 09:45:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DjIZ6018233;
	Tue, 5 Jun 2007 15:45:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.1 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, SPF_HELO_PASS autolearn=no version=3.2.0
Received: from ciao.gmane.org (main.gmane.org [80.91.229.2])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55DbgMM015616
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 15:37:42 +0200
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HvYx6-00077r-Vs
	for r-help@stat.math.ethz.ch; Tue, 05 Jun 2007 15:20:01 +0200
Received: from igor.imise.uni-leipzig.de ([139.18.158.245])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 15:20:00 +0200
Received: from hilmar.berger by igor.imise.uni-leipzig.de with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <r-help@stat.math.ethz.ch>; Tue, 05 Jun 2007 15:20:00 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: r-help@stat.math.ethz.ch
From: Hilmar Berger <hilmar.berger@imise.uni-leipzig.de>
Date: Tue, 05 Jun 2007 15:01:09 +0200
Organization: IMISE Uni Leipzig
Lines: 53
Message-ID: <f43mqh$uu$1@sea.gmane.org>
References: <f43ke2$nnc$1@sea.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: igor.imise.uni-leipzig.de
User-Agent: Mozilla Thunderbird 1.0.7 (Windows/20050923)
X-Accept-Language: de-DE, de, en-us, en
In-Reply-To: <f43ke2$nnc$1@sea.gmane.org>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Refactor all factors in a data frame
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
Content-Type: text/plain; charset="iso-8859-15"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l55DjkhB009605

Hi,

the best solution I found so far is (assuming <data> is your data.frame):

# identify all factor variables

factor.list = colnames(data)[sapply(data,class) == "factor"]

# use transform to apply factor() to all factor variables
trans.vars 
=paste(factor.list,"=factor(",factor.list,")",sep="",collapse="," )
data = eval(parse(text=paste("transform(data,",trans.vars,")")))

Regards,
Hilmar


Hilmar Berger schrieb:
> Hi all,
> 
> Assume I have a data frame with numerical and factor variables that I 
> got through merging various other data frames and subsetting the 
> resulting data frame afterwards. The number levels of the factors seem 
> to be the same as in the original data frames, probably because subset() 
> calls [.factor without drop = TRUE (that's what I gather from scanning 
> the mailing lists).
> 
> I wonder if there is a easy way to refactor all factors in the data 
> frame at once. I noted that fix(data_frame) does the trick, however, 
> this needs user interaction, which I'd like to avoid. Subsequent 
> write.table / read.table would be another option but I'm not sure if R 
> can guess the factor/char/numeric-type correctly when reading the table.
> 
> So, is there any way in drop the unused factor levels from *all* factors 
> of a data frame without import/export ?
> 
> Thanks in advance,
> Hilmar
> 


-- 

Hilmar Berger
Studienkoordinator
Institut f�r medizinische Informatik, Statistik und Epidemiologie
Universit�t Leipzig
H�rtelstr. 16-18
D-04107 Leipzig

Tel. +49 341 97 16 101
Fax. +49 341 97 16 109
email: hilmar.berger@imise.uni-leipzig.de

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



tlN:2y