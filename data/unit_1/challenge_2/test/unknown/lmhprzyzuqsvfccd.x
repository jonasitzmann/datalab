From beginners-return-92869-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 28 18:16:48 2007
Return-Path: <beginners-return-92869-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5SMGiL9016334
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 18:16:47 -0400
Received: (qmail 6071 invoked by uid 514); 28 Jun 2007 22:16:34 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 6062 invoked from network); 28 Jun 2007 22:16:34 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 28 Jun 2007 22:16:34 -0000
Received: (qmail 25960 invoked by uid 225); 28 Jun 2007 22:16:33 -0000
Delivered-To: beginners@perl.org
Received: (qmail 25954 invoked by alias); 28 Jun 2007 22:16:33 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-dupuy.atl.sa.earthlink.net (HELO elasmtp-dupuy.atl.sa.earthlink.net) (209.86.89.62)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Thu, 28 Jun 2007 15:16:29 -0700
Received: from [4.158.138.66] (helo=[4.158.138.66])
	by elasmtp-dupuy.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1I42Hn-00032W-L9
	for beginners@perl.org; Thu, 28 Jun 2007 18:16:24 -0400
Message-ID: <46841D7B.6060003@earthlink.net>
Date: Thu, 28 Jun 2007 15:43:39 -0500
From: "Mumia W." <mumia.w.18.spam+nospam@earthlink.net>
User-Agent: Thunderbird 1.5.0.10 (X11/20070221)
MIME-Version: 1.0
To: Beginners List <beginners@perl.org>
Subject: Re: using a homemade perl module
References: <20070614112553.5b51a309@nietzsche> <4671F7CE.4030807@yahoo.com> <1181916884.616351.299860@g4g2000hsf.googlegroups.com> <46836A86.9090904@yahoo.com> <4683A26C.4010408@earthlink.net> <20070628124639.GQ20560@pjcj.net>
In-Reply-To: <20070628124639.GQ20560@pjcj.net>
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit
X-ELNK-Trace: 5d730262a02eef364886dd14879fb8dbda7403c53f5cc7e274bf435c0eb9d47825234a3a243c1acbd497d70b1aa893cc4b3127bf00b68011350badd9bab72f9c
X-Originating-IP: 4.158.138.66

On 06/28/2007 07:46 AM, Paul Johnson wrote:
> On Thu, Jun 28, 2007 at 06:58:36AM -0500, Mumia W. wrote:
> 
>> On 06/28/2007 03:00 AM, Mathew Snyder wrote:
>>> our @ISA                 = qw(Exporter);
>>> our @EXPORT      = qw(startDate endDate searchStart searchEnd);
>>> our $VERSION     = '1';
>> Those lines need to be within a BEGIN block. See perlmod:
> 
> Are you sure?
> 
> The package name should be Reports::Dates, not just Dates.
> 

Ah, yes you're right.




-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

>�
Dr