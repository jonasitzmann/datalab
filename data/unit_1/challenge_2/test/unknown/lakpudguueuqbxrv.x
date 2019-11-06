From r-help-bounces@stat.math.ethz.ch  Thu Jun  7 22:44:58 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l582iuhB009846
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 7 Jun 2007 22:44:58 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l582iFkY025906;
	Fri, 8 Jun 2007 04:44:22 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED, DKIM_VERIFIED,
	HTML_MESSAGE autolearn=no version=3.2.0
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l582VFHB020134
	for <r-help@stat.math.ethz.ch>; Fri, 8 Jun 2007 04:31:15 +0200
Received: by wa-out-1112.google.com with SMTP id j37so939222waf
	for <r-help@stat.math.ethz.ch>; Thu, 07 Jun 2007 19:31:14 -0700 (PDT)
Received: by 10.114.137.2 with SMTP id k2mr2097014wad.1181269874028;
	Thu, 07 Jun 2007 19:31:14 -0700 (PDT)
Received: by 10.114.241.5 with HTTP; Thu, 7 Jun 2007 19:31:13 -0700 (PDT)
Message-ID: <b87120290706071931v588689b3gceb0463856fd87a8@mail.gmail.com>
Date: Thu, 7 Jun 2007 19:31:13 -0700
From: "ssls sddd" <ssls.sddd@gmail.com>
To: "jim holtman" <jholtman@gmail.com>
In-Reply-To: <644e1f320706070448n551d72c0r633792cc00bdc83f@mail.gmail.com>
MIME-Version: 1.0
References: <b87120290706061822h2794512av24762fa964d12905@mail.gmail.com>
	<644e1f320706061829v75b133a7o3a32ad0ff2f24449@mail.gmail.com>
	<b87120290706070252o19219518peba56229d805f415@mail.gmail.com>
	<644e1f320706070448n551d72c0r633792cc00bdc83f@mail.gmail.com>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Content-Disposition: inline
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] How to load a big txt file
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

Dear Jim,

It works great. I appreciate your help.

Sincerely,

Alex

On 6/7/07, jim holtman <jholtman@gmail.com> wrote:
>
> I took your data and duped the data line so I had 100,000 rows and it took
> 40 seconds to read in when specifying colClasses
>
> > system.time(x <- read.table('/tempxx.txt',
> header=TRUE,colClasses=c('factor', rep('numeric',49))))
>    user  system elapsed
>   40.98    0.46   42.39
> > str(x)
> 'data.frame ':   102272 obs. of  50 variables:
>  $ ID                                               : Factor w/ 1 level
> "SNP_A-1780271": 1 1 1 1 1 1 1 1 1 1 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_A09_50156.cel       : num  1.86 1.86 1.86
> 1.86 1.86 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_A11_50188.cel       : num  1.51 1.51 1.51
> 1.51 1.51 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_A12_50204.cel       : num  1.73 1.73 1.73
> 1.73 1.73 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_B09_50158.cel       : num  1.53 1.53 1.53
> 1.53 1.53 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_C01_50032.cel       : num  1.66 1.66 1.66
> 1.66 1.66 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_C12_50208.cel       : num  1.47 1.47 1.47
> 1.47 1.47 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_D03_50066.cel       : num  2.16 2.16 2.16
> 2.16 2.16 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_D08_50146.cel       : num  1.78 1.78 1.78
> 1.78 1.78 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_F03_50070.cel       : num  1.60 1.60 1.60
> 1.60 1.60 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_F12_50214.cel       : num  2.16 2.16 2.16
> 2.16 2.16 ...
>  $ AIRNS_p_Sty5_Mapping250K_Sty_G09_50168.cel       : num  1.98 1.98 1.98
> 1.98 1.98 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_B04_53892.cel       : num  2.18 2.18 2.18
> 2.18 2.18 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_B06_53924.cel       : num  1.88 1.88 1.88
> 1.88 1.88 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_C05_53910.cel       : num  2.15 2.15 2.15
> 2.15 2.15 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_C10_53990.cel       : num  1.53 1.53 1.53
> 1.53 1.53 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_D05_53912.cel       : num  1.72 1.72 1.72
> 1.72 1.72 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_E01_53850.cel       : num  2.23 2.23 2.23
> 2.23 2.23 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_G12_54030.cel       : num  1.94 1.94 1.94
> 1.94 1.94 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_H06_53936.cel       : num  1.85 1.85 1.85
> 1.85 1.85 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_H08_53968.cel       : num  2.16 2.16 2.16
> 2.16 2.16 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_H11_54016.cel       : num  2.19 2.19 2.19
> 2.19 2.19 ...
>  $ DOLCE_p_Sty7_Mapping250K_Sty_H12_54032.cel       : num  2.03 2.03 2.03
> 2.03 2.03 ...
>  $ GUSTO_p_Sty20_Mapping250K_Sty_C08_81736.cel      : num  2.67 2.67 2.67
> 2.67 2.67 ...
>  $ GUSTO_p_Sty20_Mapping250K_Sty_E03_81660.cel      : num  2.74 2.74 2.74
> 2.74 2.74 ...
>  $ GUSTO_p_Sty20_Mapping250K_Sty_H02_81650.cel      : num  2.08 2.08 2.08
> 2.08 2.08 ...
>  $ HEWED_p_250KSty_Plate_20060123_GOOD_B01_46246.cel: num  3.21 3.21 3.21
> 3.21 3.21 ...
>  $ HEWED_p_250KSty_Plate_20060123_GOOD_C06_46328.cel: num  2.1 2.1 2.1 2.1
> 2.1 ...
>  $ HEWED_p_250KSty_Plate_20060123_GOOD_F02_46270.cel: num  2.15 2.15 2.15
> 2.15 2.15 ...
>  $ HEWED_p_250KSty_Plate_20060123_GOOD_G04_46304.cel: num  3.52 3.52 3.52
> 3.52 3.52 ...
>  $ HOCUS_p_Sty4_Mapping250K_Sty_B05_55060.cel       : num  1.37 1.37 1.37
> 1.37 1.37 ...
>  $ HOCUS_p_Sty4_Mapping250K_Sty_B12_55172.cel       : num  1.66 1.66 1.66
> 1.66 1.66 ...
>  $ HOCUS_p_Sty4_Mapping250K_Sty_E05_55066.cel       : num  3.16 3.16 3.16
> 3.16 3.16 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_B07_89024.cel      : num  2.09 2.09 2.09
> 2.09 2.09 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_C01_88930.cel      : num  1.87 1.87 1.87
> 1.87 1.87 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_C11_89090.cel      : num  1.90 1.90 1.90
> 1.90 1.90 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_F07_89032.cel      : num  1.81 1.81 1.81
> 1.81 1.81 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_H08_89052.cel      : num  1.82 1.82 1.82
> 1.82 1.82 ...
>  $ SOARS_p_Sty23_Mapping250K_Sty_H10_89084.cel      : num  2.26 2.26 2.26
> 2.26 2.26 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_A04_54082.cel       : num  1.93 1.93 1.93
> 1.93 1.93 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_A07_54130.cel       : num  1.68 1.68 1.68
> 1.68 1.68 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_B08_54148.cel       : num  1.34 1.34 1.34
> 1.34 1.34 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_D01_54040.cel       : num  1.57 1.57 1.57
> 1.57 1.57 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_D05_54104.cel       : num  1.72 1.72 1.72
> 1.72 1.72 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_E04_54090.cel       : num  1.95 1.95 1.95
> 1.95 1.95 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_E12_54218.cel       : num  1.44 1.44 1.44
> 1.44 1.44 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_G01_54046.cel       : num  2.22 2.22 2.22
> 2.22 2.22 ...
>  $ VINOS_p_Sty8_Mapping250K_Sty_G12_54222.cel       : num  1.76 1.76 1.76
> 1.76 1.76 ...
>  $ VOLTS_p_Sty9_Mapping250K_Sty_G09_57916.cel       : num  2.05 2.05 2.05
> 2.05 2.05 ...
>  $ VOLTS_p_Sty9_Mapping250K_Sty_H12_57966.cel       : num  2.64 2.64 2.64
> 2.64 2.64 ...
> >
>
>
> On 6/7/07, ssls sddd <ssls.sddd@gmail.com> wrote:
> >
> > Dear Jim,
> >
> > Thanks a lot! The size of the text file is 189,588,541 bytes.
> > It consists of 238305 rows (including the header) and
> > 50 columns (the first column is for ID and the rest for 49 samples).
> >
> > The first row looks like:
> >
> > "ID"
> > AIRNS_p_Sty5_Mapping250K_Sty_A09_50156.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_A11_50188.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_A12_50204.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_B09_50158.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_C01_50032.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_C12_50208.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_D03_50066.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_D08_50146.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_F03_50070.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_F12_50214.cel
> > AIRNS_p_Sty5_Mapping250K_Sty_G09_50168.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_B04_53892.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_B06_53924.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_C05_53910.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_C10_53990.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_D05_53912.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_E01_53850.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_G12_54030.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_H06_53936.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_H08_53968.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_H11_54016.cel
> > DOLCE_p_Sty7_Mapping250K_Sty_H12_54032.cel
> > GUSTO_p_Sty20_Mapping250K_Sty_C08_81736.cel
> > GUSTO_p_Sty20_Mapping250K_Sty_E03_81660.cel
> > GUSTO_p_Sty20_Mapping250K_Sty_H02_81650.cel
> > HEWED_p_250KSty_Plate_20060123_GOOD_B01_46246.cel
> > HEWED_p_250KSty_Plate_20060123_GOOD_C06_46328.cel
> > HEWED_p_250KSty_Plate_20060123_GOOD_F02_46270.cel
> > HEWED_p_250KSty_Plate_20060123_GOOD_G04_46304.cel
> > HOCUS_p_Sty4_Mapping250K_Sty_B05_55060.cel
> > HOCUS_p_Sty4_Mapping250K_Sty_B12_55172.cel
> > HOCUS_p_Sty4_Mapping250K_Sty_E05_55066.cel
> > SOARS_p_Sty23_Mapping250K_Sty_B07_89024.cel
> > SOARS_p_Sty23_Mapping250K_Sty_C01_88930.cel
> > SOARS_p_Sty23_Mapping250K_Sty_C11_89090.cel
> > SOARS_p_Sty23_Mapping250K_Sty_F07_89032.cel
> > SOARS_p_Sty23_Mapping250K_Sty_H08_89052.cel
> > SOARS_p_Sty23_Mapping250K_Sty_H10_89084.cel
> > VINOS_p_Sty8_Mapping250K_Sty_A04_54082.cel
> > VINOS_p_Sty8_Mapping250K_Sty_A07_54130.cel
> > VINOS_p_Sty8_Mapping250K_Sty_B08_54148.cel
> > VINOS_p_Sty8_Mapping250K_Sty_D01_54040.cel
> > VINOS_p_Sty8_Mapping250K_Sty_D05_54104.cel
> > VINOS_p_Sty8_Mapping250K_Sty_E04_54090.cel
> > VINOS_p_Sty8_Mapping250K_Sty_E12_54218.cel
> > VINOS_p_Sty8_Mapping250K_Sty_G01_54046.cel
> > VINOS_p_Sty8_Mapping250K_Sty_G12_54222.cel
> > VOLTS_p_Sty9_Mapping250K_Sty_G09_57916.cel
> > VOLTS_p_Sty9_Mapping250K_Sty_H12_57966.cel
> >
> >
> > and the second row looks like:
> >
> > "SNP_A-1780271"    1.8564200401306    1.5095599889755    1.7315399646759
> > 1.530769944191    1.6576000452042    1.474179983139    2.1564099788666
> > 1.775720000267     1.5979499816895    2.1641499996185    1.980849981308
> > 2.180370092392    1.8782299757004    2.1485500335693    1.5325000286102
> > 1.7232999801636    2.2281200885773    1.9381999969482    1.8546999692917
> > 2.1590900421143     2.1928400993347    2.0253200531006
> > 2.6680200099945    2.7435901165009    2.0804998874664    3.2142300605774
> > 2.1001501083374    2.147579908371    3.5244200229645    1.374480009079
> > 1.6613099575043    3.1606800556183     2.0917000770569
> > 1.8727999925613    1.8952000141144    1.813570022583    1.8180899620056
> > 2.2553699016571    1.9273999929428    1.6766400337219    1.3424600362778
> > 1.5666999816895    1.7180800437927    1.9548699855804
> > 1.4444999694824    2.2242999076843    1.7591500282288    2.0480198860168
> > 2.638689994812
> >
> > Thanks a lot!
> >
> > Sincerely,
> >
> > Alex
> >
> >
> > On 6/6/07, jim holtman <jholtman@gmail.com> wrote:
> > >
> > > It would be useful if you could post the first couple of rows of the
> > > data so we can see what it looks like.
> > >
> > > On 6/6/07, ssls sddd <ssls.sddd@gmail.com > wrote:
> > > >
> > > > Dear list,
> > > >
> > > > I need to read a big txt file (around 130Mb; 23800 rows and 49
> > > > columns)
> > > > for downstream clustering analysis.
> > > >
> > > > I first used "Tumor <- read.table("Tumor.txt",header = TRUE,sep =
> > > > "\t")"
> > > > but it took a long time and failed. However, it had no problem if I
> > > > just put
> > > > data of 3 columns.
> > > >
> > > > Is there any way which can load this big file?
> > > >
> > > > Thanks for any suggestions!
> > > >
> > > > Sincerely,
> > > >     Alex
> > > >
> > > >        [[alternative HTML version deleted]]
> > > >
> > > > ______________________________________________
> > > > R-help@stat.math.ethz.ch mailing list
> > > > https://stat.ethz.ch/mailman/listinfo/r-help
> > > > PLEASE do read the posting guide
> > > > http://www.R-project.org/posting-guide.html<http://www.r-project.org/posting-guide.html>
> > > > and provide commented, minimal, self-contained, reproducible code.
> > > >
> > >
> > >
> > >
> > > --
> > > Jim Holtman
> > > Cincinnati, OH
> > > +1 513 646 9390
> > >
> > > What is the problem you are trying to solve?
> > >
> >
> >
>
>
> --
> Jim Holtman
> Cincinnati, OH
> +1 513 646 9390
>
> What is the problem you are trying to solve?
>

	[[alternative HTML version deleted]]

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

   

I7p/e>
upV