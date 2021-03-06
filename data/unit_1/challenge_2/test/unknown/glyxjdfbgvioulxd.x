From r-help-bounces@stat.math.ethz.ch  Mon Jun 18 19:54:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5INspL9023226
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 18 Jun 2007 19:54:52 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5INsCKj029746;
	Tue, 19 Jun 2007 01:54:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from web32804.mail.mud.yahoo.com (web32804.mail.mud.yahoo.com
	[68.142.206.34])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5INs5Vj029722
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 01:54:05 +0200
Received: (qmail 1929 invoked by uid 60001); 18 Jun 2007 23:07:13 -0000
X-YMail-OSG: p_94cWcVM1mxc0HJwN3KqFY5fye1aCkrW7Za1ZfIC6p7MnRwhdg.OtRbhmekvi3plX83t.K9UzVzVhsPXSRAwSMFk1zY9J8R75OeEsANRMvYY7CaQmdUrD85hqJ1tg--
Received: from [69.37.85.170] by web32804.mail.mud.yahoo.com via HTTP;
	Mon, 18 Jun 2007 16:07:13 PDT
Date: Mon, 18 Jun 2007 16:07:13 -0700 (PDT)
From: philozine <philozine@yahoo.com>
To: Jeff Laake <Jeff.Laake@noaa.gov>
In-Reply-To: <4671D502.4070601@noaa.gov>
MIME-Version: 1.0
Message-ID: <920413.1056.qm@web32804.mail.mud.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch, cberry@tajo.ucsd.edu, Bill.Venables@csiro.au
Subject: Re: [R] Retain names in conversion of matrix to vector
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

Fantastic. All of those methods worked, though I did have to first convert my matrices using the data.matrix command. Thank you for the assistance.

Is there any equally simple way to re-convert the resulting table/matrix to its original NxN form? I do not see any obvious opposites to the cbind or as.table commands.

Also, Jeff Laake, is there a way to have your routine output the vectors as numeric values (i.e., without the surrounding quote marks)?

Best regards,


Jeff Laake <Jeff.Laake@noaa.gov> wrote:  > x=matrix(1:9,nrow=3)
 > colnames(x)=c("a","b","c")
 > row.names(x)=c("1","2","3")
 > x
  a b c
1 1 4 7
2 2 5 8
3 3 6 9
 > 
cbind(as.vector(x),colnames(x)[as.vector(col(x))],row.names(x)[as.vector(row(x))])
      [,1] [,2] [,3]
 [1,] "1"  "a"  "1"
 [2,] "2"  "a"  "2"
 [3,] "3"  "a"  "3"
 [4,] "4"  "b"  "1"
 [5,] "5"  "b"  "2"
 [6,] "6"  "b"  "3"
 [7,] "7"  "c"  "1"
 [8,] "8"  "c"  "2"
 [9,] "9"  "c"  "3"
 >


philozine wrote:
> Hi R-listers,
>
> I'm using R only for a few basic functions but am having difficulty doing something that *should* be simple. I have an nxn matrix, Q, where Q[i,j] is a directed value (in this case, oil exports from i to j). Note that Q[i,j]~=Q[j,i]. I imported column names along with the matrix then copied them to the rows using rownames(Q) <- colnames(Q). Simple so far.
>
> What I'd like to do now is convert Q for export into a vector of values with the original row and column names intact. Having one vector each for row, column, and cell would be ideal, e.g., [1,1] = i's name, [1,2] = j's name, and [1,3] = Q[i, j]. But just being able to export my matrix data in vector form with the correct row/col names for each observation would be sufficient.
>
> Thus far I've tried c(), vector(), and a few others, but can't get the correct results. They do generate the correct vector of matrix values, but they do not appear to retain both row and column names. (Or, rather, I have not discovered how to make them do so.)
>
> To illustrate, my data currently look something like this:
>
>     A    B    C    D
> A | 0  |.1 |.4  |.6  |
> B |.2 | 0  |.2  |.1  |
> C |.5  |.9  | 0  |.9  |
> D |.7  | 0  |.3  | 0  |
>
> I would like them to look like this (at least when exported as a .txt file, if not necessary when displayed within R):
>
>   i   j   Q
> | A | A | 0 |
> | A | B |.1 |
> | A | C |.4 |
> | A | D |.6 |
> | B | A |.2 |
> | B | B | 0 |
> | B | C |.2 |
> [...] and so on
>
> If anybody knows how to do this, I will be extremely appreciative!
>
> Best regards,
>
>
>        
> ---------------------------------
>
>  [[alternative HTML version deleted]]
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>   


 
---------------------------------
The fish are biting.

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

tt<at;9tSrt