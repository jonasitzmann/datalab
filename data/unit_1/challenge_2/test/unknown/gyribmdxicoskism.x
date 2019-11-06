From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 09:49:20 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EDnJL9022363
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 09:49:20 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDmip5007415;
	Thu, 14 Jun 2007 15:48:53 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EDmZ5K007363
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 15:48:36 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1Hypgg-0005Bj-Cw
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 06:48:34 -0700
Message-ID: <11120608.post@talk.nabble.com>
Date: Thu, 14 Jun 2007 06:48:34 -0700 (PDT)
From: Mark Difford <mark_difford@yahoo.co.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <8975119BCD0AC5419D61A9CF1A923E9504F0D564@iahce2ksrv1.iah.bbsrc.ac.uk>
MIME-Version: 1.0
X-Nabble-From: mark_difford@yahoo.co.uk
References: <8975119BCD0AC5419D61A9CF1A923E9504F0D557@iahce2ksrv1.iah.bbsrc.ac.uk>
	<11118602.post@talk.nabble.com>
	<8975119BCD0AC5419D61A9CF1A923E9504F0D564@iahce2ksrv1.iah.bbsrc.ac.uk>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Subject: Re: [R] Difference between prcomp and cmdscale
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


Hi Michael,

Doubtless Professor Ripley did; but it helps to put your back into it.  Long
ago Gower (1966) drew attention to the links between PCA and classical
scaling.  It took me a few seconds to find this:

http://www.garfield.library.upenn.edu/classics1980/A1980JJ08200001.pdf

Of course, I knew about Gower.  But I knew about Gower because I had done
the _basic_ research on these methods.  And that was my point.  In a later
paper Gower argued that classical scaling extended, and was more powerful
than, PCA.

However, classical scaling operates on [a matrix of] similarities between
observations/individuals/rows, whereas PCA operates on [a matrix of]
similarities between variables/descriptors/columns.  This means that in
classical scaling the axes cannot be interpreted; often one does  a PCA to
get at these.

HTH, bestR,
Mark.


michael watson (IAH-C) wrote:
> 
> Hi Mark
> 
> I think Brian Ripley answered this most effectively and succinctly.  I
> did actually do quite a bit of googling and searching of the R help
> before posting, and whilst there is quite a lot on each topic
> individually, I failed to find articles that compare and contrast PCA
> and MDS.  If you know of any, of course I would be happy to read them.
> 
> Many thanks
> Mick
> 
> -----Original Message-----
> From: r-help-bounces@stat.math.ethz.ch
> [mailto:r-help-bounces@stat.math.ethz.ch] On Behalf Of Mark Difford
> Sent: 14 June 2007 12:49
> To: r-help@stat.math.ethz.ch
> Subject: Re: [R] Difference between prcomp and cmdscale
> 
> 
> Michael,
> 
> Why should that confuse you?  Have you tried reading some of the
> literature
> on these methods?  There's plenty about them on the Net (Wiki's often a
> goodish place to start)---and even in R, if you're prepared to look ;).
> 
> BestR,
> Mark.
> 
> 
> michael watson (IAH-C) wrote:
>> 
>> I'm looking for someone to explain the difference between these
>> procedures.  The function prcomp() does principal components anaylsis,
>> and the function cmdscale() does classical multi-dimensional scaling
>> (also called principal coordinates analysis).
>> 
>> My confusion stems from the fact that they give very similar results:
>> 
>> my.d <- matrix(rnorm(50), ncol=5)
>> rownames(my.d) <- paste("c", 1:10, sep="")
>> # prcomp
>> prc <- prcomp(my.d)
>> # cmdscale
>> mds <- cmdscale(dist(my.d))
>> cor(prc$x[,1], mds[,1]) # produces 1 or -1
>> cor(prc$x[,2], mds[,2]) # produces 1 or -1
>> 
>> Presumably, under the defaults for these commands in R, they carry out
>> the same (or very similar) procedures?
>> 
>> Thanks
>> Mick
>> 
>> The information contained in this message may be\ confiden...{{dropped}}
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide
> http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 

-- 
View this message in context: http://www.nabble.com/Difference-between-prcomp-and-cmdscale-tf3920408.html#a11120608
Sent from the R help mailing list archive at Nabble.com.

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

a .d