From beginners-return-92552-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 00:11:16 2007
Return-Path: <beginners-return-92552-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5K4BDL9005470
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 00:11:14 -0400
Received: (qmail 306 invoked by uid 514); 20 Jun 2007 04:11:04 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 32765 invoked from network); 20 Jun 2007 04:11:04 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 04:11:04 -0000
Received: (qmail 17942 invoked by uid 225); 20 Jun 2007 04:11:04 -0000
Delivered-To: beginners@perl.org
Received: (qmail 17936 invoked by alias); 20 Jun 2007 04:11:03 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of anexpert@gmail.com designates 64.233.162.238 as permitted sender)
Received: from nz-out-0506.google.com (HELO nz-out-0506.google.com) (64.233.162.238)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 19 Jun 2007 21:10:59 -0700
Received: by nz-out-0506.google.com with SMTP id x7so71928nzc
        for <beginners@perl.org>; Tue, 19 Jun 2007 21:10:54 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=BDKkJqouzRK9XQhcYlkW2S9SrMsCmNWucCU5Kl/7uy2seVRtnmNZNyV2z1TBrgZ3wgOdscdwYirCZsVo+PELrnFXT7dvbhcjejIGc0R+h/YjTmmS1Ikc7X48cDlBS2K/O0ITz7MR3tSeDPHA8in3I2rgTc0IBxi4Zb0OECi8Zfk=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=jdkt1BXbc4FtU1qo+HUW8tYq6FRxQTZnOdjCoNB11bToCeYHYYy4idr0aRKmy2pLVbqKFr0IzKDFsddmhhmwkGK69nMpwhokfFnOXmTSIDrZ0LAmdgf92qH8sQEl5OqIZuwE8eNTbyQGiXP2q9DLfQnB2ZSqMaiQpqCEXUWAjmA=
Received: by 10.64.233.12 with SMTP id f12mr452990qbh.1182312654783;
        Tue, 19 Jun 2007 21:10:54 -0700 (PDT)
Received: by 10.64.185.10 with HTTP; Tue, 19 Jun 2007 21:10:54 -0700 (PDT)
Message-ID: <ca5781c80706192110r10db6ff2h978b4e5ac2fa35a5@mail.gmail.com>
Date: Wed, 20 Jun 2007 00:10:54 -0400
From: yitzle <yitzle@users.sourceforge.net>
Sender: anexpert@gmail.com
To: "Perl List" <beginners@perl.org>
Subject: Simple Encryption - what function/module could I use?
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Google-Sender-Auth: 89c26bf34ed8d0bb

What function/module (I prefer built in functions...) is there that I
can use to do some simple/basic reversable (opposed to crypt()'s one
way) encryption?
I want to be able to encrypt/decrypt a textfile.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

i2s=C<