From beginners-return-92847-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 08:27:01 2007
Return-Path: <beginners-return-92847-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SCQxL9010322
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 08:27:00 -0400
Received: (qmail 4176 invoked by uid 514); 28 Jun 2007 12:26:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 4167 invoked from network); 28 Jun 2007 12:26:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 12:26:53 -0000
Received: (qmail 29915 invoked by uid 225); 28 Jun 2007 12:26:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 29909 invoked by alias); 28 Jun 2007 12:26:52 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-curtail.atl.sa.earthlink.net (HELO elasmtp-curtail.atl.sa.earthlink.net) (209.86.89.64)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 05:26:47 -0700
Received: from [4.158.138.188] (helo=[4.158.138.188])
	by elasmtp-curtail.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I3t58-00017q-Gc
	for beginners@perl.org; Thu, 28 Jun 2007 08:26:43 -0400
Message-ID: <4683A26C.4010408@earthlink.net>
Date: Thu, 28 Jun 2007 06:58:36 -0500
From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070221)
MIME-Version: 1.0
To: Beginners List <beginners@perl.org>
Subject: Re: using a homemade perl module
References: <4670BF7B.9060000@yahoo.com><4670D741.3090809@yahoo.com>   <20070614112553.5b51a309@nietzsche>   <4671F7CE.4030807@yahoo.com> <1181916884.616351.299860@g4g2000hsf.googlegroups.com> <46836A86.9090904@yahoo.com>
In-Reply-To: <46836A86.9090904@yahoo.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
X-ELNK-Trace: 5d730262a02eef364886dd14879fb8dbda7403c53f5cc7e274bf435c0eb9d47825234a3a243c1acbdeed5d510cd88898ddbc2fbdd75cb04f350badd9bab72f9c
X-Originating-IP: 4.158.138.188

On 06/28/2007 03:00 AM, Mathew Snyder wrote:
> 
> our @ISA                 = qw(Exporter);
> our @EXPORT      = qw(startDate endDate searchStart searchEnd);
> our $VERSION     = '1';
> 

Those lines need to be within a BEGIN block. See perlmod:

http://perldoc.perl.org/perlmod.html




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

s<:5n aKI0i5 