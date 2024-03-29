From beginners-return-92730-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 24 16:06:04 2007
Return-Path: <beginners-return-92730-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5OK63L9016659
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 24 Jun 2007 16:06:03 -0400
Received: (qmail 27460 invoked by uid 514); 24 Jun 2007 20:05:54 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 27451 invoked from network); 24 Jun 2007 20:05:53 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 24 Jun 2007 20:05:53 -0000
Received: (qmail 26871 invoked by uid 225); 24 Jun 2007 20:05:53 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26863 invoked by alias); 24 Jun 2007 20:05:52 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of krahnj@telus.net designates 199.185.220.222 as permitted sender)
Received: from outbound03.telus.net (HELO outbound03.telus.net) (199.185.220.222)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Sun, 24 Jun 2007 13:05:51 -0700
Received: from priv-edtnaa05.telusplanet.net ([154.20.131.28])
          by priv-edtnes79.telusplanet.net
          (InterMail vM.7.08.02.00 201-2186-121-20061213) with ESMTP
          id <20070624200547.DUDF11500.priv-edtnes79.telusplanet.net@priv-edtnaa05.telusplanet.net>
          for <beginners@perl.org>; Sun, 24 Jun 2007 14:05:47 -0600
Received: from [154.20.131.28] (d154-20-131-28.bchsia.telus.net [154.20.131.28])
	by priv-edtnaa05.telusplanet.net (BorderWare MXtreme Infinity Mail Firewall) with ESMTP id 47MTDLM8LJ
	for <beginners@perl.org>; Sun, 24 Jun 2007 14:05:46 -0600 (MDT)
Message-ID: <467ECE9A.9010906@telus.net>
Date: Sun, 24 Jun 2007 13:05:46 -0700
From: "John W. Krahn" <krahnj@telus.net>
User-Agent: Thunderbird 1.5.0.12 (X11/20070604)
MIME-Version: 1.0
To: Perl beginners <beginners@perl.org>
Subject: Re: Conditional in regex
References: <C2A34FD8.7EBF%pl@loserville.org> <1182696163.021916.127330@k79g2000hse.googlegroups.com>
In-Reply-To: <1182696163.021916.127330@k79g2000hse.googlegroups.com>
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

nobull67@gmail.com wrote:
> On Jun 24, 3:31 am, p...@loserville.org (Jeff) wrote:
>>
>> Second, and equally important, what kind of data structure
>> should I put the results in? I think I need a hash of hashes
> 
> Probably a list of hashes would be the most natural.
> 
> my @LoH = map { { split } } $file_contents =~ /\{(.*?)\}/gs;
> 
>> . What I'd like
>> to do is assign each left hand value as the key in a hash. Then, in each set
>> there's a left 'command' where the right hand value will always be unique,
>> which would be perfect for use as the name of an alias for the hash or as
>> the key to a reference to a hash of that definition.
> 
> my %HoH;
> while ( $file_contents =~ /\{(.*?)\}/gs ) {
>         my %entry = split;
>         $HoH{delete $entry{command}} = \%entry;
> }

Shouldn't that be:

while ( $file_contents =~ /\{(.*?)\}/gs ) {
         my %entry = split ' ', $1;
         $HoH{delete $entry{command}} = \%entry;
}



John
-- 
Perl isn't a toolbox, but a small machine shop where you
can special-order certain sorts of tools at low cost and
in short order.                            -- Larry Wall

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


          

.-lB >i
3a/