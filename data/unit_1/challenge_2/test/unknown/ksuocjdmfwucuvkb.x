From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 11:59:52 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SFxoL9012754
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 11:59:51 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SFx9Y1026985;
	Thu, 28 Jun 2007 17:59:19 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=AWL, BAYES_50, DKIM_SIGNED,
	DKIM_VERIFIED autolearn=no version=3.2.0
Received: from ik-out-1112.google.com (ik-out-1112.google.com [66.249.90.176])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SFjiaX022448
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 17:45:45 +0200
Received: by ik-out-1112.google.com with SMTP id c21so564848ika
	for <r-help@stat.math.ethz.ch>; Thu, 28 Jun 2007 08:45:44 -0700 (PDT)
Received: by 10.142.103.6 with SMTP id a6mr114236wfc.1183045543564;
	Thu, 28 Jun 2007 08:45:43 -0700 (PDT)
Received: by 10.143.155.18 with HTTP; Thu, 28 Jun 2007 08:45:43 -0700 (PDT)
Message-ID: <eb555e660706280845g3af6e59fx807c493a914d50d1@mail.gmail.com>
Date: Thu, 28 Jun 2007 08:45:43 -0700
From: deepayan.sarkar@gmail.com
To: alxsal@free.fr
In-Reply-To: <1183040759.4683c4f7c087b@imp.free.fr>
MIME-Version: 1.0
Content-Disposition: inline
References: <1183040759.4683c4f7c087b@imp.free.fr>
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] Adding different output to different lattice panels
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

On 6/28/07, alxsal@free.fr <alxsal@free.fr> wrote:
> I would like to add a reference line to lattice graphs, with the reference
> line
> being different according to the factor level.
>
> Example : Draw 3 dotplots for "a","b" and "c" factors, and then add an
> horizontal line at y=10 for panel "a", y=8 for panel "b" and y=6 for panel
> "4"
>
> I tried the code below, but this draw all three reference lines for each
> panel.
> How do I index the current panel to chose the right reference vector value ?
>
> dat<-data.frame(id=rep(c("a","b","c"),4),val=1:12,quand=rep(c("t1","t2","t3","t4"),each=3))
> ref<-c(10,8,6)
> plot.new()
> datplot<-dotplot(val~quand|id,data=dat,panel=function(...){
> panel.dotplot(...)
> panel.abline(h=ref)
> })
> print(datplot)

dotplot(val~quand|id,data=dat,panel=function(...){
    panel.dotplot(...)
    panel.abline(h = ref[packet.number()])
})

(Things are more complicated if you have more than one conditioning variable.)

-Deepayan

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.



l421 >q Cn-t
p�b