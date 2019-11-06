From beginners-return-92043-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 05:51:16 2007
Return-Path: <beginners-return-92043-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l519pFhB008088
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 05:51:15 -0400
Received: (qmail 11014 invoked by uid 514); 1 Jun 2007 09:51:04 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 11005 invoked from network); 1 Jun 2007 09:51:02 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 09:51:02 -0000
Received: (qmail 22566 invoked by uid 225); 1 Jun 2007 09:51:02 -0000
Delivered-To: beginners@perl.org
Received: (qmail 22561 invoked by alias); 1 Jun 2007 09:51:01 -0000
X-Spam-Status: No, hits=-0.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,RCVD_IN_BH_CNKR,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from elasmtp-spurfowl.atl.sa.earthlink.net (HELO elasmtp-spurfowl.atl.sa.earthlink.net) (209.86.89.66)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 02:50:51 -0700
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=dk20050327; d=earthlink.net;
  b=FAbgafiO0EriKtcj94YktX0VVx9GCSzBLrMhIGcZZWxzsN37xVeYn1I4pdkYbkub;
  h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-ELNK-Trace:X-Originating-IP;
Received: from [219.136.96.64] (helo=[127.0.0.1])
	by elasmtp-spurfowl.atl.sa.earthlink.net with asmtp (Exim 4.34)
	id 1Hu3mQ-00039o-3J; Fri, 01 Jun 2007 05:50:46 -0400
Message-ID: <465FEBE8.6020004@earthlink.net>
Date: Fri, 01 Jun 2007 17:50:32 +0800
From: Jeff Pang <pangj@earthlink.net>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: "Nath, Alok (STSD)" <alok.nath@hp.com>
CC: beginners@perl.org
Subject: Re: Simplest hash initialization with no value
References: <C4A55E6959ED6F498EA07FFB09DAB2E007252726@bgeexc04.asiapacific.cpqcorp.net>
In-Reply-To: <C4A55E6959ED6F498EA07FFB09DAB2E007252726@bgeexc04.asiapacific.cpqcorp.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ELNK-Trace: 7070c57df59c6c2974bf435c0eb9d47850a04f4c739a9e729508956155ddd47f3a4a157726c13984350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 219.136.96.64

Nath, Alok (STSD) 写道:
> Hi,
> 	What is the simplest way to initialize the hash keys with no
> values ?
> 
> 	I know the crude form :
> 
> 	%myhash =('A' => undef,
> 		    'B' => undef) ;
> 
> 	Is there anything simpler than this ?
> Thanks,
> Alok
> 

Maybe you want,

@myhash{qw/A B/} = ();

-- 
http://home.arcor.de/jeffpang/


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


       

Avo E4moa<