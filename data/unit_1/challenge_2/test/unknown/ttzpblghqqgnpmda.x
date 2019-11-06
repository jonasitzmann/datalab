From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 08:56:01 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5LCu0L9024007
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 08:56:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5LCsPep008616;
	Thu, 21 Jun 2007 14:54:47 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from front3.acsu.buffalo.edu (warmfront.acsu.buffalo.edu
	[128.205.6.88])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5LCrh03008078
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 14:53:44 +0200
Received: (qmail 9794 invoked from network); 21 Jun 2007 12:53:43 -0000
Received: from mailscan3.acsu.buffalo.edu (128.205.6.135)
	by front3.acsu.buffalo.edu with SMTP; 21 Jun 2007 12:53:43 -0000
Received: (qmail 11729 invoked from network); 21 Jun 2007 12:53:42 -0000
Received: from h565sb.pharm.buffalo.edu (HELO ?127.0.0.1?) (128.205.185.221)
	by smtp5.acsu.buffalo.edu with SMTP; 21 Jun 2007 12:53:42 -0000
Message-ID: <467A74D5.4090808@free.fr>
Date: Thu, 21 Jun 2007 08:53:41 -0400
From: =?ISO-8859-1?Q?S=E9bastien?= <pomchip@free.fr>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: hadley wickham <h.wickham@gmail.com>
References: <4679F719.7020308@free.fr>
	<f8e6ff050706210513r51fd9d28mb102a919e20499d6@mail.gmail.com>
In-Reply-To: <f8e6ff050706210513r51fd9d28mb102a919e20499d6@mail.gmail.com>
X-Antivirus: avast! (VPS 000751-1, 20/06/2007), Outbound message
X-Antivirus-Status: Clean
X-UB-Relay: (h565sb.pharm.buffalo.edu)
X-PM-EL-Spam-Prob: : 7%
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-help <r-help@stat.math.ethz.ch>
Subject: Re: [R] Overlaying lattice graphs (continued)
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
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5LCu0L9024007

Hi Hadley,

Hopefully, my dataset won't be too hard to changed. Can I modify the 
aspect of each group using your code (symbols for observed and lines for 
predicted)?

Sebastien

hadley wickham a �crit :
> Hi Sebastian,
>
> I think you need to rearrange your data a bit.  Firstly, you need to
> put observed on the same footing as the different models, so you would
> have a new column in your data called value (previously observed and
> predicted) and a new model type ("observed").  Then you could do:
>
> xyplot(value ~ time | individauls, data=mydata, group=model)
>
> Hadley
>
>
> On 6/21/07, S�bastien <pomchip@free.fr> wrote:
>> Dear R Users,
>>
>> I recently posted an email on this list  about the use of data.frame and
>> overlaying multiple plots. Deepayan kindly indicated to me the
>> panel.superposition command which worked perfectly in the context of the
>> example I gave.
>> I'd like to go a little bit further on this topic using a more complex
>> dataset structure (actually the one I want to work on).
>>
>>  >mydata
>>       Plot    Model    Individuals    Time        Observed
>> Predicted
>> 1    1        A           1                  0.05
>> 10                    10.2
>> 2    1        A           1                  0.10
>> 20                    19.5
>> etc...
>> 10  1        B           1                  0.05         10
>>          9.8
>> 11  1        B           1                  0.10         20
>>          20.2
>> etc...
>>
>> There are p "levels" in mydata$Plot, m in mydata$Model, n in
>> mydata$Individuals and t in mydata$Time (Note that I probably use the
>> word levels improperly as all columns are not factors). Basically, this
>> dataset summarizes the t measurements obtained in n individuals as well
>> as the predicted values from m different modeling approaches (applied to
>> all individuals). Therefore, the observations are repeated m times in
>> the Observed columns, while the predictions appears only once for a
>> given model an a given individual.
>>
>> What I want to write is a R batch file creating a Trellis graph, where
>> each panel corresponds to one individual and contains the observations
>> (as scatterplot) plus the predicted values for all models (as lines of
>> different colors)... $Plot is just a token: it might be used to not
>> overload graphs in case there are too many tested models. The fun part
>> is that the values of p, m, n and t might vary from one dataset to the
>> other, so everything has to be coded dynamically.
>>
>> For the plotting part I was thinking about having a loop in my code
>> containing something like that:
>>
>> for (i in 1:nlevels(mydata$Model)) {
>>
>> subdata<-subset(mydata,mydata$Model=level(mydata$Model)[i])
>> xyplot(subset(Observed + Predicted ~ Time | Individuals, data =
>> subdata)       #plus additionnal formatting code
>>
>> }
>>
>> Unfortunately, this code simply creates a new Trellis plot instead of
>> adding the model one by one on the panels. Any idea or link to a useful
>> command will wellcome.
>>
>> Sebastien
>>
>> ______________________________________________
>> R-help@stat.math.ethz.ch mailing list
>> https://stat.ethz.ch/mailman/listinfo/r-help
>> PLEASE do read the posting guide 
>> http://www.R-project.org/posting-guide.html
>> and provide commented, minimal, self-contained, reproducible code.
>>
>
>

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

                

Aecu5e00n  s