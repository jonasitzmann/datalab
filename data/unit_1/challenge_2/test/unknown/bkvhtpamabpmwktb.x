From r-help-bounces@stat.math.ethz.ch  Fri Jun  8 15:18:57 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58JIthB019847
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 8 Jun 2007 15:18:56 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58JHkwp021783;
	Fri, 8 Jun 2007 21:18:23 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from an-out-0708.google.com (an-out-0708.google.com [209.85.132.242])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l58JCWgm019403
	for <r-help@r-project.org>; Fri, 8 Jun 2007 21:12:33 +0200
Received: by an-out-0708.google.com with SMTP id b15so193247ana
	for <r-help@r-project.org>; Fri, 08 Jun 2007 12:12:32 -0700 (PDT)
Received: by 10.100.37.4 with SMTP id k4mr1970977ank.1181329951732;
	Fri, 08 Jun 2007 12:12:31 -0700 (PDT)
Received: by 10.100.46.6 with HTTP; Fri, 8 Jun 2007 12:12:31 -0700 (PDT)
Message-ID: <eb97335b0706081212r7bc5843fv152e1f8147efb78c@mail.gmail.com>
Date: Fri, 8 Jun 2007 12:12:31 -0700
From: "Zack Weinberg" <zackw@panix.com>
To: r-help@r-project.org
MIME-Version: 1.0
Content-Disposition: inline
X-Google-Sender-Auth: d40549c44eed56b2
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] still trying to wrap xyplot - ignore previous
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

As you may not be surprised to hear, no sooner did I post the previous
message than I realized I had a really dumb mistake.  I've now gotten
a bit farther but am still stuck.  New code:

graph <- function (x, data, groups, xlab) {
  pg <- function(x, y, group.number, ...) fnord
  body(pg) <- substitute({
    panel.xyplot(x, y, ..., group.number=group.number)
    panel.text(2, unique(y[x==2]),
               levels(G)[group.number],
               pos=4, cex=0.5)
  }, list(G=eval(substitute(groups), data, parent.frame())))

  print(xyplot(x, data=data, groups=substitute(groups),
               type='l',
               ylab=list(cex=1.1, label='Mean RT (ms)'),
               xlab=list(cex=1.1, label=xlab),
               scales=list(
                 x=list(alternating=c(1,1), tck=c(1,0)),
                 y=list(alternating=c(1,0))
                 ),
               panel=panel.superpose,
               panel.groups=pg
              ))
}

Questions:
1) The "groups=substitute(groups)" bit (in the call to xyplot) still
doesn't work.  As far as I can tell, xyplot wants the *symbol* which
is the name of the factor (in the data frame) to group by.
The above seems to wind up passing it the symbol "groups", which
causes the prepanel function to barf.  I have not been able to find
any way to evaluate one layer of "groups" to get me the symbol passed
in, rather than the value of that symbol.  Am I right?  How do I give
it what it wants?

2) Why do I have to do that stupid dance with replacing the body of
pg?  The documentation leads me to believe this is a lexically scoped
language, shouldn't it be able to pick G out of the enclosing frame?

zw

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

Jt/ja t <qx