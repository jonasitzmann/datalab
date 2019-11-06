From beginners-return-92347-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 05:57:33 2007
Return-Path: <beginners-return-92347-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D9vWL9006218
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 05:57:32 -0400
Received: (qmail 18804 invoked by uid 514); 13 Jun 2007 09:57:27 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 18795 invoked from network); 13 Jun 2007 09:57:26 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 09:57:26 -0000
Received: (qmail 26592 invoked by uid 225); 13 Jun 2007 09:57:26 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26587 invoked by alias); 13 Jun 2007 09:57:25 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from wiggum.bitbone.de (HELO wiggum.bitbone.de) (213.128.153.97)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 02:57:20 -0700
Received: from [192.168.0.208] (helo=cletus.bitbone.de)
	by wiggum.bitbone.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.43)
	id 1HyPh3-0002lj-D3
	for beginners@perl.org; Wed, 13 Jun 2007 12:03:13 +0200
Received: from [127.0.0.1] (helo=mppd)
	by cletus.bitbone.de with smtp (Exim 4.50)
	id 1HyPbY-0001tW-9s
	for beginners@perl.org; Wed, 13 Jun 2007 11:57:32 +0200
Received: from [192.168.0.26] (helo=fattony.bitbone.de)
	by cletus.bitbone.de with esmtp (Exim 4.50)
	id 1HyPbX-0001tT-N0
	for beginners@perl.org; Wed, 13 Jun 2007 11:57:31 +0200
Date: Wed, 13 Jun 2007 11:57:50 +0200
From: Martin Barth <barth@bitbone.de>
To: beginners@perl.org
Subject: Re: Run 2 process in parallel.
Message-ID: <20070613115750.03c20260@fattony.bitbone.de>
In-Reply-To: <e29645ac0706130250q4d1370aft4d93cc3d7763786a@mail.gmail.com>
References: <e29645ac0706130250q4d1370aft4d93cc3d7763786a@mail.gmail.com>
X-Mailer: Sylpheed-Claws 2.6.0 (GTK+ 2.10.11; i486-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: RAE MPP/Sophos http://www.messagepartners.com
X-Scanned-By: This message was scanned by MPP v.2 (www.messagepartners.com)
X-Scanned-By: RAE MPP/Cloudmark http://www.messagepartners.com
X-Scanned-By: RAE MPP/Mailshell http://www.messagepartners.com
X-Spam-Score: -2.80
X-Scanned-By: RAE MPP/Spamassassin http://www.messagepartners.com

On Wed, 13 Jun 2007 15:20:50 +0530
"Umesh T G" <umesh.perl@gmail.com> wrote:

> Hola all,
> 
> I have 2  perl scripts which has to run in parallel.
> 
> I have run.pl which inturn has to call
> 1. pl and 2. pl;
> I am not sure how I can do it using the Perl Threads.
> 
> Can someone throw some light here.
> 
> I am not sure how I can achieve it.
> 
> TIA,
> Cheers,
> Umesh

hi,

you don't need to take threads for that.
what about:

my $pid = fork();
die unless defined $pid;

if($pid){
	exec "1.pl"
}else{
	exec "2.pl"
}

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

NsjmtaL z{k< 