From r-help-bounces@stat.math.ethz.ch  Fri Jul  6 07:01:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l66B0EL9006817
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 6 Jul 2007 07:00:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l66AxW0A007547;
	Fri, 6 Jul 2007 12:59:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS autolearn=no version=3.2.0
Received: from smtprelay06.ispgateway.de (smtprelay06.ispgateway.de
	[80.67.18.44])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l66AhDtU002851
	for <r-help@stat.math.ethz.ch>; Fri, 6 Jul 2007 12:43:13 +0200
Received: (qmail 708 invoked from network); 6 Jul 2007 10:43:13 -0000
Received: from unknown (HELO gaia-group.com) (138412@[217.110.20.74])
	(envelope-sender <Bernhard.Wellhoefer@gaia-group.com>)
	by smtprelay06.ispgateway.de (qmail-ldap-1.03) with SMTP
	for <r-help@stat.math.ethz.ch>; 6 Jul 2007 10:43:13 -0000
Content-class: urn:content-classes:message
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
Date: Fri, 6 Jul 2007 12:43:12 +0200
Message-ID: <7C36DCD0D35F9A4A8D89A7A8916E755D6D5384@GAIA-SERVER.gaia-group.local>
In-Reply-To: <5E3D22A4869BB94AA1138AB97660D8B69196B0@POPULUS.ifn.fr>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: [R] RODBC problem
Thread-Index: Ace/smONAmUrDdZpRrqmz0BgCx+rHwAAY4FAAAGeAoA=
References: <5E3D22A4869BB94AA1138AB97660D8B69196B0@POPULUS.ifn.fr>
From: =?iso-8859-1?Q?Bernhard_Wellh=F6fer?=
	<Bernhard.Wellhoefer@gaia-group.com>
To: <r-help@stat.math.ethz.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l66AhDtU002851
Subject: Re: [R] RODBC problem
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l66B0EL9006817

Hello,

as I wrote I call

  sqlFetch(channel,"t_studie")

and this function generates in the background the concrete query. How can I view/log/... the concrete query?

Regards,

Bernhard 

> -----Original Message-----
> From: DUPREZ C�dric [mailto:cedric.duprez@ifn.fr] 
> Sent: Friday, July 06, 2007 11:59 AM
> To: Bernhard Wellh�fer
> Cc: r-help@stat.math.ethz.ch
> Subject: RE: [R] RODBC problem
> 
> Hello,
> 
> The problem seems to be in the query syntax.
> Can you show us the query you are trying to perform ?
> 
> Regards,
> 
> Cedric
> 
> -----Message d'origine-----
> De�: r-help-bounces@stat.math.ethz.ch 
> [mailto:r-help-bounces@stat.math.ethz.ch] De la part de 
> Bernhard Wellh�fer
> Envoy�: vendredi 6 juillet 2007 11:45
> ��: r-help@stat.math.ethz.ch
> Objet�: [R] RODBC problem
> 
> Hello,
>  
> I use a RODBC connection to a MySQL server on a Debian 
> machine. The call to odbcConnect() seems to be ok, but the 
> result of the first sqlFetch(channel,"t_studie") retrieves 
> this data frame:
>  
> [1] "[RODBC] ERROR: Could not SQLExecDirect"
> [2] "42000 1064 [MySQL][ODBC 3.51 
> Driver][mysqld-5.0.22-Debian_1bpo1-log]You have an error in 
> your SQL syntax; check the manual that corresponds to your 
> MySQL server version for the right syntax to use near '\"t_studi(\004"
> 
> Please note the funny character at the end of the table name 
> in the error message.
>  
> The "Test Data Source" option on the ODBC Data Source Name 
> configuration panel report success.
>  
> Who can help me here?
>  
> Regards,
>  
> Bernhard
>  
>  
>  
>  
>  
> 
> 	[[alternative HTML version deleted]]
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide 
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

      

so_hrUQ &th 3QkY