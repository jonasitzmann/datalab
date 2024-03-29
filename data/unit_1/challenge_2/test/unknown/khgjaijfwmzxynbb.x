From perl6-all-return-82476-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jul  1 03:35:38 2007
Return-Path: <perl6-all-return-82476-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l617ZbL9016830
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 1 Jul 2007 03:35:37 -0400
Received: (qmail 8145 invoked by uid 514); 1 Jul 2007 07:35:32 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 8140 invoked from network); 1 Jul 2007 07:35:31 -0000
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
Received-SPF: pass (x1.develooper.com: domain of amir.aharoni@gmail.com designates 64.233.166.182 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=n3nyQUeciw4L7Qw8y2Rhqjz/eSCsrMSLcgWcy6KRYKkNqoQ5lGzDA1xnyk26Gp+RRscFMcAdp1PCqQ/l2xB03G6PXBO6lqNV1wFAvwA1VAODVPIyjWhel4jLTWOxmPaudctEkInnrsSP6kQJgPs0eqz4nT2QDeHtmoCvza7YY+s=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=MExd2V3uv93X8bqD8bYdvBnuLGBJKwL/oCxvOSWEdqG3QAC61aXtwEH1ED6EH60BxJpPs1P2/+idKyaSy2CcOK+QAZAHS7LIzqX8MoANwKk+ZslRZ+nJdtOQmSJIb03It0r5t0yXI8h+EJsCKj8N5YcrnMpouaGzqKSjgFQCZsA=
Message-ID: <97f280ea0707010034w16854fb3o462a8208ad965780@mail.gmail.com>
Date: Sun, 1 Jul 2007 10:34:54 +0300
From: "Amir E. Aharoni" <amir.aharoni@gmail.com>
To: perl6-language <perl6-language@perl.org>
Subject: **{x,y} quantifier
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

(I'm just studying the intricacies of Perl 6, so please correct me if
i say something stupid or if this has already been discussed before.)

I was looking for the Perl 6 equivalent of

"aaa" =~ /a{1,3}/

and finally found that it's

"aaa" ~~ /a**{1 .. 3}/

This looked rather weird, so i asked on IRC what is the mnemonic for it:
http://moritz.faui2k3.org/irclog/out.pl?channel=perl6;date=2007-06-29#id_l602

I got the reply that it is similar to exponentiation of variables in math:

a ** 5 == a * a * a * a * a == aaaaa

It makes sense after it is explained and i do like the rationalization
of the range as a list-like range, instead of the comma, but the **
syntax is rather ugly to my taste. Seeing that the ** quantifier is
not yet implemented anyway, I thought what could replace it, and the
best i could find was <1 .. 3>.

My rationale is this:

* It looks clean.

* It the chapter about Extensible metasyntax (<...>) in S05 most
paragraphs begin by "A leading X means yadda yadda", where X can be:

    * whitespace
    * alphabetic character (not alphanumeric!)
    * ? $ :: @ % { & [ + - . ! ~~

... so numbers are not covered.

* As a side effect, * is a shortcut for <0 .. Inf>, + is a shortcut
for <1 .. Inf>, ? * is a shortcut for <0 .. 1>.

* The ? of non-greediness can come before the closing > - <1 .. 3 ?>

Any comments?

-- 
Amir Elisha Aharoni
my band: http://www.myspace.com/tzabari/
my blog: http://aharoni.wordpress.com/

 

:�  nL