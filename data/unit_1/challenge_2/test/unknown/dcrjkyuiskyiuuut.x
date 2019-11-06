From perl6-all-return-81903-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 16:21:10 2007
Return-Path: <perl6-all-return-81903-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BKL9L9018400
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 16:21:10 -0400
Received: (qmail 15970 invoked by uid 514); 11 Jun 2007 20:21:08 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 15960 invoked from network); 11 Jun 2007 20:21:08 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.1 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,MISSING_HEADERS,PLING_QUERY,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 64.233.166.179 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:reply-to:user-agent:mime-version:cc:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=UW0JGFeBdJq0pNp8pgdutCRXBu/ak8LuvLMZlYHEKQ4Nals4Y8nKGHabc+o5yEwxPNeNjFp14B74CTJUHKwSPFIC8kA3Pfy/8QlibXrSfDiDQN09Gk8TNZJadLDcL+q/FrQ6gnqN+HCJms9LCwFwIYgVKgpvJyo07xxZ9knwjMA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:reply-to:user-agent:mime-version:cc:subject:references:in-reply-to:content-type:content-transfer-encoding:sender;
        b=AJT4/LCxgcxxnN+PnZhBHBoLHF6v4HE+VJaLBC57fSfYISnPO2fUvLzuGCvcr74+8RdCBt+VQJCu5ZsmH4QrB7T1JdRjG0Ka4Kh2nwSfc3HPa1bI26nMRjCZjVTVxCxjvh3dd5muhy3GGNJzBThvfO37gpsRqd8eV21hEIsDuVQ=
Message-ID: <466DAEA1.9060306@conway.org>
Date: Tue, 12 Jun 2007 06:20:49 +1000
From: Damian Conway <damian@conway.org>
Reply-To: damian@conway.org
User-Agent: Thunderbird 2.0.0.0 (Macintosh/20070326)
MIME-Version: 1.0
CC: p6l <perl6-language@perl.org>
Subject: Re: Generalizing ?? !!
References: <ef30550b0706101410l44485919m472e675a700a1daf@mail.gmail.com>	 <83F5E0A4-3320-46F2-9319-35DEF2E79584@audreyt.org>	 <ef30550b0706110809w47d436e3veeb0962cfb38f620@mail.gmail.com> <f60fe000706110845p48815ad9s8a18d4b28aaeffb3@mail.gmail.com>
In-Reply-To: <f60fe000706110845p48815ad9s8a18d4b28aaeffb3@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Sender: Damian Conway <thoughtstream@gmail.com>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=0.1 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,MISSING_HEADERS,PLING_QUERY,SPF_PASS

Mark J. Reed concluded:

> So I prefer keeping a single construct, but perhaps the else-part
> could be optional?

I hope not. The mandatory else-part is one of the most valuable features of 
the ternary operator. It helps ensure that variables initialized with a 
cascaded ternary actually do get initialized:

      $action =  $name eq 'Kirk'  ??  'fight'
              !! $name eq 'Spock' ??  'think'
              !! $shirt eq 'red'  ??  'die'
              !!                      'stand';

The required-ness of the else-part makes cascaded ternaries a safer, more 
robust choice than if-elsif-else chains in many cases.

Damian

      

nRqaoetFa Eas	9