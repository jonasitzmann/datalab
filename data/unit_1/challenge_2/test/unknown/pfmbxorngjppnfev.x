From r-help-bounces@stat.math.ethz.ch  Sat Jun  9 07:12:09 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l59BC7L9008873
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 9 Jun 2007 07:12:08 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59BAhiR016486;
	Sat, 9 Jun 2007 13:10:59 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.2 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from ug-out-1314.google.com (ug-out-1314.google.com [66.249.92.171])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l59BAaOj016446
	for <r-help@stat.math.ethz.ch>; Sat, 9 Jun 2007 13:10:36 +0200
Received: by ug-out-1314.google.com with SMTP id 36so1056903uga
	for <r-help@stat.math.ethz.ch>; Sat, 09 Jun 2007 04:10:36 -0700 (PDT)
Received: by 10.67.92.1 with SMTP id u1mr3518986ugl.1181387436514;
	Sat, 09 Jun 2007 04:10:36 -0700 (PDT)
Received: by 10.66.221.12 with HTTP; Sat, 9 Jun 2007 04:10:36 -0700 (PDT)
Message-ID: <644e1f320706090410n3dde7d52jb5214bbc5c6f30eb@mail.gmail.com>
Date: Sat, 9 Jun 2007 07:10:36 -0400
From: "jim holtman" <jholtman@gmail.com>
To: "Andreas Gegg" <AndreasGegg@gmx.de>
In-Reply-To: <op.ttngt1ybof9uj6@->
MIME-Version: 1.0
References: <op.ttngt1ybof9uj6@->
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
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
Content-Type: multipart/mixed; boundary="===============0719252050=="
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

--===============0719252050==
Content-Disposition: inline
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-length: 1962

This will probably do it for you.  It is a function to create the output:



write.array <- function(x,fileName){
    outFile <- file(fileName, 'w')
    cat(deparse(substitute(x)), "=3D[", sep=3D'', file=3DoutFile)
    for (i in 1:nrow(x)){
        cat('[', paste(x[i,], collapse=3D','), ']', file=3DoutFile, sep=3D'=
')
        if (i =3D=3D nrow(x)) cat('];', file=3DoutFile, sep=3D'')
        else cat(',\n', file=3DoutFile, sep=3D'')
    }
    close(outFile)
}

# test data
a <- matrix(1:25,5)
write.array(a, '/tempxx.txt')

Here is the output file:

a=3D[[1,6,11,16,21],
[2,7,12,17,22],
[3,8,13,18,23],
[4,9,14,19,24],
[5,10,15,20,25]];




I have a problem with writing an array to (for example) a .txt-file.
Because of the .txt-file must be read from another programm (OPL ILOG),
the syntax of the output must be from a special form:

name_of_the_object =3D [  [1,2, ... ],
                       [1,...],
                       ... ];

I think it's easier to understand with a small example:

X<-array(1:4,c(2,2))

should be written as:
X =3D [[1,3],
     [2,4]];


I have (until now) used the following:

write("X=3D[[",file=3Dfilename)
write.table(X,file=3Dfilename,sep=3D",",eol=3D"],\n [", row.names=3DFALSE,
col.names=3DFALSE,append=3DTRUE)

which leads to the following output:
X=3D[[
1,3],
[2,4],
[

I hope you can help because it's very annoying to adjust the resulting
.txt-file "by hand".

Thanks a lot for your help!
With nice greetings

Andreas Gegg,
mathematic-student on Catholic University of Eichst=E4tt-Ingolstadt (German=
y)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



--=20
Jim Holtman
Cincinnati, OH
+1 513 646 9390

What is the problem you are trying to solve?

	[[alternative HTML version deleted]]


--===============0719252050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

--===============0719252050==--

                 

cd
 i�ew<0