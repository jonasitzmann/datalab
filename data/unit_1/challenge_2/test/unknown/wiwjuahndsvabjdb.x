From r-help-bounces@stat.math.ethz.ch  Wed Jul  4 07:41:11 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l64BfAL9010026
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 07:41:11 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l64Bddf6003895;
	Wed, 4 Jul 2007 13:40:00 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED, HTML_MESSAGE autolearn=no version=3.2.0
Received: from web50401.mail.re2.yahoo.com (web50401.mail.re2.yahoo.com
	[206.190.38.66])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l64BdJsl003759
	for <r-help@stat.math.ethz.ch>; Wed, 4 Jul 2007 13:39:22 +0200
Received: (qmail 40877 invoked by uid 60001); 4 Jul 2007 11:39:18 -0000
X-YMail-OSG: W1UzGQYVM1mysLm1FI5vTGXCnlTOC6Y8Xrpk_NXaGVuGP2dNWv1IJ0cAXRAjdffzFThWlc9YqxFwh.keDHnkEN1NLhFBQGQx3j4B7roN_NNBXlxRaO8pWp4O62x2TQ--
Received: from [58.106.138.130] by web50401.mail.re2.yahoo.com via HTTP;
	Wed, 04 Jul 2007 04:39:18 PDT
Date: Wed, 4 Jul 2007 04:39:18 -0700 (PDT)
From: Deb Midya <debmidya@yahoo.com>
To: r-help@stat.math.ethz.ch
MIME-Version: 1.0
Message-ID: <489626.40553.qm@web50401.mail.re2.yahoo.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Subject: [R] Calling C Code from R
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

Hi R Users,
   
  Thanks in advance.
   
  I am using R-2.5.1 on Windows XP.
   
  I am trying to call C code (testCX1.C) from R. testCX1.c calls another C code (funcC1.c) and returning a value to testCX1.c. I like to have this value in R.
   
  My steps are below:
   
  1. R CMD SHLIB testCX1.c funcC1.c (at command propmt)
   
  2. It creates testCX1.dll with warning (but testCX1.dll works):
   
  testCX1.c:38: warning: implicit declaration of function 'func'
   
  How to get rid off this error ?
   
  What is the best way to call funcC1.c from testCX1.c?
   
  I have provided the codes below:
   
  Once again thank you very much for the time you have given.
   
  Regards,
   
  Debabrata Midya (Deb)
  Statistician
  NSW Department of Commerce
  Sydney, Australia
   
  testCX1.C
  --------------
   
  /*
 *********************
 testCX1.c
  *********************
*/
  #include <R.h>
#include <Rdefines.h>
#include <Rmath.h>
   
  SEXP testC1(SEXP a)
{
   int i, nr;
   double *xa, *xw, tmp;
   SEXP w;
   
     PROTECT(a = coerceVector(a, REALSXP));
   
   nr = length(a);
     printf( "Length : %d \n", nr);
   
   PROTECT(w = allocVector(REALSXP, 1));
   
   xa = REAL(a);
   xw = REAL(w);
    
   tmp = 0.0;
     for (i = 0; i < nr; i++)
     {
        tmp += xa[i];
     }
     // tmp = 0.0;
   xw[0] = func(xa);
     UNPROTECT(2);
   return(w);
}

   
  funcC1.c
  ------------
   
  /*
 *********************
 funcC1.c
  *********************
*/
   
  #include <R.h>
#include <Rdefines.h>
#include <Rmath.h>
   
  SEXP func(SEXP a)
{
   int i, nr = 3;
   double *xa, *xw, tmp;
   SEXP w;
   
     PROTECT(a = coerceVector(a, REALSXP));
   
   PROTECT(w = allocVector(REALSXP, 1));
   
   xa = REAL(a);
   xw = REAL(w);
    
   tmp = 0.0;
     for (i = 0; i < nr; i++)
     {
        tmp += xa[i] * xa[i];
     }
     xw[0] = tmp;
     UNPROTECT(2);
   return(w);
}

  R script
  -----------
   
  dyn.load("testCX1.dll")
xL <- 1:5
xL <- as.double(as.vector(t(xL)))
  .Call("testC1",xL)

  [1] 55
   
   

       
---------------------------------

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                   

hl i