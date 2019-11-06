From perl6-all-return-81981-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jun 14 22:00:17 2007
Return-Path: <perl6-all-return-81981-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5F20GL9028498
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 14 Jun 2007 22:00:16 -0400
Received: (qmail 28455 invoked by uid 514); 15 Jun 2007 02:00:10 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 28434 invoked from network); 15 Jun 2007 02:00:09 -0000
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
Received-SPF: pass (x1.develooper.com: domain of thoughtstream@gmail.com designates 66.249.82.234 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=VfSEBx7O6i01Q8CiPhWxLuk9WwuKGRuCG5jmHX3FTLJpA6Y/KPoLz30cBXl7wXJgfygIeZE8r9qa7KX+VgvE6GndmuxOmaQkR2tSUa9hRoN20/gYCmenXxxuslOszNICdcd9VzgvqWCTU16LGLJjPQp1G3AoT8ddFXM+l55uQYU=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:sender:to:subject:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references:x-google-sender-auth;
        b=hPOpS6b7KVJCRKsZigmkZdPikPE+PxfCdnxQuSkRu0sEx70K6UqW6ircrwg5VSWtp8V1oIQ+gwXzmrsp6YyT7TX78ayZo01/bwhTIKMsY4oFYOs+Zl6FsojLyfPsgqKMvIRCJ1RFZTaar07a0OVP7IHg66o6M/sybvYKo5H0Kmc=
Message-ID: <832f158a0706141859n11fccf9flaebcaa04d9885215@mail.gmail.com>
Date: Fri, 15 Jun 2007 11:59:49 +1000
From: "Damian Conway" <damian@conway.org>
Sender: thoughtstream@gmail.com
To: "perl6-language@perl.org" <perl6-language@perl.org>
Subject: Re: [svn:perl6-synopsis] r14421 - doc/trunk/design/syn
In-Reply-To: <58ce48dc0706141806k797fd1d5hda472cd12385e908@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <20070613205525.7ECA0CB9B8@x12.develooper.com>
	 <ef30550b0706131429o34838a6es6704e8ec73851b49@mail.gmail.com>
	 <467073C4.6020708@conway.org>
	 <ef30550b0706140749w6c6290e9qc164901b578a8d5b@mail.gmail.com>
	 <832f158a0706141722o5f68cf09l724d4f4520ee146@mail.gmail.com>
	 <58ce48dc0706141806k797fd1d5hda472cd12385e908@mail.gmail.com>
X-Google-Sender-Auth: 76f823d2aa863d82
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

Chas Owens asked:

> Would this work as well?
>
> say :to(END);
> \x{3D}begin POD
> blah blah blah
> \x{3D}end POD
> END


Yes, except for the :to actually needing to be qq:to (which was wrong
all the way through these examples, BTW).

You could also just use:

say qq:to(END);
\=begin POD
blah blah blah
\=end POD
END


Damian

       

und0Lre 8oa