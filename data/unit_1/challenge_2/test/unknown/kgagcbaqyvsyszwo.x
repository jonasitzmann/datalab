From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 18:55:34 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SMtVL9016693
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 18:55:32 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SMsfuQ019441;
	Fri, 29 Jun 2007 00:54:58 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from relay0.mail.ox.ac.uk (relay0.mail.ox.ac.uk [129.67.1.161])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SMJlfv006053
	for <r-help@stat.math.ethz.ch>; Fri, 29 Jun 2007 00:19:51 +0200
Received: from smtp1.mail.ox.ac.uk ([129.67.1.207])
	by relay0.mail.ox.ac.uk with esmtp (Exim 4.62)
	(envelope-from <ramasamy@cancer.org.uk>)
	id 1I42L5-0007hK-1l; Thu, 28 Jun 2007 23:19:47 +0100
Received: from dhcp-132.wolf.ox.ac.uk ([163.1.180.132] helo=[127.0.0.1])
	by smtp1.mail.ox.ac.uk with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.63) (envelope-from <ramasamy@cancer.org.uk>)
	id 1I42L5-0000C4-3z; Thu, 28 Jun 2007 23:19:47 +0100
Message-ID: <46843402.8030107@cancer.org.uk>
Date: Thu, 28 Jun 2007 23:19:46 +0100
From: Adaikalavan Ramasamy <ramasamy@cancer.org.uk>
User-Agent: Thunderbird 1.5.0.12 (Windows/20070509)
MIME-Version: 1.0
To: Kirsten Beyer <kirsten-beyer@uiowa.edu>
References: <e9b46960706281300t48ed28dcoaccf8d7121b4dea9@mail.gmail.com>
In-Reply-To: <e9b46960706281300t48ed28dcoaccf8d7121b4dea9@mail.gmail.com>
X-Oxford-Username: scro0777
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] sampling question
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

Lets assume your zcta data looks like this

    set.seed(12345) ## temporary for reproducibility
    zcta <- data.frame( zipcode=LETTERS[1:5], prop=runif(5) )
    zcta
    zipcode      prop
1       A 0.7209039
2       B 0.8757732
3       C 0.7609823
4       D 0.8861246
5       E 0.4564810

This says that 72.1% of the population in zipcode A is female, ..., and 
45.6% in zipcode E is female.


Now suppose you sampled 20 people and you recorded the zipcode (and 
other variables) and stored in 'samp'

    samp <- data.frame( id=1:20,
                        zipcode=LETTERS[ sample(1:5, 20, replace=TRUE) ])


Now, I am not sure what you want to do. But I could see two possible 
meanings from your message.

1) If you want to sample 10 observation, with each observation weighted 
INDEPENDENTLY by the proportion of women in its zipcode, try something 
like the following. The problem with this option is that it depends on 
the prevalence of the zipcodes of the observations.

    comb <- merge( samp, zcta, all.x=T )
    comb <- comb[ order(comb$id), ]
    comb[ sample( comb$id, 10, prob=comb$prop ), ]



2) If you want to sample x% in each zipcode, where x is the proportion 
of women in that zipcode. Then this is what I would call stratified 
sampling. Try this:

    tmp <- split( samp, samp$zipcode )
    out <- NULL

    for( z in names(tmp) ){
       df <- tmp[[z]]
       p  <- zcta[ zcta$zipcode == z, "prop" ]
       out[[z]] <- df[ sample( 1:nrow(df), p*nrow(df) ), ]
    }
    do.call("rbind", out)

You probably need a variant of these but if you need further help, you 
will need to provide more information and better yet examples.

Regards, Adai



Kirsten Beyer wrote:
> I am interested in locating a script to implement a sampling scheme
> that would basically make it more likely that a particular observation
> is chosen based on a weight associated with the observation.  I am
> trying to select a sample of ~30 census blocks from each ZIP code area
> based on the proportion of women in a ZCTA living in a particular
> block.  I want to make it more likely that a block will be chosen if
> the proportion of women in a patient's age group in a particular block
> is high. Any ideas are appreciated!
> 
> ______________________________________________
> R-help@stat.math.ethz.ch mailing list
> https://stat.ethz.ch/mailman/listinfo/r-help
> PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
> and provide commented, minimal, self-contained, reproducible code.
> 
> 
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

            

fe>BUni5ns 
=3d