From beginners-return-92921-ktwarwic=speedy.uwaterloo.ca@perl.org  Sat Jun 30 04:13:04 2007
Return-Path: <beginners-return-92921-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5U8D2L9004621
	for <ktwarwic@flax9.uwaterloo.ca>; Sat, 30 Jun 2007 04:13:03 -0400
Received: (qmail 7481 invoked by uid 514); 30 Jun 2007 08:12:53 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 7472 invoked from network); 30 Jun 2007 08:12:52 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 30 Jun 2007 08:12:52 -0000
Received: (qmail 2052 invoked by uid 225); 30 Jun 2007 08:12:52 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2042 invoked by alias); 30 Jun 2007 08:12:51 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of orasnita@gmail.com designates 209.85.134.184 as permitted sender)
Received: from mu-out-0910.google.com (HELO mu-out-0910.google.com) (209.85.134.184)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sat, 30 Jun 2007 01:12:49 -0700
Received: by mu-out-0910.google.com with SMTP id g7so1236159muf
        for <beginners@perl.org>; Sat, 30 Jun 2007 01:12:44 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:from:to:references:subject:date:mime-version:content-type:content-transfer-encoding:x-priority:x-msmail-priority:x-mailer:x-mimeole;
        b=oP+9ITJGMAv7ES31ut+uLWN9xGHd0i+07UO1pnzMqz/FQ1NFdtvi/vCvxP6dgjv7sUDyeIPUSAfqXPV7yR3EthSYrQURTRXKQBxvdzqVmrJSFASH9aH1/VHCBVzlJZ1BUn6vjr1GKJN8nfDT+9tbJwyS+dyBxf9931QSl3C2tbg=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:from:to:references:subject:date:mime-version:content-type:content-transfer-encoding:x-priority:x-msmail-priority:x-mailer:x-mimeole;
        b=APEZ8MiniPJPtN9X/eQdxTdVdnmjTHCsIwc2Qunercx96VyGFg33YDXkllKwbGtlkRoEjmenD106/32VCpjRnN5/d/pWiCN73E6h0dfRRbLaVk2VXbnsfZOf4xqm/QHs+JOAGg3zHXB8kuiNE6OZVhDZCY2UwiuNYhRYz58KOcs=
Received: by 10.82.152.16 with SMTP id z16mr8062528bud.1183191163578;
        Sat, 30 Jun 2007 01:12:43 -0700 (PDT)
Received: from teddy ( [81.180.162.194])
        by mx.google.com with ESMTP id u9sm29547842muf.2007.06.30.01.12.41
        (version=SSLv3 cipher=RC4-MD5);
        Sat, 30 Jun 2007 01:12:42 -0700 (PDT)
Message-ID: <001101c7baee$6c565b10$c2a2b451@teddy>
From: "Octavian Rasnita" <orasnita@gmail.com>
To: <beginners@perl.org>, <julien.laffitte@gmail.com>
References: <001301c7b8c4$981767c0$c2a2b451@teddy>   <814924.19597.qm@web63408.mail.re1.yahoo.com> <1183101127.486175.63610@g4g2000hsf.googlegroups.com>
Subject: Re: Net::SFTP functions
Date: Sat, 30 Jun 2007 11:12:24 +0300
MIME-Version: 1.0
Content-Type: text/plain;
	format=flowed;
	charset="iso-8859-1";
	reply-type=original
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138

From: <julien.laffitte@gmail.com>

> Octavian Rasnita > Ok I really don't get it.
> My folder tree is similar to that one: d:\shared\exports\Export.csv

Ok, now I think I understand why it doesn't work. You are using Windows.

I couldn't make Net::SFTP to work under Windows.
I heard that there are some ways of making this module work under Windows, 
but I couldn't make it to work.

If there is someone who knows how to do that, please tell us.

Octavian


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


   

le8 *Td0