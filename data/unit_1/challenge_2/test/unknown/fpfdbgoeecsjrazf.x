From perl6-all-return-82182-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 21 13:57:48 2007
Return-Path: <perl6-all-return-82182-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5LHvlL9027244
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 21 Jun 2007 13:57:48 -0400
Received: (qmail 3120 invoked by uid 514); 21 Jun 2007 17:57:44 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 3115 invoked from network); 21 Jun 2007 17:57:44 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Received-SPF: pass (x1.develooper.com: domain of markjreed@gmail.com designates 209.85.132.250 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=tdHK0IC0xfDQSxWCj26QwVvOX88amcfJSnI66eaOWrMkHAex6hLIi3VjTHtxFnzB4ttOLo0wgWsMPlpTI9Z4viuAe/e2tE0WZg/Qwj3OyL6vMDsCoOi12R13A0yqUKFFsnrjMGGfVS525wHcu28DUck5HS0LDr5RKfnMelW47gs=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=DMqPjqj/yYJzeSG8HG6blbPRcAIPJDnzdNDWOhr4+EUgyeXFYyXTJTeA8qgew+9ifGohRMxl9Ayw0hyqqAWFRZq/n3jfF682keBa6CBGeifdP1w1MsNrnhI5feAN39DzSMfYcHIuQrIDwDDZxpkINae0rhhpTBa5oL8WOay8sA8=
Message-ID: <f60fe000706211057q5291ea45l1e8bbfd0756a3b30@mail.gmail.com>
Date: Thu, 21 Jun 2007 13:57:23 -0400
From: "Mark J. Reed" <markjreed@mail.com>
Sender: markjreed@gmail.com
To: "Andy Lester" <andy@petdance.com>
Subject: Re: Struct copying
Cc: "Perl 6 Internals" <perl6-internals@perl.org>
In-Reply-To: <04B83FF6-28FB-418C-A0C8-8746E0BE1C68@petdance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <04B83FF6-28FB-418C-A0C8-8746E0BE1C68@petdance.com>
X-Google-Sender-Auth: 0368726b3e41b591
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/21/07, Andy Lester <andy@petdance.com> wrote:
> We now have STRUCT_COPY(dest,src) and STRUCT_COPY_N(dest,src,n) for
> all your struct-copying needs.

Wait!  Wait!  It should be src, THEN dest!

<duck impending barrage of fruit>
-- 
Mark J. Reed <markjreed@mail.com>

     

-rg hhheLa-