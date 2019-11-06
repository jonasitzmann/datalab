From perl6-all-return-81843-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun  6 03:01:34 2007
Return-Path: <perl6-all-return-81843-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5671WhB018364
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 6 Jun 2007 03:01:33 -0400
Received: (qmail 31043 invoked by uid 514); 6 Jun 2007 07:01:26 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 31038 invoked from network); 6 Jun 2007 07:01:25 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-1.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,KARMA_CONTENT_NEGATIVE,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of paultcochrane@gmail.com designates 66.249.82.225 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=LD1OA245G2sw2C+f4TR4mip2648Ekhi7i9kJGvFeus1Noy41SadlrvjjUNcIGH/d7DpaUAqP6sImcqy7wDVs1HNYoZ5Udg95RCWdn5k3nnSNcU7FWRLcLStC+Acj0/DlCsXdFOUoi7stFYhMW2UcZABzGX7JKp4Y+32XBzb7YzE=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=igX8/ihyX1fVbrhumy8xLz4N6fiI3UEtkuATBs0SD61Jn1HFr3YD6M9hGpqBo5+oojtuuxP+z7x04k0TGtRSayZKgEZ2STodll7UJeqEodngJLJCrqxsMvlEb6mPW1oUgIVbhDSH1D7+Q69N94y2+QVtarrDNARmcYTONAG/jbM=
Message-ID: <8e8ee0d40706052330w45e6da86l5e15bac910e52ae2@mail.gmail.com>
Date: Wed, 6 Jun 2007 08:30:48 +0200
From: "Paul Cochrane" <paultcochrane@gmail.com>
To: "Will Coleda" <will@coleda.com>
Subject: Re: [perl #39426] [BUG] Can't build with cygwin.
Cc: parrotbug-followup@parrotcode.org
In-Reply-To: <CCED14BA-7653-47A2-B0EB-A0E9DCE42B6E@coleda.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <RT-Ticket-39426@perl.org>
	 <DDA1D5C7-FD92-4F62-9B2B-68A6644D94DB@coleda.com>
	 <rt-3.6.HEAD-28323-1152264265-204.39426-74-0@perl.org>
	 <rt-3.6.HEAD-1668-1181065555-1791.39426-74-0@perl.org>
	 <CCED14BA-7653-47A2-B0EB-A0E9DCE42B6E@coleda.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

> Without the manual setting of PATH before building?

With the manual PATH setting.  There are several tickets for cygwin
not building in RT; are they all related?  Is there something like a
hints file where the information about the PATH can be set so that
cygwin builds out of the box?

Paul

             

mau:
o-!SIHf,