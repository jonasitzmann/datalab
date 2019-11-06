From perl6-all-return-82353-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 03:57:47 2007
Return-Path: <perl6-all-return-82353-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P7vkL9022541
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 03:57:46 -0400
Received: (qmail 17220 invoked by uid 514); 25 Jun 2007 07:57:42 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 17215 invoked from network); 25 Jun 2007 07:57:41 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: domain of hakim.cassimally@gmail.com designates 64.233.166.176 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=pR5Jia8yjnIcgDO8da+te4GatHhsQOZYFrBmG3rd5PsEykQvu2Jp3SKIe6ODVMfz7MSsop9azt9xur8b71mVl7tLUOju7dPgBoktfXMll8bXCQtdnI5EtBli7RogjOhrc4NDVW6qawuMBTh1qFT8+6rq2PAU6JPkBbi8A0eNgv8=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=ItxrDRwoC/taSoNJr80kWCQiEUt6DSQC3+bRM+p0KiPaDfOrE7WCVzVHux509ITg2pF8oxEWGsIsQp/YJ6ThGYV5F68cOvHCt46RV3+7anri8drkOcnPm8NinlyUfPlfG4KBaTzjdCo6TUrbgkT5YIexpwoZdFqpXcPRbrm7NJI=
Message-ID: <82cfa8030706250057q2b59a313n4e4288b73993676@mail.gmail.com>
Date: Mon, 25 Jun 2007 09:57:18 +0200
From: "Hakim Cassimally" <hakim.cassimally@gmail.com>
To: chromatic <chromatic@wgz.org>, perl6-language@perl.org
Subject: Re: Web Module (Was: Perl6 new features)
In-Reply-To: <200706221526.31234.chromatic@wgz.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <4676D013.6020708@perl.org> <200706221043.55600.chromatic@wgz.org>
	 <58ce48dc0706221107i54eb457od81af207cf519344@mail.gmail.com>
	 <200706221526.31234.chromatic@wgz.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 23/06/07, chromatic <chromatic@wgz.org> wrote:
> On Friday 22 June 2007 11:07:35 Chas Owens wrote:
>
> > Please, god, no. Or at least make two distributions: Bare Perl 6 and
> > Perl 6. Many companies have a "Only Core Perl" policy. They refuse
> > to install CPAN modules because "We don't trust them".
>
> I think of this the same way I think of "Do not drink even if you mix with
> beer" labels on bleach bottles.  Stupid people often remove their genes from
> the pool.  We should not discourage stupid business practices from doing the
> same.

Releasing a language without a useful, easily installable library bundle
could quite reasonably be construed as a stupid business practice.

I do hope that Perl6 doesn't do this, but a) I don't think it's very likely,
and b) some organization or company will rapidly release a useful
Bundle:: (or Task:: or whatever it's called in Perl6) to fill in the gap.
--
osfa

                   

g0c0uu