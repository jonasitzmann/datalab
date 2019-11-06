From perl6-all-return-81892-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 11 06:13:36 2007
Return-Path: <perl6-all-return-81892-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5BADZL9012808
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 11 Jun 2007 06:13:35 -0400
Received: (qmail 28809 invoked by uid 514); 11 Jun 2007 10:13:34 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28804 invoked from network); 11 Jun 2007 10:13:33 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,PLING_QUERY,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: moderator for perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <466CD640.3080606@strangersgate.com>
Date: Mon, 11 Jun 2007 00:57:36 -0400
From: Zev Benjamin <zev@strangersgate.com>
User-Agent: Icedove 1.5.0.10 (X11/20070329)
MIME-Version: 1.0
To: Audrey Tang <audreyt@audreyt.org>
CC: Jonathan Lang <dataweaver@gmail.com>, p6l <perl6-language@perl.org>
Subject: Re: Generalizing ?? !!
References: <ef30550b0706101410l44485919m472e675a700a1daf@mail.gmail.com> <83F5E0A4-3320-46F2-9319-35DEF2E79584@audreyt.org>
In-Reply-To: <83F5E0A4-3320-46F2-9319-35DEF2E79584@audreyt.org>
X-Enigmail-Version: 0.94.2.0
Content-Type: text/plain; charset=Big5
Content-Transfer-Encoding: 8bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=2.7 required=8.0
	tests=BAYES_50,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,FH_HOST_EQ_D_D_D_D,PLING_QUERY,RDNS_DYNAMIC,SPF_PASS

?? and !! could always return some kind of result object that boolizes
to true or false.


Zev

Audrey Tang wrote:
> 
> �b Jun 11, 2007 5:10 AM �ɡAJonathan Lang �g��G
>> A variation of chaining associativity gets
>> used, with the "chaining rule" being '$v1 op1 $v2 // $v1 op2 $v3'
>> instead of '$v1 op1 $v2 && $v2 op2 $v3', as is the case for comparison
>> chaining.
> 
> But wouldn't that make:
> 
>   True ?? undef !! Moose;
> 
> evaluate to Moose, instead of undef as we wanted?
> 
> Cheers,
> Audrey
> 

               

RJ
:ldb