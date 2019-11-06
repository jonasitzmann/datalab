From beginners-return-92733-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 23:07:38 2007
Return-Path: <beginners-return-92733-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P37bL9020229
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 23:07:37 -0400
Received: (qmail 18857 invoked by uid 514); 25 Jun 2007 03:07:31 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 18848 invoked from network); 25 Jun 2007 03:07:30 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 25 Jun 2007 03:07:30 -0000
Received: (qmail 13715 invoked by uid 225); 25 Jun 2007 03:07:30 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13699 invoked by alias); 25 Jun 2007 03:07:30 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 199.185.220.221 as permitted sender)
Received: from outbound02.telus.net (HELO outbound02.telus.net) (199.185.220.221)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 20:07:28 -0700
Received: from priv-edtnaa06.telusplanet.net ([154.20.131.28])
          by priv-edtnes44.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070625030724.LXLZ24633.priv-edtnes44.telusplanet.net@priv-edtnaa06.telusplanet.net>
          for <beginners@perl.org>; Sun, 24 Jun 2007 21:07:24 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edtnaa06.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id B018VMQM0H
	for <beginners@perl.org>; Sun, 24 Jun 2007 21:07:24 -0600 (MDT)
Message-ID: <467F316B.3050406@telus.net>
Date: Sun, 24 Jun 2007 20:07:23 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: Conditional in regex
References: <C2A49412.7F8B%pl@loserville.org>
In-Reply-To: <C2A49412.7F8B%pl@loserville.org>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Jeff wrote:
> 
> On 6/24/07 10:42 AM, "nobull67@gmail.com" <nobull67@gmail.com> wrote:
>>
>  > Probably a list of hashes would be the most natural.
>> my @LoH = map { { split } } $file_contents =~ /\{(.*?)\}/gs;
> 
> Thanks. That's cool. Since this is the beginner's list, I'll just dive in
> and ask a(nother) dumb question. I'm not sure I understand the double curly
> braces around split. Would you mind showing me that in a less terse form?

The outer curly braces are map's code block and the inner curly braces are an 
anonymous hash.


John
-- 
Perl isn't a toolbox, but a small machine shop where you
can special-order certain sorts of tools at low cost and
in short order.                            -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


        

aouh2elye6zeRX5