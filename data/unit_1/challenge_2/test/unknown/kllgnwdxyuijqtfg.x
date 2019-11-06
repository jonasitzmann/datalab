From r-help-bounces@stat.math.ethz.ch  Sun Jun  3 06:34:45 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l53AYhhB014631
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 3 Jun 2007 06:34:44 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53AYALV016609;
	Sun, 3 Jun 2007 12:34:17 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from fisher.stats.uwo.ca (fisher.stats.uwo.ca [129.100.76.201])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l53AT6Wj014916
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Sun, 3 Jun 2007 12:29:07 +0200
Received: from [127.0.0.1]
	(IDENT:U2FsdGVkX19ip7OaK2j6I2TuponJLAaDnMIwAp9yO1g@localhost.localdomain
	[127.0.0.1])
	by fisher.stats.uwo.ca (8.13.1/8.13.1) with ESMTP id l53AT3VY005096;
	Sun, 3 Jun 2007 06:29:03 -0400
Message-ID: <466297E4.7090003@stats.uwo.ca>
Date: Sun, 03 Jun 2007 06:28:52 -0400
From: Duncan Murdoch <murdoch@stats.uwo.ca>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Paulino Perez Rodriguez <perpdgo@colpos.mx>
References: <web-10660380@mailadmin.colpos.mx>
	<74c69e370706022033y36bb6958v6faea0da9667340e@mail.gmail.com>
In-Reply-To: <74c69e370706022033y36bb6958v6faea0da9667340e@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l53AYhhB014631

On 02/06/2007 11:33 PM, David James wrote:
> Hi,
> 
> The error is coming from the FIND command (and in upper case, hmm).
> I'd suggest making sure you are using the right find.

Yes, that's a sign that the PATH is not set the way the R tools need it. 
  See the "Windows toolset" section of the Installation and 
Administration manual.

Duncan Murdoch

> 
> HTH
> 
> --
> David
> 
> On 6/2/07, Paulino Perez Rodriguez <perpdgo@colpos.mx> wrote:
>> Hello, I am trying to compile/Install RMySQL_0.6-0 in
>> R-2.4.1/2.5.0 under Windows XP MCE, I am using MySQL
>> 5.0.41. I have followed the instructions in the file
>> INSTALL.win, but I get some errors...
>>
>> C:\Program Files\R\R-2.4.1>Rcmd build --binary RMySQL
>> --docs=normal
>> * checking for file 'RMySQL/DESCRIPTION' ... OK
>> * preparing 'RMySQL':
>> * checking DESCRIPTION meta-information ... OK
>> * cleaning src
>> * removing junk files
>> * checking for LF line-endings in source files
>> * checking for empty or unneeded directories
>> * building binary distribution
>>   WARNING
>> * some HTML links may not be found
>> installing R.css in c:/TEMP/Rinst248068707
>>
>> Using auto-selected zip options ' RMySQL-HELP=ziponly'
>>
>> ---------- Making package RMySQL ------------
>> ======================================================================
>> RMySQL configure.win:
>> * Using mysql libraries from
>> c:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt
>> * Using mysql dll from c:/PROGRA~1/MySQL/MYSQLS~1.0/bin
>> * Copying runtime libMySQL.dll and libmysql.lib to
>> inst/libs
>> * Using an existing libmysql.a in
>> c:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt
>> ======================================================================
>>    adding build stamp to DESCRIPTION
>>    installing NAMESPACE file and metadata
>>    making DLL ...
>> making RS-DBI.d from RS-DBI.c
>> making RS-MySQL.d from RS-MySQL.c
>> gcc -Ic:/PROGRA~1/MySQL/MYSQLS~1.0/include
>> -Ic:/PROGRA~1/R/R-24~1.1/include -W
>> all -O2 -std=gnu99 -c RS-DBI.c -o RS-DBI.o
>> gcc -Ic:/PROGRA~1/MySQL/MYSQLS~1.0/include
>> -Ic:/PROGRA~1/R/R-24~1.1/include -W
>> all -O2 -std=gnu99 -c RS-MySQL.c -o RS-MySQL.o
>> windres --include-dir c:/PROGRA~1/R/R-24~1.1/include -i
>> RMySQL_res.rc -o RMySQL
>> _res.o
>> gcc -shared -s -o RMySQL.dll RMySQL.def RS-DBI.o
>> RS-MySQL.o RMySQL_res.o -Lc:
>> /PROGRA~1/R/R-24~1.1/bin
>> -Lc:/PROGRA~1/MySQL/MYSQLS~1.0/lib/opt -lmysql -liberty
>>     -lR
>>    ... DLL made
>>    installing DLL
>>    installing R files
>>    installing inst files
>> FIND: Parameter format not correct
>> make[2]: *** [c:/TEMP/Rinst248068707/RMySQL/inst] Error 2
>> make[1]: *** [all] Error 2
>> make: *** [pkg-RMySQL] Error 2
>> *** Installation of RMySQL failed ***
>>
>> Removing 'c:/TEMP/Rinst248068707/RMySQL'
>>   ERROR
>> * installation failed
>>
>> C:\Program Files\R\R-2.4.1>
>>
>> What's happening?
>>
>> Thanks...
>>
>> --
>> Este mensaje ha sido analizado por MailScanner
>> en busca de virus y otros contenidos peligrosos,
>> y se considera que est� limpio.
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

  

J.8p