From r-help-bounces@stat.math.ethz.ch  Thu Jun 21 04:24:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5L8OGL9021758
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 04:24:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8NNhC007941;
	Thu, 21 Jun 2007 10:23:36 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	SPF_HELO_PASS, WHOIS_MYPRIVREG autolearn=no version=3.2.0
Received: from kuber.nabble.com (kuber.nabble.com [216.139.236.158])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5L8EXkH004976
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Thu, 21 Jun 2007 10:14:35 +0200
Received: from isper.nabble.com ([192.168.236.156])
	by kuber.nabble.com with esmtp (Exim 4.63)
	(envelope-from <bounces@nabble.com>) id 1I1HoH-0001nl-54
	for r-help@stat.math.ethz.ch; Thu, 21 Jun 2007 01:14:33 -0700
Message-ID: <11228522.post@talk.nabble.com>
Date: Thu, 21 Jun 2007 01:14:33 -0700 (PDT)
From: Mark Difford <mark_difford@yahoo.co.uk>
To: r-help@stat.math.ethz.ch
In-Reply-To: <7BE6A4DA-4934-44C9-8C5F-209994C99DD0@systbot.uzh.ch>
MIME-Version: 1.0
X-Nabble-From: mark_difford@yahoo.co.uk
References: <0B85CE3E-78E8-4DC5-8484-CBB687E61545@systbot.uzh.ch>
	<1182354377.16388.14.camel@gsimpson.geog.ucl.ac.uk>
	<11220912.post@talk.nabble.com>
	<7BE6A4DA-4934-44C9-8C5F-209994C99DD0@systbot.uzh.ch>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5L8EXkH004976
Subject: Re: [R] Dissimilarity
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
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5L8OGL9021758


Hi Birgit,
If French is a problem, then you will unfortunately (because you miss out onChessel's marvellous insights) have to do with the terser, more formal stuff(publications), on the "Links" page of the ade4 site.  Most of this is inEnglish:
http://pbil.univ-lyon1.fr/ADE-4/links.php?lang=eng## Chessel's stuffhttp://pbil.univ-lyon1.fr/R/perso/pagechessel.html
Hope that helps.
PS: There is also a brief overview of the one-table methods provided by theade4 package in an R Newsletter:http://cran.r-project.org/doc/Rnews/Rnews_2004-1.pdf

Birgit Lemcke wrote:> > Hello Mark,> > thank you for your additional advices.> I had already a short look at the vegan package but I think I have to  > look closer and also at the ade4 package.> > Unfortunately I am basically from Germany and my French is perhaps  > only a rudimental school french but anyway, I would like to have a  > look at this lecture notes, but I can not open the link you wrote me.> Ah sorry now the link works.> > Greetings and thanks a lot.> > Birgit> > Hey Gavin,> I found it funny that your institute is in the Gower Street.> > > > Am 20.06.2007 um 21:49 schrieb Mark Difford:> >>>> Hi Birgit,>>>> Just to add to what Gavin has said.  There are two other very powerful>> packages in R that handle this kind of thing: ade4 and vegan.  Have a>> thorough look at both of them.  You should be looking at Principal>> Coordinate Analysis (Classical Scaling) and Non Metric  >> Multidimensional>> Scaling (NMDS)---with, as Gavin has said, your species as rows.  At  >> least>> the first of these methods goes hand-in-glove with cluster analysis.>>>> Given that you are based in Switzerland, and perhaps are Swiss, you  >> probably>> therefore read and speak French as a second/third language.  You may>> therefore find the ade4 package more useful, since its authors are  >> French,>> and its principal authors, Prof. Daniel Chessel &c., have made  >> publicly>> available some exceptionally useful documentation on these methods  >> on their>> ade4 website.  These are mainly Prof. Chessel's lecture notes:>>>> http://pbil.univ-lyon1.fr/R/enseignement.html>>>> I hope that speeds you on your way.>>>> Regards,>> Mark.>>>> PS: Apropos of the Legendre & Legendre text: It's well worth buying  >> if you>> work in this area; one of its authors, Pierre Legendre, now  >> collaborates>> with Jari Oksanen on some functions of the vegan package.>>>>>> Gavin Simpson wrote:>>>>>> On Wed, 2007-06-20 at 16:13 +0200, Birgit Lemcke wrote:>>>> Hello Stephen,>>>>>>>> I am happy that you help me. Thanks a million.>>>>>>>> It is a good feeling that you confirm my assumption that dsvdis is>>>> not able to deal with missing data, because it says me that I am not>>>> completely incapable.>>>> Okay now I have the problem what to do.>>>> I used this function cause there is an option to weight columns>>>> differently what I havent found in other functions.>>>>>>>> But now I dont understand why I have to transpose the species as>>>> columns? As I read in the help manual of dsvdis this function>>>> calculates dissimilarities between rows.>>>> I have to calculate the dissimilarities between species that are in>>>> rows by the use of morphological characters that are in columns.>>>>>> If you really what to measure the associations between species then>>> leave them as you had them as the rows. But make sure you are  >>> choosing a>>> dissimilarity coefficient that works well for species associations.>>> There is a whole section in Legendre and Legendre 1998 Numerical  >>> Ecology>>> 2nd English Edition Elsevier which may help here.>>>>>> HTH>>>>>> G>>>>>>>>>>> Am I completely wrong with my thoughts?>>>>>>>> Birgit>>>>>>>> Am 20.06.2007 um 15:52 schrieb Stephen B. Cox:>>>>>>>>> Hi Birgit - looks like you have a few issues here.>>>>>>>>>> Birgit Lemcke <birgit.lemcke <at> systbot.uzh.ch> writes:>>>>>>>>>>>>>>>>> Hello you all!>>>>>>>>>>>> I am a completely new user of R and I have a problem to solve.>>>>>> I am using Mac OS X on a PowerBook.>>>>>>>>>>>> I have a table that looks like this:>>>>>>>>>>>>             species X1 X2 X3 X4 X5 X6 X7 X8 X9 X10 X11 X12 X13 X14>>>>>> X15 X16 X17 X18 X19 X20 X21>>>>>> 1        Anth_cap1  1  0  0  1  0  1  0  0  1   0   0   0   0   0>>>>>> 0   0   1   0   0   0   1>>>>>> 2       Anth_crin1  1  0  0  1  0  1  0  0  1   0   1   0   0   0>>>>>> 0   0   0   1   0   0   1>>>>>> 3        Anth_eck1  1  0  0  1  0  1  0  0  1   0   0   0   0   0>>>>>> 0   0   0   1   0   0   1>>>>>> 4       Anth_gram1  1  0  0  1  0  1  0  0  1  NA  NA  NA  NA   0>>>>>> 0   0   0   1   0   0   0>>>>>> 5       Anth_insi1  1  0  0  1  0  1  0  0  1   0   0   0   1   0>>>>>> 0   0   0   1   0   0   1>>>>>>>>>>>> All columns  are binary coded characters.>>>>>> The Import was done by this>>>>>>>>>>>> Test<-read.table("TestRFemMalBivariat1.csv",header = TRUE, sep  >>>>>> = ";")>>>>>>>>>> First - you need to transpose the matrix to have species as>>>>> columns.  You can do>>>>> this with:>>>>>>>>>> d2 = data.frame(t(Test[,-1]))>>>>> colnames(d2) = Test[,1]  #now use d2>>>>>>>>>>>>>>>>>>>>> Now I try to perform a similarity analysis with the dsvdis  >>>>>> function>>>>>> of the labdsv package with the sorensen-Index.>>>>>>>>>>>> My first question is if all zeros in my table are seen as missing>>>>>> values and if it islike that how can I change without turning zero>>>>>> into other numbers?>>>>>>>>>> no - the zeros are valid observations.  the na's are missing data.>>>>>>>>>>>>>>>>   DisTest<-dsvdis(Test, index = "sorensen")>>>>>>>>>>>> But I always get back this error message:>>>>>>>>>>>> Warnung in symbol.For("dsvdis") :'symbol.For' is not needed:  >>>>>> please>>>>>> remove it>>>>>> Fehler in dsvdis(Test, index = "sorensen") :>>>>>> 	NA/NaN/Inf in externem Funktionsaufruf (arg 1)>>>>>> Zustzlich: Warning message:>>>>>> NAs durch Umwandlung erzeugt>>>>>>>>>>>>>>>>>>>> Second - you have an issue with missing data.  It looks like dsvdis>>>>> does not>>>>> like the NA's - so you must make a decision about what to do.>>>>> Delete that>>>>> species, delete that site, or whatever...>>>>>>>>>> Finally - the warning over symbol.For is an issue with the labdsv>>>>> library itself>>>>> - nothing you are doing wrong.  The results will still be valid ->>>>> but the use of>>>>> symbol.For is something that will eventually need to be changed in>>>>> the labdsv>>>>> library.>>>>>>>>>> hth,>>>>>>>>>> stephen>>>>>>>> Birgit Lemcke>>>> Institut fr Systematische Botanik>>>> Zollikerstrasse 107>>>> CH-8008 Zrich>>>> Switzerland>>>> Ph: +41 (0)44 634 8351>>>> birgit.lemcke@systbot.uzh.ch>>>>>>>>>>>>>>>>>>>>>>>>>>>> 	[[alternative HTML version deleted]]>>>>>>>> ______________________________________________>>>> R-help@stat.math.ethz.ch mailing list>>>> https://stat.ethz.ch/mailman/listinfo/r-help>>>> PLEASE do read the posting guide>>>> http://www.R-project.org/posting-guide.html>>>> and provide commented, minimal, self-contained, reproducible code.>>> -- >>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%>>>  Gavin Simpson                 [t] +44 (0)20 7679 0522>>>  ECRC, UCL Geography,          [f] +44 (0)20 7679 0565>>>  Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk>>>  Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/>>>  UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk>>> %~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%>>>>>> ______________________________________________>>> R-help@stat.math.ethz.ch mailing list>>> https://stat.ethz.ch/mailman/listinfo/r-help>>> PLEASE do read the posting guide>>> http://www.R-project.org/posting-guide.html>>> and provide commented, minimal, self-contained, reproducible code.>>>>>>>>>> -- >> View this message in context: http://www.nabble.com/Re%3A- >> Dissimilarity-tf3952667.html#a11220912>> Sent from the R help mailing list archive at Nabble.com.>>>> ______________________________________________>> R-help@stat.math.ethz.ch mailing list>> https://stat.ethz.ch/mailman/listinfo/r-help>> PLEASE do read the posting guide http://www.R-project.org/posting- >> guide.html>> and provide commented, minimal, self-contained, reproducible code.> > Birgit Lemcke> Institut für Systematische Botanik> Zollikerstrasse 107> CH-8008 Zürich> Switzerland> Ph: +41 (0)44 634 8351> birgit.lemcke@systbot.uzh.ch> > > > > > > 	[[alternative HTML version deleted]]> > > ______________________________________________> R-help@stat.math.ethz.ch mailing list> https://stat.ethz.ch/mailman/listinfo/r-help> PLEASE do read the posting guide> http://www.R-project.org/posting-guide.html> and provide commented, minimal, self-contained, reproducible code.> > 
-- View this message in context: http://www.nabble.com/Re%3A-Dissimilarity-tf3952667.html#a11228522Sent from the R help mailing list archive at Nabble.com.
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

         

d.Vkii/8I