From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 08:23:07 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59CN5L9009439
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 08:23:06 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59CLlcq003895;
	Sat, 9 Jun 2007 14:22:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.169])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59CJG7n003074
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 14:19:16 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1064804uga
	for <r-help@stat.math.ethz.ch>; Sat, 09 Jun 2007 05:19:16 -0700 (PDT)
Received: by 10.67.99.1 with SMTP id b1mr3547055ugm.1181391556256;
	Sat, 09 Jun 2007 05:19:16 -0700 (PDT)
Received: by 10.67.28.5 with HTTP; Sat, 9 Jun 2007 05:19:16 -0700 (PDT)
Message-ID: <971536df0706090519r4924c424g33f941aac1ad60f2@mail.gmail.com>
Date: Sat, 9 Jun 2007 08:19:16 -0400
From: "Gabor Grothendieck" <ggrothendieck@gmail.com>
To: "Andreas Gegg" <AndreasGegg@gmx.de>, r-help@stat.math.ethz.ch
In-Reply-To: <644e1f320706090410n3dde7d52jb5214bbc5c6f30eb@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
References: <op.ttngt1ybof9uj6@->
	<644e1f320706090410n3dde7d52jb5214bbc5c6f30eb@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l59CJG7n003074
Subject: Re: [R] write.table: last line should differ from usual eol
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l59CN5L9009439

Try this:


write.ilog <- function(X, file = "") {
   w <- function(x, z, file)
          cat("[", paste(x, collapse = ","), "]", z, sep = "", file = file)
   if (!identical(file, "")) {
      file <- open(file, "w")
      on.exit(close(file))
   }
   cat("X=[", file = file)
   nr <- nrow(X)
   for(i in 1:nr) w(X[i,], if (i == nr) "];\n" else ",\n", file)
   invisible(X)
}

X<-array(1:4,c(2,2))
write.ilog(X)




On 6/9/07, jim holtman <jholtman@gmail.com> wrote:
> This will probably do it for you.  It is a function to create the output:
>
>
>
> write.array <- function(x,fileName){
>    outFile <- file(fileName, 'w')
>    cat(deparse(substitute(x)), "=[", sep='', file=outFile)
>    for (i in 1:nrow(x)){
>        cat('[', paste(x[i,], collapse=','), ']', file=outFile, sep='')
>        if (i == nrow(x)) cat('];', file=outFile, sep='')
>        else cat(',\n', file=outFile, sep='')
>    }
>    close(outFile)
> }
>
> # test data
> a <- matrix(1:25,5)
> write.array(a, '/tempxx.txt')
>
> Here is the output file:
>
> a=[[1,6,11,16,21],
> [2,7,12,17,22],
> [3,8,13,18,23],
> [4,9,14,19,24],
> [5,10,15,20,25]];
>
>
>
>
> I have a problem with writing an array to (for example) a .txt-file.
> Because of the .txt-file must be read from another programm (OPL ILOG),
> the syntax of the output must be from a special form:
>
> name_of_the_object = [  [1,2, ... ],
>                       [1,...],
>                       ... ];
>
> I think it's easier to understand with a small example:
>
> X<-array(1:4,c(2,2))
>
> should be written as:
> X = [[1,3],
>     [2,4]];
>
>
> I have (until now) used the following:
>
> write("X=[[",file=filename)
> write.table(X,file=filename,sep=",",eol="],\n [", row.names=FALSE,
> col.names=FALSE,append=TRUE)
>
> which leads to the following output:
> X=[[
> 1,3],
> [2,4],
> [
>
> I hope you can help because it's very annoying to adjust the resulting
> .txt-file "by hand".
>
> Thanks a lot for your help!
> With nice greetings
>
> Andreas Gegg,
> mathematic-student on Catholic University of Eichst�tt-Ingolstadt (Germany)
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>
>
> --
> Jim Holtman
> Cincinnati, OH
> +1 513 646 9390
>
> What is the problem you are trying to solve?
>
>        [[alternative HTML version deleted]]
>
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

pApneQshywg
e1