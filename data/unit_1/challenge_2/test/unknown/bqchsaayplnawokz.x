From r-help-bounces@stat.math.ethz.ch  Mon Jun 25 08:29:40 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5PCJKLv027849
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 08:29:40 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5MGWWUa007743;
	Fri, 22 Jun 2007 18:32:44 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No,
	score=0.0 required=5.0 tests=DKIM_POLICY_SIGNSOME autolearn=no
	version=3.2.0
Received: from front2.acsu.buffalo.edu (upfront.acsu.buffalo.edu
	[128.205.4.140])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with SMTP id l5MGJcPR003295
	for <r-help@stat.math.ethz.ch>; Fri, 22 Jun 2007 18:19:42 +0200
Received: (qmail 23282 invoked from network); 22 Jun 2007 16:19:37 -0000
Received: from mailscan3.acsu.buffalo.edu (128.205.6.135)
	by front2.acsu.buffalo.edu with SMTP; 22 Jun 2007 16:19:37 -0000
Received: (qmail 5628 invoked from network); 22 Jun 2007 16:19:36 -0000
Received: from h565sb.pharm.buffalo.edu (HELO ?127.0.0.1?) (128.205.185.221)
	by smtp5.acsu.buffalo.edu with SMTP; 22 Jun 2007 16:19:36 -0000
Message-ID: <467BF697.8050203@free.fr>
Date: Fri, 22 Jun 2007 12:19:35 -0400
From: =?UTF-8?B?U8OpYmFzdGllbg==?= <pomchip@free.fr>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Deepayan Sarkar <deepayan.sarkar@gmail.com>
References: <4679F719.7020308@free.fr>	
	<f8e6ff050706210513r51fd9d28mb102a919e20499d6@mail.gmail.com>	
	<467A74D5.4090808@free.fr>
	<eb555e660706211319y4332d5c9kd406411bff620043@mail.gmail.com>
In-Reply-To: <eb555e660706211319y4332d5c9kd406411bff620043@mail.gmail.com>
X-Antivirus: avast! (VPS 000751-3, 22/06/2007), Outbound message
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
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5PCJKLv027849

Hi Deepayan,
The following code creates a dummy dataset which has the same similar as my usual datasets. I did not try to implement the changes proposed by Hadley, hoping that a solution can be found using the original dataset.
######### My code
# Creating dataset
nPts<-10            # number of time pointsnInd<-6              # number of individualsnModel<-3         # number of models
TimePts<-rep(1:nPts,nInd*nModel)                                    # creates the "Time" columnCoef<-rep(rnorm(6,0.1,0.01),each=nPts,nModel)             # Creates a vector of coefficients for generating the observationsObs<-10*exp(-Coef*TimePts)                                         # creates the observations
for (i in 1:60){Pred[i]<-jitter(10*exp(-Coef[i]*TimePts[i]))Pred[i+60]<-jitter(5)Pred[i+120]<-jitter(10-Coef[i+120]*TimePts[i])}                                                                                          # creates the predicted values
colPlot<-rep(1,nPts*nInd*nModel)                                           # creates the "Plot" columncolModel<-gl(nModel,nPts*nInd,labels=c("A","B","C"))             # creates the "Model" columncolID<-gl(nInd,nPts,nPts*nInd*nModel)                                       # creates the "ID" column
mydata<-data.frame(colPlot,colModel,colID,TimePts,Obs,Pred)                            # creates the datasetnames(mydata)<-c("Plot","Model","Individuals","Time","Observed","Predicted")
# Plotting as indicated by Deepayan
xyplot(Observed + Predicted ~ Time | Individuals + Model,      data = mydata,      panel = panel.superpose.2, type = c("p", "l"),      layout = c(0, nlevels(mydata$Individuals))) #,      #<...>)
####### End of code
This codes is not exactly what I am looking for, although it is pretty close. In the present case, I would like to have a Trellis plot with 6 panels (one for each individual), where the Observations and the Predicted are plotted as symbols and lines, respectively. All three models should be plotted on the same panel. Unfortunately, it looks to me as 3 successives xyplots are created by the code above but only the last one remains displayed. I tried to play with panel.superpose,panel.superpose.2 and type, without much success.
I also tried the following code that creates 18 panels and distinguish all (Individuals,Model) couples... so, not what I want.
xyplot(Observed + Predicted ~ Time | Individuals+Model, data = mydata,     type = c("p", "l"), distribute.type = TRUE)
Sebastien

Deepayan Sarkar a écrit :> On 6/21/07, Sébastien <pomchip@free.fr> wrote:>> Hi Hadley,>>>> Hopefully, my dataset won't be too hard to changed. Can I modify the>> aspect of each group using your code (symbols for observed and lines for>> predicted)?>>>> Sebastien>>>> hadley wickham a écrit :>> > Hi Sebastian,>> >>> > I think you need to rearrange your data a bit.  Firstly, you need to>> > put observed on the same footing as the different models, so you would>> > have a new column in your data called value (previously observed and>> > predicted) and a new model type ("observed").  Then you could do:>> Yes, and ?make.groups (and reshape of course) could help with that.> This might not be strictly necessary though.>> However, I'm finding your pseudo-code confusing. Could you create a> small example data set that can be used to try out some real code?> Just from your description, I would have suggested something like>> xyplot(Observed + Predicted ~ Time | Individuals + Model,>       data = mydata,>       panel = panel.superpose.2, type = c("p", "l"),>       layout = c(0, nlevels(mydata$Individuals)),>       <...>)>> If all you want is to plot one page at a time, there are easier ways > to do that.>> -Deepayan>>> >>> > xyplot(value ~ time | individauls, data=mydata, group=model)>> >>> > Hadley>> >>> >>> > On 6/21/07, Sébastien <pomchip@free.fr> wrote:>> >> Dear R Users,>> >>>> >> I recently posted an email on this list  about the use of >> data.frame and>> >> overlaying multiple plots. Deepayan kindly indicated to me the>> >> panel.superposition command which worked perfectly in the context >> of the>> >> example I gave.>> >> I'd like to go a little bit further on this topic using a more >> complex>> >> dataset structure (actually the one I want to work on).>> >>>> >>  >mydata>> >>       Plot    Model    Individuals    Time        Observed>> >> Predicted>> >> 1    1        A           1                  0.05>> >> 10                    10.2>> >> 2    1        A           1                  0.10>> >> 20                    19.5>> >> etc...>> >> 10  1        B           1                  0.05         10>> >>          9.8>> >> 11  1        B           1                  0.10         20>> >>          20.2>> >> etc...>> >>>> >> There are p "levels" in mydata$Plot, m in mydata$Model, n in>> >> mydata$Individuals and t in mydata$Time (Note that I probably use the>> >> word levels improperly as all columns are not factors). Basically, >> this>> >> dataset summarizes the t measurements obtained in n individuals as >> well>> >> as the predicted values from m different modeling approaches >> (applied to>> >> all individuals). Therefore, the observations are repeated m times in>> >> the Observed columns, while the predictions appears only once for a>> >> given model an a given individual.>> >>>> >> What I want to write is a R batch file creating a Trellis graph, >> where>> >> each panel corresponds to one individual and contains the >> observations>> >> (as scatterplot) plus the predicted values for all models (as >> lines of>> >> different colors)... $Plot is just a token: it might be used to not>> >> overload graphs in case there are too many tested models. The fun >> part>> >> is that the values of p, m, n and t might vary from one dataset to >> the>> >> other, so everything has to be coded dynamically.>> >>>> >> For the plotting part I was thinking about having a loop in my code>> >> containing something like that:>> >>>> >> for (i in 1:nlevels(mydata$Model)) {>> >>>> >> subdata<-subset(mydata,mydata$Model=level(mydata$Model)[i])>> >> xyplot(subset(Observed + Predicted ~ Time | Individuals, data =>> >> subdata)       #plus additionnal formatting code>> >>>> >> }>> >>>> >> Unfortunately, this code simply creates a new Trellis plot instead of>> >> adding the model one by one on the panels. Any idea or link to a >> useful>> >> command will wellcome.>> >>>> >> Sebastien>> >>>> >> ______________________________________________>> >> R-help@stat.math.ethz.ch mailing list>> >> https://stat.ethz.ch/mailman/listinfo/r-help>> >> PLEASE do read the posting guide>> >> http://www.R-project.org/posting-guide.html>> >> and provide commented, minimal, self-contained, reproducible code.>> >>>> >>> >>>>> ______________________________________________>> R-help@stat.math.ethz.ch mailing list>> https://stat.ethz.ch/mailman/listinfo/r-help>> PLEASE do read the posting guide >> http://www.R-project.org/posting-guide.html>> and provide commented, minimal, self-contained, reproducible code.>>
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

     

>d1o