From r-help-bounces@stat.math.ethz.ch  Tue Jun  5 12:42:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55GgXhB011312
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 12:42:34 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l55Gg08I017785;
	Tue, 5 Jun 2007 18:42:10 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from web52804.mail.re2.yahoo.com (web52804.mail.re2.yahoo.com
	[206.190.48.247])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l55GeLRt016619
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 18:40:22 +0200
Received: (qmail 73468 invoked by uid 60001); 5 Jun 2007 16:40:21 -0000
X-YMail-OSG: GyvQ7jEVM1knMrK81QnXz5JRG3jx7bG8zlisX9xwdMOqjeVgeX4UGY68LNRqNoy_j.w6_La5k2yLu2uO4JkjjRq8nsFAc1pl4OvMm_XdLGB5UENPWu_vensx4BRt7x.xdHHSszBRBpFC2Q--
Received: from [199.133.142.21] by web52804.mail.re2.yahoo.com via HTTP;
	Tue, 05 Jun 2007 09:40:21 PDT
Date: Tue, 5 Jun 2007 09:40:21 -0700 (PDT)
From: jiqiang yao <jiqiang123@yahoo.com>
To: Sarah Goslee <sarah.goslee@gmail.com>
In-Reply-To: <efb536d50706050929h4e7f2770g5152b4bfb956a1a2@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <301913.72184.qm@web52804.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] read table
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

Thanks. It works after I change the space in the names
with underscore.

--- Sarah Goslee <sarah.goslee@gmail.com> wrote:

> The default separator in read.table is white space,
> so the first
> line (header) has 6 elements, the second line has 7
> elements,
> and the third has 8 elements.
> 
> Either delete the spaces in the car names, or use
> sep="\t"
> (or whatever is appropriate).
> 
> ?read.table explains this.
> 
> Sarah
> 
> On 6/5/07, jiqiang yao <jiqiang123@yahoo.com> wrote:
> > Hi,
> > I'm a novice of R.
> >
> > I want to read the following table into R:
> > names               mpg    cyl  disp  hp  drat
> > Mazda RX4           21.0   6    160.0 110 3.90
> > Mazda RX4 Wag       21.0   6    160.0 110 3.90
> >
> > The command I used is:
> > > test <- read.table(file.choose(),header=T)
> >
> > The result is:
> > Error in read.table(file.choose(), header = T) :
> >         more columns than column names
> >
> > Can anybody tells me what is wrong?
> >
> > ___________________
> 
> 
> -- 
> Sarah Goslee
> http://www.functionaldiversity.org
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

              

iaEB=e&a1asjLdB.