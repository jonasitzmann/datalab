From r-help-bounces@stat.math.ethz.ch  Fri Jun 15 13:05:29 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5FH5SL9004696
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 15 Jun 2007 13:05:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FH4kVQ006342;
	Fri, 15 Jun 2007 19:05:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.7 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SARE_URI_EQUALS autolearn=no version=3.2.0
Received: from mm.stthomas.edu (mm.stthomas.edu [140.209.3.222])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5FH1dmT005149
	for <r-help@stat.math.ethz.ch>; Fri, 15 Jun 2007 19:01:40 +0200
Received: from ust-gateway4.stthomas.edu (Not Verified[140.209.3.48]) by
	mm.stthomas.edu with MailMarshal (v6, 2, 0, 2977)
	id <B4672c5f30001>; Fri, 15 Jun 2007 12:01:39 -0500
Received: from [140.209.67.60] (140.209.67.60 [140.209.67.60]) by
	ust-gateway4.stthomas.edu with SMTP (Microsoft Exchange
	Internet Mail Service Version 5.5.2653.13)
	id 2HAWTQST; Fri, 15 Jun 2007 12:01:14 -0500
Message-ID: <4672C5EF.5000004@stthomas.edu>
Date: Fri, 15 Jun 2007 12:01:35 -0500
X-Sybari-Trust: bb3f652d a326316b a345b091 00000939
From: Jason Q McClintic <jqmcclintic@stthomas.edu>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: jim holtman <jholtman@gmail.com>, r-help@stat.math.ethz.ch
References: <644e1f320706150943r4fdff774y889a8eca86758c98@mail.gmail.com>
In-Reply-To: <644e1f320706150943r4fdff774y889a8eca86758c98@mail.gmail.com>
X-Enigmail-Version: 0.94.3.0
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] A question about logical controls and function arguements
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

Sir,

I freely admit my ignorance as to the subtleties of specifying arguments.

Let me make sure I understand your suggestion: create a variable filter
which takes 1 or 0 (filter or not) and another called, say,
filter.location which is the ordered triplet.

It does add to the number of options, but would seem to simplify the
underlying code. It appears I may have attempted to code above my skill
level.

Thanks for the assistance,

Jason Q McClintic
--
Jason Q McClintic
jqmcclintic@stthomas.edu
mccl0219@tc.umn.edu

jim holtman wrote:
> You are trying to use 'filter' in two ways.  Your code is testing for a
> single value ("FALSE"), and that is all that "==" can do (single value),
> but you are pass in a vector (c(0,0,1)) which has three values, on the
> first of which can be tested by the "==".
>  
> So you might want to consider having another parameter which says
> whether or not to use "filter".
> 
>  
>> On 6/15/07, *Jason Q McClintic* <jqmcclintic@stthomas.edu
>> <mailto:jqmcclintic@stthomas.edu>> wrote:
>> 
>>     Dear R-help subscribers,
>> 
>>     I'm trying to write a function to generate data simulating the image
>>     created by a point radiation source in a plane on a screen where there
>>     is filter with a single circular aperture in it between the source and
>>     the screen.
>> 
>>     Following some guides (including Intro to R and some I found online)
>>     and
>>     examples I have specified the function (full code below question) with
>>     several arguments with the form:
>> 
>>     option=c("option1","option2")
>> 
>>     For instance, I want filter to either be "FALSE" to tell the function
>>     there is no filter or an ordered triplet describing the location and
>>     radius of the area radiation is not blocked by the filter. There are
>>     several others along similar lines.
>> 
>>     When I source the function into R, it parses fine, but when attempting
>>     to run it with
>> 
>>     data.spect<-spect.data(source.p="r",filter=c(0,0,1),file.out="FALSE")
>> 
>>     the following warning is returned:
>> 
>>     Warning messages:
>>     1: the condition has length > 1 and only the first element will be used
.>     in: if (filter == "FALSE") {
.>     2: the condition has length > 1 and only the first element will
be used
>>     in: if (filter == "FALSE") {
.>
>>     The code this is referencing is about 1/3 from the bottom of the
>>     function.
>> 
>>     I'm not sure how to correct this. I tried ifelse in one case and it
>>     doesn't work at all. Searching the archives for "function arguments"
>>     didn't yield anything about the kind of arguments that are causing the
>>     trouble.
>>     I also want to get the matrix of generated data out, and have tried
>>     data.spect$final.sample (following an example I found online), but it
>>     returns null. I also attempted to use data.spect$initial.sample , but
>>     this returned null as well.
>> 
>>     I'm still very new to writing my own functions, and any and all help
>>     would be appreciated.
>> 
>>     There are notes about what different options are supposed to do at the
.>     end of the appended code.
>> 
>>     Thanks in advance,
>> 
>>     Jason Q McClintic
>>     --
>>     Jason Q McClintic
>>     jqmcclintic@stthomas.edu <mailto:jqmcclintic@stthomas.edu>
>>     mccl0219@tc.umn.edu <mailto:mccl0219@tc.umn.edu>
>> 
>>     spect.data<-function(num.points=50,fixed=FALSE,source.p=c("r","c(0,0)"),
>>       source.mean=0,source.sd=1,filter=c("FALSE","c(0,0,1)"),
>>       heights=c(0.5,0.5),
>>       file.out=c ("FALSE","/home/jqmcclintic/Desktop/spect.data")){
>>            ##Determine Start Point
>>            if (source.p=="r")
>>     {source<-c(rnorm(1,source.mean,source.sd <http://source.sd>
>>     ),rnorm(1,source.mean,source.sd <http://source.sd>))}
>>     else {source<-source.p}
>>            cat("The location of the source is: ",source,"\n")
>>            ##Generate the data
>>            remainder<- num.points
>>            initial.sample<-c(1,1)
>>            ##finds intersection points with the screen
>>                    intersect.screen.at
>>     <http://intersect.screen.at><-function(x,h){
>>                            t<-h[1]/(2*cos(x))
>>                            x.intercept<-t*sin(x[,2])*cos(x[,1])
>>                            y.intercept<-t*sin(x[,2])*sin(x[,1])
>>                    }
>>            ##finds intersection points with the collecting plate
>>                    intersect.plate.at
>>     <http://intersect.plate.at><-function(x,h){
>>                            t<-h[2]/(2*cos(x))
>>                            x.intercept<-t*sin(x[,2])*cos(x[,1])
>>                            y.intercept <-t*sin(x[,2])*sin(x[,1])
.>                    }
>>            ##determines if the intersection point is inside or outside
>>     the hole in
>>     the screen. x is the matrix of intersection points and s is the location
>>     and radius of the hole in the screen. 1 for yes, 0 for no.
>>                    passes.through<-function(x,s){
>>                            distance<-sqrt(((x[,1]-s[1])^2)+((x[,2]-s[2])^2))
>>                            through<-ifelse(distance<s[3],1,0)
>>                    }
>>            ##Build the sample
>>            while (remainder>0){
>>                    ##Generate n random vectors uniformly distributed over S2
>>                    theta<-runif(remainder,0,6.2831853)
>>                    phi<-runif(remainder,0, 1.5707963)
>>                    theta.phi<-cbind(theta,phi)
>>                    initial.sample<-rbind(initial.sample,theta.phi)
>>                    ##Call intersect.screen.at <http://intersect.screen.at>
>>                   
>>     intersects.screen<-intersect.screen.at(initial.sample,heights)
>>                    ##Call intersect.plate.at <http://intersect.plate.at>
>>                    intersects.plate<-if(filter=="FALSE")
>>     {intersect.screen.at(initial.sample,heights)} else {
>>                            intersect.plate.at(initial.sample,heights)
>>                    }
>>                    ##Does it intersect inside or outside the hole?
>> 
>>     intersect.hole
>>     <-if(filter=="FALSE"){array(1,dim=length(initial.sample))}
>>     else{passes.through(intersects.screen,filter)}
>>                    ##Remove points that do not pass throught the hole.
>>     By design, if
>>     there is no filter, all pass through the hole.
>>                    initial.sample<-cbind(initial.sample,intersect.hole)
>>                   
>>     initial.sample<-subset(initial.sample,initial.sample[,3]==1)
>>                    ##Reset remainder
>>                    remainder<-if(fixed=="FALSE") {0} else {
>>                            num.points-length(initial.sample)
>>                    }
>>            }
>>            write(initial.sample)
>>            ##remove the top row of the initial sample since it is
>>     non-random.
>>            final.sample <-initial.sample[-1,]
>>            ##print the final sample to a csv file for archival purposes
>>           
>>     if(file.out!="FALSE"){write.csv(final.sample,file=file.out);cat("The
>>     location of the data is:", file.out,"\n")} else{cat("No csv file
>>     requested","\n")}
>>     }
>> 
>>     ______________________________________________
>>     R-help@stat.math.ethz.ch <mailto:R-help@stat.math.ethz.ch> mailing list
>>     https://stat.ethz.ch/mailman/listinfo/r-help
>>     PLEASE do read the posting guide
>>     http://www.R-project.org/posting-guide.html
>>     <http://www.R-project.org/posting-guide.html>
>>     and provide commented, minimal, self-contained, reproducible code.
>> 
>> 
>> 
>> 
>> -- 
>> Jim Holtman
>> Cincinnati, OH
>> +1 513 646 9390
>> 
>> What is the problem you are trying to solve?

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

if@ #8