From r-help-bounces@stat.math.ethz.ch  Wed Jun  6 20:58:08 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l570w7hB028179
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 20:58:07 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l570ueCs027317;
	Thu, 7 Jun 2007 02:56:56 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE,
	SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.168])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l570uYNj027289
	for <R-help@stat.math.ethz.ch>; Thu, 7 Jun 2007 02:56:34 +0200
Received: by ug-out-1314.google.com with SMTP id 36so536794uga
	for <R-help@stat.math.ethz.ch>; Wed, 06 Jun 2007 17:56:34 -0700 (PDT)
Received: by 10.66.254.2 with SMTP id b2mr1642474ugi.1181177794091;
	Wed, 06 Jun 2007 17:56:34 -0700 (PDT)
Received: by 10.66.238.13 with HTTP; Wed, 6 Jun 2007 17:56:34 -0700 (PDT)
Message-ID: <644e1f320706061756h57f12d9cvefe32270ccb6280b@mail.gmail.com>
Date: Wed, 6 Jun 2007 20:56:34 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Melanie Ann Harsch" <harschm@lincoln.ac.nz>
In-Reply-To: <4667DFBF.6514.F3E96@harschm.lincoln.ac.nz>
MIME-Version: 1.0
References: <4667DFBF.6514.F3E96@harschm.lincoln.ac.nz>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: R-help@stat.math.ethz.ch
Subject: Re: [R] error message: only first element in each line of matrix
	used
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

your problem is in the statement:

if(mat.all[i,(j-int):(j-1)]<0){

you have multiple values in the comparison and the 'if' statement can only
use a single value.  Do you want the statement to read:

if(all(mat.all[i,(j-int):(j-1)]<0)){

which will test for 'all' the comparisons to be true?


On 6/6/07, Melanie Ann Harsch <harschm@lincoln.ac.nz> wrote:
>
> I have a matrix and am trying to write a code to
> 1. identify all neg values along each line
> 2. for each neg value I need to identify min(j+3)
> 3. end with this code: eq[i,j]<- ifelse(mat.r[i,j] < (0.5*mat.s[i,j]),
> mat.all[i,j], 0)
>
> This is the code I have so far.  I have tried several different methods
> but I
> keep getting the same error message that the condition has length >1 and
> only the first element will be used.
> Any suggestions?
>
> int <- 3
>        for(i in 1:nrow(mat.all)) {
>        start.year <- min(which(is.na(mat.all[i,])==F & (mat.all[i,]<0)))
>        fin.year <- max(which(is.na(mat.all[i,])==F))
>                for(j in start.year:fin.year) {
>                        if(mat.all[i,(j-int):(j-1)]<0){
>      mat.s[i,j] <- ifelse((mat.all[i,(j-int):(j-1)])==pmin, mat.all[i,j],
> 0);
>                  mat.r [i,j] <- which.max((mat.all[i,(j+1):(j+int)]) > 0)
> }
>                  }}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>



-- 
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

tdobehle
m: