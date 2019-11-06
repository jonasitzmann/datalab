From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 04:33:22 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l548XKhB025776
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 04:33:21 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l548Vvrh032188;
	Mon, 4 Jun 2007 10:32:18 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l548VogG032151
	for <r-help@stat.math.ethz.ch>; Mon, 4 Jun 2007 10:31:50 +0200
Received: from [192.38.18.17] (viggo.kubism.ku.dk [192.38.18.17])
	by slim.kubism.ku.dk (Postfix) with ESMTP id 8894848F83;
	Mon,  4 Jun 2007 10:31:50 +0200 (CEST)
Message-ID: <4663CDF1.5070409@biostat.ku.dk>
Date: Mon, 04 Jun 2007 10:31:45 +0200
From: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 1.5.0.10 (X11/20060911)
MIME-Version: 1.0
To: Petr Klasterecky <klaster@karlin.mff.cuni.cz>
References: <5dff5a0d0706031448t5e60448en5aa028b42c65a4a9@mail.gmail.com>
	<4663B3EF.4050601@karlin.mff.cuni.cz>
In-Reply-To: <4663B3EF.4050601@karlin.mff.cuni.cz>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, Andrew Yee <andrewjyee@gmail.com>
Subject: Re: [R] getting t.test to work with apply()
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l548XKhB025776

Petr Klasterecky wrote:> Andrew Yee napsal(a):>   >> Hi, I'm interested in using apply() with t.test() on a data.frame.>>>> Specifically, I'd like to use apply() to do the following:>>>>  t.test(raw.sample[1,alive],raw.sample[1,dead])>> t.test(raw.sample[2,alive],raw.sample[2,dead])>>  t.test(raw.sample[3,alive],raw.sample[3,dead])>> etc.>>>> I tried the following,>>>> apply(raw.sample,1,function(x) t.test(raw.sample[,alive],raw.sample[,dead]))>>     >> Two comments:> 1) apply() works on arrays. If your dataframe only has numeric values, > turn it (or its copy) to a matrix via as.matrix(). If it has mixed > variables, take only the numeric part for t-tests. The conversion is > made implicitly but explicit asking for it cannot hurt.> 2) the main problem - you are using a wrong argument to t.test>> The call should look like> apply(as.matrix(raw.sample), 1, function(x){t.test(x[alive], x[dead])})>> assuming 'alive' and 'dead' are logical vectors of the same length as 'x'.>> Petr>   Notice also that the other apply-style functions may give an easierroute to the goal:
lapply(1:N, function(i) t.test(raw.sample[i,alive],raw.sample[i,dead]))
or (maybe, depends on raw.sample being a data frame and alive/dead beingindexing vectors)
mapply(t.test, raw.sample[,alive], raw.sample[,dead])
>   >> but it gives me a list of identical results.>>>>>> Thanks,>> Andrew>>>> 	[[alternative HTML version deleted]]>>>> ______________________________________________>> R-help@stat.math.ethz.ch mailing list>> https://stat.ethz.ch/mailman/listinfo/r-help>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html>> and provide commented, minimal, self-contained, reproducible code.>>>>     >>   

--    O__  ---- Peter Dalgaard             Øster Farimagsgade 5, Entr.B  c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45) 35327918~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45) 35327907
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

                  

6S,PyQoY7/