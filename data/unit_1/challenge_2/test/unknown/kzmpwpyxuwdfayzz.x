From r-help-bounces@stat.math.ethz.ch  Thu Jun 14 06:47:46 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5EAljL9020336
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 06:47:46 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EAlErx005347;
	Thu, 14 Jun 2007 12:47:20 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5EA6n8r022440
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 14 Jun 2007 12:06:51 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1HymE5-0007ox-6m
	for r-help@stat.math.ethz.ch; Thu, 14 Jun 2007 03:06:49 -0700
Message-ID: <11117324.post@talk.nabble.com>
Date: Thu, 14 Jun 2007 03:06:49 -0700 (PDT)
From: billycorg <billycorg1@virgilio.it>
To: r-help@stat.math.ethz.ch
In-Reply-To: <467109AB.3050108@karlin.mff.cuni.cz>
MIME-Version: 1.0
X-Nabble-From: billycorg1@virgilio.it
References: <11094459.post@talk.nabble.com>
	<466FA7C3.7020703@statistik.uni-dortmund.de>
	<11114923.post@talk.nabble.com>
	<4670F707.1050804@karlin.mff.cuni.cz>
	<467109AB.3050108@karlin.mff.cuni.cz>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5EA6n8r022440
Subject: Re: [R] extractor rows from a matrix
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
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5EAljL9020336


Petr, it works!!!thank you a lot!!!
Vincenzo

Petr Klasterecky wrote:> > Well, you cannot have a vector of vectors, you need a list of vectors. > With mean() and sum() it worked probably because these produce a single > number as their output. Also, the rbind() function won't help here, that > is for merging vector into a matrix. Once again, reading R-Intro is the > best advice I can give you.> > # creating an ampty list of length 1096:> d <- list()> length(d) <- 1096> > # Filling the list with rows> for(i in (1:1096)){> d[[i]] <- ht[i,]> }> > Note the double bracketing when indexing lists: d[[1]]> > Please respond to the entire list next time, I only read these messages > occasionally.> > Petr> > > vincenzo napsal(a):>> thank you a lot for the answer>>  >> i don't expect one vector..>> but 1096 vector.>>  >> example: ht=>>            1        2        3>> 1          3        4        5>> 2          4        5        8>> 3>> 4>> .>> .>> .>> 1096 >>  >> i'd like 1096 vector like these:>> d[1]= 3    4    5>> d[2]= 4    5    8>> ...>>  >> i'm trying now with this:>> for(i in 1:1096) d[i]=(rbind(ht[i,])) >> but it doesn't work :(>> it works with function like "mean","sum".. but not with "rbind">> what can i do?>>  >>  >>  >> /-------Messaggio originale-------/>>  >> /*Da:*/ Petr Klasterecky <mailto:klaster@karlin.mff.cuni.cz>>> /*Data:*/ 06/14/07 10:07:33>> /*A:*/ billycorg <mailto:billycorg1@virgilio.it>>> /*Cc:*/ r-help@stat.math.ethz.ch <mailto:r-help@stat.math.ethz.ch>>> /*Oggetto:*/ Re: [R] extractor rows from a matrix>>  >> billycorg napsal(a):>>  > thanks for the answer..but i don't find what i'm looking for!>>  >>>  > now i'm trying to expose better my problem:>>  > i have:>>  >>>  > ht= a 1096rows x 3 columns matrix>>  >>>  > i'd like a function like this:>>  >>>  > d[i]=rbind(ht[i,]) for (i in 1:length(ht))>>  >>>  > but this don't work :(>>  > can anyone seriously help  me?>>  >> The problem is that people actually are trying to seriously help you,>> but it is really difficult from your queries...>>  >> Please specify what you expect to be your output - a vector where you>> just paste the rows of of the original matrix one by one?>> If so, you can do>> d <- t(ht)>> dim(d) <- NULL>>  >> or (a 'dirty' way)>> d <- c(t(ht))>>  >> It is not at all clear what your statement should do. For example, what>> is length(ht) with ht being a matrix? For R it is the total number of>> elements, but did you mean this or the number of rows/columns??>>  >> The suggestion to read R-Intro is the best advice you got here.>>  >> Petr>>  >> -->> Petr Klasterecky>> Dept. of Probability and Statistics>> Charles University in Prague>> Czech Republic>>  >> __________ Informazione NOD32 2328 (20070613) __________>>  >> Questo messaggio  è stato controllato dal Sistema Antivirus NOD32>> http://www.nod32.it <http://www.nod32.it/>>>  >>  >> 		>> > > -- > Petr Klasterecky> Dept. of Probability and Statistics> Charles University in Prague> Czech Republic> > ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide> http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.> > 
-- View this message in context: http://www.nabble.com/extractor-rows-from-a-matrix-tf3913088.html#a11117324Sent from the R help mailing list archive at Nabble.com.
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

                 

VmBetZ7s