From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 05:03:53 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M93qL9004154
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 05:03:53 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M925rq030846;
	Fri, 22 Jun 2007 11:02:28 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME, HTML_MESSAGE,
	UNPARSEABLE_RELAY autolearn=no version=3.2.0
Received: from pc5-13.cruciform.wibr.ucl.ac.uk (pc5-13.wibr.ucl.ac.uk
	[128.40.202.13])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M91ri0030736
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 11:01:53 +0200
Received: from exc2.cruciform.wibr.ucl.ac.uk (exc2.cruciform.wibr.ucl.ac.uk) 
	by pc5-13.cruciform.wibr.ucl.ac.uk (Clearswift SMTPRS 5.1.7) with 
	ESMTP id <T805f4a37408028ca0d1614@pc5-13.cruciform.wibr.ucl.ac.uk>; 
	Fri, 22 Jun 2007 10:01:53 +0100
X-MimeOLE: Produced By Microsoft Exchange V6.5.7226.0
MIME-Version: 1.0
Date: Fri, 22 Jun 2007 10:01:52 +0100
Message-ID: <61B482B74D6EE443B90356E080476E340189529A@exc2.cruciform.wibr.ucl.ac.uk>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] FW: Suse RPM installation problem
Thread-Index: Ace0Kowkv/Ls8NeUTyKX1dLiJ0a+pQAfwp6x
From: "Stephen Henderson" <s.henderson@ucl.ac.uk>
To: "Peter Dalgaard" <p.dalgaard@biostat.ku.dk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] FW: Suse RPM installation problem
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

Thanks for your help

As you suggested I do indeed have a 64bit version called exactly the same

PC5-140:/home/rmgzshd # rpm -qf /usr/lib/libpng12.so.0
libpng-32bit-1.2.8-19.5
PC5-140:/home/rmgzshd # rpm -qf /usr/lib64/libpng12.so.0
libpng-1.2.8-19.5

SO how do I tell rpm to find this and not the 32bit file? Or do I need to edit something in the rpm file?

Thanks




-----Original Message-----
From: Peter Dalgaard [mailto:p.dalgaard@biostat.ku.dk]
Sent: Thu 6/21/2007 6:34 PM
To: Stephen Henderson
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] FW: Suse RPM installation problem
 
Stephen Henderson wrote:
> Hello 
>
> I am trying to install the R RPM for Suse 10.0 on an x86_64 PC. However
> I am failing a dependency for  "libpng12.so.0" straight away
>
>
>
>     PC5-140:/home/rmgzshd # rpm -i R-base-2.5.0-2.1.x86_64.rpm
>     error: Failed dependencies:
>     libpng12.so.0(PNG12_0)(64bit) is needed by R-base-2.5.0-2.1.x86_64
>
> I do seem to have this file
>
>     PC5-140:/home/rmgzshd # whereis libpng12.so.0
>     libpng12.so: /usr/lib/libpng12.so.0 /usr/local/lib/libpng12.so 
>
> but presuming that it is not the 64bit version mentioned I went looking
> for a 64 bit version but could not find it through google.
>
> However reading the Installation manual I noted that libpng is mention
> in the context of a source build. I therefore downloaded "libpng-1.2.18"
> (v-1.2.8 or later is specified in the manual) and succesfully compiled
> this. This did not however help with my problem.
>
> Any suggestions?
>
>   
I have

viggo:~/>rpm -qf /usr/lib/libpng12.so.0
libpng-32bit-1.2.12-25
viggo:~/>rpm -qf /usr/lib64/libpng12.so.0
libpng-1.2.12-25
viggo:~/>rpm -q R-base
R-base-2.5.0-2.1


> Thanks
> Stephen Henderson
>  
>
> **********************************************************************
> This email and any files transmitted with it are confidentia...{{dropped}}
>
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
>   



**********************************************************************
This email and any files transmitted with it are confidentia...{{dropped}}

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                  

ly1YplScJ"p