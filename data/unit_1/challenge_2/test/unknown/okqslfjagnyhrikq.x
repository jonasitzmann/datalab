From perl6-all-return-82262-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 19:07:23 2007
Return-Path: <perl6-all-return-82262-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MN7ML9010545
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 19:07:23 -0400
Received: (qmail 6783 invoked by uid 514); 22 Jun 2007 18:08:04 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 6769 invoked from network); 22 Jun 2007 18:08:04 -0000
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
Received-SPF: pass (x1.develooper.com: domain of chas.owens@gmail.com designates 209.85.146.179 as permitted sender)
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=BiogiIXAXPlBky7/rPrNiFWoXetnDK178I/VWjHJzgC0KW5y/amjWZ+St9ljRWojsKpf/FkeByuCHBzo8ZkzBvrUw7ZdS3RQCRe1zyzUNinbQ5moqzcpNy6ZdplL5ii14jadOzGOLpAV8BG7SRxthdg8yLLxGSoS7r0KkccLU90=
DomainKey-Signature: a=rsa-sha1; c=nofws;
        d=gmail.com; s=beta;
        h=received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=Y5e0396tcyxS2YlHJ8KFsBKbGnjMv8Unw2qUVhM9GV1v2P+7XeNGIwdY6HaoLqPSIRTuuc7jY1ixfArCW1oTXUfSkysvXChZhH+snPtIYZBLc312w1VxZ4xkVAJUKrFGwOQ8ulcPsDjAlGTyZsCAEQ/WNb9s7jW6hnvbTdrteuI=
Message-ID: <58ce48dc0706221107i54eb457od81af207cf519344@mail.gmail.com>
Date: Fri, 22 Jun 2007 14:07:35 -0400
From: "Chas Owens" <chas.owens@gmail.com>
To: chromatic <chromatic@wgz.org>
Subject: Re: Web Module (Was: Perl6 new features)
Cc: perl6-language@perl.org, Smylers <Smylers@stripey.com>
In-Reply-To: <200706221043.55600.chromatic@wgz.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
References: <4676D013.6020708@perl.org> <467AF6E0.1000406@casella.verplant.org>
	 <20070621222338.GY6900@stripey.com>
	 <200706221043.55600.chromatic@wgz.org>
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_SIGNSOME,DK_SIGNED,SPF_PASS

On 6/22/07, chromatic <chromatic@wgz.org> wrote:
> On Thursday 21 June 2007 15:23:38 Smylers wrote:
>
> > Has Larry yet decreed whether Web will be bundled with Perl 6?
>
> I also like to proceed from the assumption that the only core modules should
> be those required to install other modules.
>
> -- c
>

Please, god, no.  Or at least make two distributions: Bare Perl 6 and
Perl 6.  Many companies have a "Only Core Perl" policy.  They refuse
to install CPAN modules because "We don't trust them".  Yeah, it is
stupid, but as a contractor I have limited ability to fight their
ignorance.

                 

 pQml /:ciMl 2a