From beginners-return-92342-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 05:24:47 2007
Return-Path: <beginners-return-92342-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D9OjL9005927
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 05:24:46 -0400
Received: (qmail 2348 invoked by uid 514); 13 Jun 2007 09:24:40 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 2339 invoked from network); 13 Jun 2007 09:24:40 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 09:24:40 -0000
Received: (qmail 11188 invoked by uid 225); 13 Jun 2007 09:24:40 -0000
Delivered-To: beginners@perl.org
Received: (qmail 11180 invoked by alias); 13 Jun 2007 09:24:39 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of gclpb-beginners@m.gmane.org designates 80.91.229.2 as permitted sender)
Received: from main.gmane.org (HELO ciao.gmane.org) (80.91.229.2)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 13 Jun 2007 02:24:36 -0700
Received: from list by ciao.gmane.org with local (Exim 4.43)
	id 1HyP42-0007be-O7
	for beginners@perl.org; Wed, 13 Jun 2007 11:22:55 +0200
Received: from mailgate.arrowt.co.uk ([195.102.24.74])
        by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
        id 1AlnuQ-0007hv-00
        for <beginners@perl.org>; Wed, 13 Jun 2007 11:22:54 +0200
Received: from jlumley by mailgate.arrowt.co.uk with local (Gmexim 0.1 (Debian))
        id 1AlnuQ-0007hv-00
        for <beginners@perl.org>; Wed, 13 Jun 2007 11:22:54 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: beginners@perl.org
From: James <jlumley@arrowt.co.uk>
Subject:  Re: regex for matching repeated strings
Date: Wed, 13 Jun 2007 09:21:52 +0000 (UTC)
Lines: 7
Message-ID:  <loom.20070613T111116-614@post.gmane.org>
References:  <loom.20070612T175837-990@post.gmane.org>	 <58ce48dc0706121049xe249f2eqe0bc86036c4654ba@mail.gmail.com> <ca5781c80706121055i42b6524epbb3d9457ef646170@mail.gmail.com> <466EF1DA.3000604@telus.net>
Mime-Version:  1.0
Content-Type:  text/plain; charset=us-ascii
Content-Transfer-Encoding:  7bit
X-Complaints-To: usenet@sea.gmane.org
X-Gmane-NNTP-Posting-Host: main.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 195.102.24.74 (Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; VNIE5 RefIE5; SV1))
Sender: news <news@sea.gmane.org>

Thanks all, I have something working

> $data =~ s/(.*\n)(?=\1)//g;
Can anyone explain the (?=\1) bit? I get the search replace.

J.



-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


           

Pe>.)1FEsrlS"q