From perl6-all-return-82344-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 05:41:39 2007
Return-Path: <perl6-all-return-82344-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5O9fbL9010926
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 05:41:38 -0400
Received: (qmail 28797 invoked by uid 514); 24 Jun 2007 09:41:33 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28791 invoked from network); 24 Jun 2007 09:41:32 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DKIM_SIGNED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: moderator for perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of pdcawley@gmail.com designates 64.233.166.178 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=aicl5oLORG5ya5xuWM1objLKZHlYHJuKeoiUpoNmU/kTwm+461tzNrN1vhLYTM7RcQNHpNXzyfSY/8d/X0TZFnNokHUR/2DQBblfq3Iuffem+yYu2SmAf9x74D5YWKTqmUrRpsGBzR0heQhnIe5cgdVqtif/C3eBZhzXBwxuMQA=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=DcscvY8Yb2cw1vC9VeL9AMRexiJEVNDTNojqplhxTdUh/S5Sk7TEtLGP1ixBmygrxklkmYPKNi1KJ96beX4nZqJUl0DZbDhiVuFqqzD0Bwe/nA+m68rTx+DuhVn079PT8EAbLj1/h6aD+B2LeDSCuhgm/v2LJxCE0DqjIMwmEfc=
Message-ID: <897e96cc0706231507n44714a45x8d405d79dfa4d743@mail.gmail.com>
Date: Sat, 23 Jun 2007 23:07:19 +0100
From: "Piers Cawley" <pdcawley@bofh.org.uk>
Sender: pdcawley@gmail.com
To: "brian d foy" <brian.d.foy@gmail.com>
Subject: Re: Some Things I'd Like To Do With Pod
Cc: perl6-language@perl.org
In-Reply-To: <220620071204538841%brian.d.foy@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <220620071204538841%brian.d.foy@gmail.com>
X-Google-Sender-Auth: 81c112e1f5a8978a
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 22/06/07, brian d foy <brian.d.foy@gmail.com> wrote:
> =======Per class documentation, not per file documentation
>
> Related to the one above, I'd like to have NAME, SYNOPSIS, etc. for
> each class, not just per file. Well, what I really want is the
> Smalltalk class and method browsers, but I know I'm not going to get
> those.

I'm sure it's going to be great deal easier to implement such a tool
in Perl 6 than it is in Perl 5 though. It's just not going to be in
the core. And even if it's not going to be easy, I can think of at
least one person who is going to have a bloody good go at implementing
it.

With apologies if I'm teaching my grandma to suck eggs here.

                 

meUct
Gboe
na