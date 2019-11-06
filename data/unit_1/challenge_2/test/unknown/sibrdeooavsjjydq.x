From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 09:11:04 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62DB3L9014054
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 09:11:03 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62DACHI011176;
	Mon, 2 Jul 2007 15:10:24 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	DKIM_SIGNED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62DA6FD011150
	for <r-help@lists.R-project.org>; Mon, 2 Jul 2007 15:10:07 +0200
Received: by wa-out-1112.google.com with SMTP id j37so2292537waf
	for <r-help@lists.R-project.org>; Mon, 02 Jul 2007 06:10:05 -0700 (PDT)
Received: by 10.115.88.1 with SMTP id q1mr5106601wal.1183381805318;
	Mon, 02 Jul 2007 06:10:05 -0700 (PDT)
Received: by 10.114.174.8 with HTTP; Mon, 2 Jul 2007 06:10:05 -0700 (PDT)
Message-ID: <39da0ad40707020610m3ae3631an6e53e0494f583faa@mail.gmail.com>
Date: Mon, 2 Jul 2007 14:10:05 +0100
From: "Chris Bowring" <chrisbowringgg@gmail.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Content-Disposition: inline
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: [R] ARIMA prediction
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

Hi

This is my first post to this group, so apologies in advance if I get it wrong.

I would like to know how the prediction for arima models works in R. I
have a time series to which I fit an arima model, of varying AR and MA
orders. I then use the predict function to project it forward. I have
also written my own function to perform the prediction, but it gives
different answers to Arima.predict when the MA order is non-zero.


I use the residuals from the arima function in my custom prediction
function. I think this may be my problem. In the arima model:


x{t} = a(1)x{t-1} + a(2)x{t-2} + ... + a(p)x{t-p} + e{t} + b(1)e{t-1}
+ b(2)e{t-2} + ... + b(q)e{t-q}


I am treating the residuals (i.e. arima(....)$res)  as the e{t} terms.
This gives different answers both in the region of the simulation and
in the region of the prediction, so I'm guessing they're not what I
think they are. Indeed, after q intervals in the prediction, the
prediction proceeds as I would expect, presumably because all the
residuals that have an effect are zero by this stage.


Any help greatly appreciated - my code is below.


Thanks


Chris


--------------------------------------------------------------

The code to produce the two predictions is as follows:


AR <- 5
MA <- 3


sim <- arima.sim(list(order=c(AR,0,MA), ar=c(.1, .1, .1, .1, .1),
ma=c(.1, .1, .1)), n=100) + 50


fit <- arima(sim, order = c(AR, 0, MA))


coefs <- fit$coef
series <- sim
innov <- fit$res
pred <- 100


fit.predict <- predict(fit, n.ahead = pred)


fit.r <- c(sim, fit.predict$pred)


fit.custom <- ProjectCentralArima(AR = AR, MA = MA, d = 0, coefs =
coefs, series = sim, innov = innov, pred = pred)$ser


ProjectCentralArima function:


ProjectCentralArima <- function(AR, MA, d, coefs, series, innov, pred)
{


  if(d==0){
    series.diff <- series
  }
  else {
    series.diff <- diff(series, lag=1, differences=d)
  }


  intercept <- coefs[length(coefs)]


  for(i in 1:pred){
    temp <- intercept
    l.s <- length(series.diff)
    if(AR > 0){
      for(j in 1:AR){
        temp <- temp + coefs[j] * (series.diff[l.s - j + 1] -
intercept)
      }
    }
    if(MA > 0){
      for(j in (1:MA)){
        temp <- temp + coefs[j + AR] * innov[l.s - j + 1]
      }
    }


    innov <- c(innov, 0)
    series.diff <- c(series.diff, temp)
  }


  if(d==0){
     series.undiff <- series.diff
  }
  else {
    series.undiff <- diffinv(series.diff, lag=1, differences=d, xi =
series[1:d])
  }


  return(list(series = series.undiff, innov = innov))
}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

         

nlFR1eL<trINO
