From beginners-return-92570-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 09:32:24 2007
Return-Path: <beginners-return-92570-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KDWNL9010406
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 09:32:23 -0400
Received: (qmail 13844 invoked by uid 514); 20 Jun 2007 13:32:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 13835 invoked from network); 20 Jun 2007 13:32:15 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 13:32:15 -0000
Received: (qmail 14931 invoked by uid 225); 20 Jun 2007 13:32:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 14872 invoked by alias); 20 Jun 2007 13:32:12 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of anexpert@gmail.com designates 64.233.166.182 as permitted sender)
Received: from py-out-1112.google.com (HELO py-out-1112.google.com) (64.233.166.182)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 06:31:56 -0700
Received: by py-out-1112.google.com with SMTP id f47so366414pye
        for <beginners@perl.org>; Wed, 20 Jun 2007 06:31:51 -0700 (PDT)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=m8xJVqEStzP14R+l6ixmHLNwlkzre6A2fGqjdOZbPKvWzQ5fL3oNcxBFDhzTWQayhak/sXQbH3vgu1VH4PaLcxTnk4Rz9W7df0jW6wDESnRwEdwifQLBt67dmlpKj2QGIxzR3ehfkB0C1bAD774IbwTJJeTfkKNRoyix3Q38i/c=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition:x-google-sender-auth;
        b=E7EQBu01gavOKpkXhEDR71il2PFrL+5gCeXf8ewhb8y2dOwkr4cE8tk/eYloWFhNvAoqzzeINoLpqTwQQhMuunayj974S+O4eXc5+o0xKeYr3py4iLhkvxWpy9cnQ4dF7aJe8BECDiAJzj5TmW9zSnEb+M6RQDfSEb+G1MVR7No=
Received: by 10.65.154.2 with SMTP id g2mr1425018qbo.1182346311597;
        Wed, 20 Jun 2007 06:31:51 -0700 (PDT)
Received: by 10.64.185.10 with HTTP; Wed, 20 Jun 2007 06:31:51 -0700 (PDT)
Message-ID: <ca5781c80706200631k71af1806o48f3fcc1f5e8b5da@mail.gmail.com>
Date: Wed, 20 Jun 2007 09:31:51 -0400
From: yitzle <yitzle@users.sourceforge.net>
Sender: anexpert@gmail.com
To: "Perl List" <beginners@perl.org>
Subject: Trouble installing with CPAN
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Google-Sender-Auth: 5dfc86101e17fdef

I tried to install Crypt::Simple using the CPAN shell
It failed at downloading the module multiple times from multiple servers.
I got:

Please check, if the URLs I found in your configuration file
(ftp://CPAN.mirror.rafal.ca/pub/CPAN/,
ftp://cpan.sunsite.ualberta.ca/pub/CPAN/, ftp://ftp.nrc.ca/pub/CPAN/,
ftp://ftp.yi.org/CPAN/, ftp://mirror.arcticnetwork.ca/pub/CPAN,
ftp://theoryx5.uwinnipeg.ca/pub/CPAN/) are valid. The urllist can be
edited. E.g. with 'o conf urllist push ftp://myurl/'

Um... any ideas why this occured? Are the servers down? Or should I
try disabling my firewall?

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

a g1 bo-m