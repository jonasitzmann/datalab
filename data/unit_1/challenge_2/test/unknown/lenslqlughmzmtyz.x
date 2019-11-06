From beginners-return-92936-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 17:27:11 2007
Return-Path: <beginners-return-92936-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l61LRBL9005465
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 17:27:11 -0400
Received: (qmail 32070 invoked by uid 514); 1 Jul 2007 21:27:02 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 11049 invoked from network); 1 Jul 2007 16:28:14 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of raherh@gmail.com)
To: beginners@perl.org
Subject: Re: Net::SFTP functions
References: <001301c7b8c4$981767c0$c2a2b451@teddy> <814924.19597.qm@web63408.mail.re1.yahoo.com> <1183101127.486175.63610@g4g2000hsf.googlegroups.com> <001101c7baee$6c565b10$c2a2b451@teddy>
From: rahed <raherh@gmail.com>
Organization: 
Date: Sun, 01 Jul 2007 16:28:06 +0000
Message-ID: <uabugccmh.fsf@gmail.com>
User-Agent: Gnus/5.11 (Gnus v5.11) Emacs/22.1 (windows-nt)
Cancel-Lock: sha1:6LwxrOUwTfBno/ih8iWN7w6LTqE=
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
X-Posted-By: 88.103.41.197

orasnita@gmail.com ("Octavian Rasnita") writes:

> I couldn't make Net::SFTP to work under Windows.
> I heard that there are some ways of making this module work under
> Windows, but I couldn't make it to work.
>
> If there is someone who knows how to do that, please tell us.

Install first gmp-4.2.1 and pari-2.1.7 libraries and then

Math::BigInt, Math::BigInt::GMP, Crypt::DH, Math::GMP, Math::Pari,
Crypt::RSA.

And then from cpan Net::SFTP.

This was done with Perl 5.8.8 on windows.

-- 
Radek

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/




zYVl  rygp93