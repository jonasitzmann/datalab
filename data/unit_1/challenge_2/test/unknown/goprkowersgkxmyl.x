From r-help-bounces@stat.math.ethz.ch  Sat Jun  2 23:35:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l533ZWhB030780
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 2 Jun 2007 23:35:33 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l533Xmgl014967;
	Sun, 3 Jun 2007 05:34:14 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, DKIM_SIGNED autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.183])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l533XgQT014948
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 05:33:42 +0200
Received: by wa-out-1112.google.com with SMTP id j37so1446698waf
	for <r-help@stat.math.ethz.ch>; Sat, 02 Jun 2007 20:33:41 -0700 (PDT)
Received: by 10.115.17.1 with SMTP id u1mr3411168wai.1180841621034;
	Sat, 02 Jun 2007 20:33:41 -0700 (PDT)
Received: by 10.114.196.3 with HTTP; Sat, 2 Jun 2007 20:33:40 -0700 (PDT)
Message-ID: <74c69e370706022033y36bb6958v6faea0da9667340e@mail.gmail.com>
Date: Sat, 2 Jun 2007 23:33:40 -0400
From: "David James" <daj025@gmail.com>
To: "Paulino Perez Rodriguez" <perpdgo@colpos.mx>
In-Reply-To: <web-10660380@mailadmin.colpos.mx>
MIME-Version: 1.0
Content-Disposition: inline
References: <web-10660380@mailadmin.colpos.mx>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l533XgQT014948
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Problems compiling RMySQL
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l533ZWhB030780

Hi,

The error is coming from the FIND command (and in upper case, hmm).
I'd suggest making sure you are using the right find.

HTH

--
David

On 6/2/07, Paulino Perez Rodriguez <perpdgo@colpos.mx> wrote:
> Hello, I am trying to compile/Install RMySQL_0.6-0 in
> R-2.4.1/2.5.0 under Windows XP MCE, I am using MySQL
> 5.0.41. I have followed the instructions in the file
> INSTALL.win, but I get some errors...
>
> C:\Program Files\R\R-2.4.1>Rcmd build --binary RMySQL
> --docs=normal
> * checking for file 'RMySQL/DESCRIPTION' ... OK
> * preparing 'RMySQL':
> * checking DESCRIPTION meta-information ... OK
> * cleaning src
> * removing junk files
> * checking for LF line-endings in source files
> * checking for empty or unneeded directories
> * building binary distribution
>   WARNING
> * some HTML links may not be found
> installing R.css in c:/TEMP/Rinst248068707
>
> Using auto-selected zip options ' RMySQL-HELP=ziponly'
>
> ---------- Making package RMySQL ------------
> ======================================================================
> RMySQL configure.win:
> * Using mysql libraries from
> c:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt
> * Using mysql dll from c:/PROGRA~1/MySQL/MYSQLS~1.0/bin
> * Copying runtime libMySQL.dll and libmysql.lib to
> inst/libs
> * Using an existing libmysql.a in
> c:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt
> ======================================================================
>    adding build stamp to DESCRIPTION
>    installing NAMESPACE file and metadata
>    making DLL ...
> making RS-DBI.d from RS-DBI.c
> making RS-MySQL.d from RS-MySQL.c
> gcc -Ic:/PROGRA~1/MySQL/MYSQLS~1.0/include
> -Ic:/PROGRA~1/R/R-24~1.1/include -W
> all -O2 -std=gnu99 -c RS-DBI.c -o RS-DBI.o
> gcc -Ic:/PROGRA~1/MySQL/MYSQLS~1.0/include
> -Ic:/PROGRA~1/R/R-24~1.1/include -W
> all -O2 -std=gnu99 -c RS-MySQL.c -o RS-MySQL.o
> windres --include-dir c:/PROGRA~1/R/R-24~1.1/include -i
> RMySQL_res.rc -o RMySQL
> _res.o
> gcc -shared -s -o RMySQL.dll RMySQL.def RS-DBI.o
> RS-MySQL.o RMySQL_res.o -Lc:
> /PROGRA~1/R/R-24~1.1/bin
> -Lc:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt -lmysql -liberty
>     -lR
>    ... DLL made
>    installing DLL
>    installing R files
>    installing inst files
> FIND: Parameter format not correct
> make[2]: *** [c:/TEMP/Rinst248068707/RMySQL/inst] Error 2
> make[1]: *** [all] Error 2
> make: *** [pkg-RMySQL] Error 2
> *** Installation of RMySQL failed ***
>
> Removing 'c:/TEMP/Rinst248068707/RMySQL'
>   ERROR
> * installation failed
>
> C:\Program Files\R\R-2.4.1>
>
> What's happening?
>
> Thanks...
>
> --
> Este mensaje ha sido analizado por MailScanner
> en busca de virus y otros contenidos peligrosos,
> y se considera que est� limpio.
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

aus.gcE/ia