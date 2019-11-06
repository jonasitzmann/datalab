From beginners-return-92162-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun  5 10:13:35 2007
Return-Path: <beginners-return-92162-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l55EDXhB009868
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 5 Jun 2007 10:13:34 -0400
Received: (qmail 10008 invoked by uid 514); 5 Jun 2007 14:13:15 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 9999 invoked from network); 5 Jun 2007 14:13:14 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 5 Jun 2007 14:13:14 -0000
Received: (qmail 27357 invoked by uid 225); 5 Jun 2007 14:13:14 -0000
Delivered-To: beginners@perl.org
Received: (qmail 27350 invoked by alias); 5 Jun 2007 14:13:14 -0000
X-Spam-Status: No, hits=-1.1 required=8.0
	tests=BAYES_05,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of kratzers@pa.net designates 205.166.61.227 as permitted sender)
Received: from smtp2.ctinetworks.com (HELO smtp2.ctinetworks.com) (205.166.61.227)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 05 Jun 2007 07:12:45 -0700
Received: from kratzers.int.pa.net (martha.pa.net [205.166.61.144])
	by smtp2.ctinetworks.com (Postfix) with ESMTP id D727E1A753E;
	Tue,  5 Jun 2007 10:09:20 -0400 (EDT)
From: Stephen Kratzer <kratzers@pa.net>
Reply-To: kratzers@pa.net
To: beginners@perl.org
Subject: Re: Command Splice()
Date: Tue, 5 Jun 2007 10:09:19 -0400
User-Agent: KMail/1.9.6
Cc: "Xu, Lizhe" <Lizhe.Xu@dhs.gov>
References: <3F12C523D4B6F947A38E9B8DA2773E20014784@ZAU1UG-0312.DHSNET.DS1.DHS>
In-Reply-To: <3F12C523D4B6F947A38E9B8DA2773E20014784@ZAU1UG-0312.DHSNET.DS1.DHS>
MIME-Version: 1.0
Content-Type: text/plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Message-Id: <200706051009.19991.kratzers@pa.net>
X-ctinetworks-Information: Please contact the ISP for more information
X-ctinetworks-VirusCheck: Found to be clean
X-ctinetworks-SpamCheck: 

On Tuesday 05 June 2007 09:38:51 Xu, Lizhe wrote:
> Hi All,
> =20
> The example given for splice function in the perldoc shows
> sub aeq {
>  ...
>  my(@a)=3D splice (@_, 0, shift);
>  ...
> }
> I am confused about what the splice command does with the shift command =
> and what the result of the command. Thanks.
>
>
>
>
> Lizhe

Look at how aeq is called. The lengths of the arrays are passed before the 
arrays. If the lengths are correct, the lengths are what the calls to shift 
should return. Using these lengths and an offset of 0 should ensure that 
splice removes all elements of the arrays following the length arguments. 
So, "my(@a) = splice(@_,0,shift);" assigns to @a the values from the first 
array in the call to aeq and "my(@b) = splice(@_,0,shift);" assigns to @b the 
values from the second array in the call to aeq. Then, the lengths of the two 
arrays are compared, and finally, all their elements are compared.

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


     

ie3lkcysl