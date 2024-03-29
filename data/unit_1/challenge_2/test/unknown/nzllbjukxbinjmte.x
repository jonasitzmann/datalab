From r-help-bounces@stat.math.ethz.ch  Mon Jul  2 16:24:28 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62KORL9018557
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 16:24:28 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62KMsje007760;
	Mon, 2 Jul 2007 22:23:06 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=AWL, BAYES_60,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from smtp1.ihug.co.nz (smtpqueue1.ihug.co.nz [203.109.136.151])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l62KMgbX007703
	for <r-help@stat.math.ethz.ch>; Mon, 2 Jul 2007 22:22:44 +0200
Received: from smtp24.content.ihug.net.nz (akl-content-smtp24) [10.80.52.24] 
	by akl-content-smtp1.ihug.net with esmtp (Exim 4.60 #1 (Debian))
	id 1I5SPP-0003jR-HP; Tue, 03 Jul 2007 08:22:07 +1200
Received: from cust.filter1.content.ihug.net.nz (smtp.mailfilter1.ihug.co.nz)
	[10.80.50.1] 
	by akl-content-smtp24 with esmtp (Exim 4.60 #1 (Debian))
	id 1I5SPx-0007GQ-9e; Tue, 03 Jul 2007 08:22:41 +1200
Ironport-Content-Filter: send-to-smtp
Received: from 203-109-144-240.static.bliink.ihug.co.nz (HELO
	localhost.localdomain) ([203.109.144.240])
	by smtp.mailfilter1.ihug.co.nz with ESMTP/TLS/DHE-RSA-AES256-SHA;
	03 Jul 2007 08:22:35 +1200
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by localhost.localdomain (8.13.8/8.13.8) with ESMTP id l62KMXVB012161; 
	Tue, 3 Jul 2007 08:22:34 +1200
Received: (from pat@localhost)
	by localhost.localdomain (8.13.8/8.13.8/Submit) id l62KMVBN012160;
	Tue, 3 Jul 2007 08:22:31 +1200
X-Authentication-Warning: localhost.localdomain: pat set sender to
	p_connolly@ihug.co.nz using -f
Date: Tue, 3 Jul 2007 08:22:31 +1200
From: Patrick Connolly <p_connolly@ihug.co.nz>
To: Ravi Varadhan <rvaradhan@jhmi.edu>
Message-ID: <20070702202231.GA9728@ihug.co.nz>
References: <D8F26047-45B9-4E1F-B813-DCD1F4901623@mac.com>
	<11398608.post@talk.nabble.com>
	<000001c7bcdd$7c8f9f50$7c94100a@win.ad.jhu.edu>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000001c7bcdd$7c8f9f50$7c94100a@win.ad.jhu.edu>
User-Agent: Mutt/1.4.2.2i
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch, "'Mark Difford'" <mark_difford@yahoo.co.uk>
Subject: Re: [R] Question about PCA with prcomp
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

On Mon, 02-Jul-2007 at 03:16PM -0400, Ravi Varadhan wrote:

|> Mark,
|> 
|> What you are referring to deals with the selection of covariates, since PC
|> doesn't do dimensionality reduction in the sense of covariate selection.
|> But what Mark is asking for is to identify how much each data point
|> contributes to individual PCs.  I don't think that Mark's query makes much
|> sense, unless he meant to ask: which individuals have high/low scores on
|> PC1/PC2.  Here are some comments that may be tangentially related to Mark's
|> question:
|> 
|> 1.  If one is worried about a few data points contributing heavily to the
|> estimation of PCs, then one can use robust PCA, for example, using robust
|> covariance matrices.  MASS has some tools for this.
|> 2.  The "biplot" for the first 2 PCs can give some insights
|> 3. PCs, especially, the last few PCs, can be used to identify "outliers".

What is meant by "last few PCs"?

-- 
~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.   
   ___    Patrick Connolly   
 {~._.~}          		 Great minds discuss ideas    
 _( Y )_  	  	        Middle minds discuss events 
(:_~*~_:) 	       		 Small minds discuss people  
 (_)-(_)  	                           ..... Anon
	  
~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

        

51p4e/n oGS>pe