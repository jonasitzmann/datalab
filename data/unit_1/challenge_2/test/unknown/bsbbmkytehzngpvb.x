From r-help-bounces@stat.math.ethz.ch  Fri Jun 22 05:11:31 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M9BUL9004240
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 05:11:31 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M9AvX1002224;
	Fri, 22 Jun 2007 11:11:04 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5M9Apwg002196
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 11:10:51 +0200
Received: from [192.38.18.17] (viggo.kubism.ku.dk [192.38.18.17])
	by slim.kubism.ku.dk (Postfix) with ESMTP id BA18448B1F;
	Fri, 22 Jun 2007 11:10:50 +0200 (CEST)
Message-ID: <467B921A.9010206@biostat.ku.dk>
Date: Fri, 22 Jun 2007 11:10:50 +0200
From: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Stephen Henderson <s.henderson@ucl.ac.uk>
References: <61B482B74D6EE443B90356E080476E340189529A@exc2.cruciform.wibr.ucl.ac.uk>
In-Reply-To: <61B482B74D6EE443B90356E080476E340189529A@exc2.cruciform.wibr.ucl.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5M9Apwg002196
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5M9BUL9004240

Stephen Henderson wrote:> Thanks for your help>> As you suggested I do indeed have a 64bit version called exactly the same>> PC5-140:/home/rmgzshd # rpm -qf /usr/lib/libpng12.so.0> libpng-32bit-1.2.8-19.5> PC5-140:/home/rmgzshd # rpm -qf /usr/lib64/libpng12.so.0> libpng-1.2.8-19.5>> SO how do I tell rpm to find this and not the 32bit file? Or do I need to edit something in the rpm file?>> Thanks>>   Odd... Do you actually _have_  /usr/lib64/libpng12.so.0 (whereis didn'tseem to find it) --- as opposed to "rpm -qf" telling you which packagecontains the file? If not, try (re)installing libpng, possibly with--force.>>> -----Original Message-----> From: Peter Dalgaard [mailto:p.dalgaard@biostat.ku.dk]> Sent: Thu 6/21/2007 6:34 PM> To: Stephen Henderson> Cc: r-help@stat.math.ethz.ch> Subject: Re: [R] FW: Suse RPM installation problem>  > Stephen Henderson wrote:>   >> Hello >>>> I am trying to install the R RPM for Suse 10.0 on an x86_64 PC. However>> I am failing a dependency for  "libpng12.so.0" straight away>>>>>>>>     PC5-140:/home/rmgzshd # rpm -i R-base-2.5.0-2.1.x86_64.rpm>>     error: Failed dependencies:>>     libpng12.so.0(PNG12_0)(64bit) is needed by R-base-2.5.0-2.1.x86_64>>>> I do seem to have this file>>>>     PC5-140:/home/rmgzshd # whereis libpng12.so.0>>     libpng12.so: /usr/lib/libpng12.so.0 /usr/local/lib/libpng12.so >>>> but presuming that it is not the 64bit version mentioned I went looking>> for a 64 bit version but could not find it through google.>>>> However reading the Installation manual I noted that libpng is mention>> in the context of a source build. I therefore downloaded "libpng-1.2.18">> (v-1.2.8 or later is specified in the manual) and succesfully compiled>> this. This did not however help with my problem.>>>> Any suggestions?>>>>   >>     > I have>> viggo:~/>rpm -qf /usr/lib/libpng12.so.0> libpng-32bit-1.2.12-25> viggo:~/>rpm -qf /usr/lib64/libpng12.so.0> libpng-1.2.12-25> viggo:~/>rpm -q R-base> R-base-2.5.0-2.1>>>   >> Thanks>> Stephen Henderson>>  >>>> **********************************************************************>> This email and any files transmitted with it are confidentia...{{dropped}}>>>> ______________________________________________>> R-help@stat.math.ethz.ch mailing list>> https://stat.ethz.ch/mailman/listinfo/r-help>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html>> and provide commented, minimal, self-contained, reproducible code.>>   >>     >>>> **********************************************************************> This email and any files transmitted with it are confidentia...{{dropped}}>> ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.>   

--    O__  ---- Peter Dalgaard             Øster Farimagsgade 5, Entr.B  c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45) 35327918~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45) 35327907
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

 


 sWh