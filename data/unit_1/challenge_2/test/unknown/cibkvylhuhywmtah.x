From beginners-return-92587-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 11:09:00 2007
Return-Path: <beginners-return-92587-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KF8xL9011485
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 11:08:59 -0400
Received: (qmail 26423 invoked by uid 514); 20 Jun 2007 15:08:51 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 26414 invoked from network); 20 Jun 2007 15:08:51 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 15:08:51 -0000
Received: (qmail 6416 invoked by uid 225); 20 Jun 2007 15:08:50 -0000
Delivered-To: beginners@perl.org
Received: (qmail 6397 invoked by alias); 20 Jun 2007 15:08:48 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from smtp110.plus.mail.re2.yahoo.com (HELO smtp110.plus.mail.re2.yahoo.com) (206.190.53.35)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Wed, 20 Jun 2007 08:08:46 -0700
Received: (qmail 77079 invoked from network); 20 Jun 2007 15:08:41 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=Received:X-YMail-OSG:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
  b=gonJp1dQ/62BSagZFqi5CtyiiQEZqmKlGil3K/dMDSBe0HT0zTX4PsumPvYua481xiS9faDjRTcl8MVqb3PVP7d8kRWgGVKSnggQIGtVjOpy8ZxNedodFU4Ck2jOxt8r6tG+CGz9DlfHOjIdyW5fN7KTdpp11REFTJPVgfKp+hY=  ;
Received: from unknown (HELO ?127.0.0.1?) (theillien@76.21.182.124 with plain)
  by smtp110.plus.mail.re2.yahoo.com with SMTP; 20 Jun 2007 15:08:41 -0000
X-YMail-OSG: fgrwt4oVM1lxZppuey8QagDj5d5TfRVPDMXoe6IdZTTVHEmOOoqxm1f9p6WGnD203WIR4sVCSfmpndJwgFWHWP8X5eeRHstsyWVK3piwPV1KGZPBOcnW0fnB3FNS8tNpYCIMTTA8J88RLNI-
Message-ID: <46794268.6080407@yahoo.com>
Date: Wed, 20 Jun 2007 11:06:16 -0400
From: Mathew <theillien@yahoo.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Rob Dixon <rob.dixon@350.com>
CC: Perl Beginners <beginners@perl.org>
Subject: Re: Alternatives to highly nested hashes
References: <4678F4A4.30909@yahoo.com> <46790419.7020708@yahoo.com> <4679109C.4070104@350.com>
In-Reply-To: <4679109C.4070104@350.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Rob Dixon wrote:
> Mathew Snyder wrote:
>> It looks like an object is what I want.  Am I correct?  Suppose I need
>> to work
>> with a bit of data that actually has 11 attributes.  This would be an
>> object of
>> another type.  However, I need to manipulate pieces of it
>> differently.  So I'm
>> guessing I would create an object thusly:
>>
>> sub objectname {
>>     my %hashOfAttribs {
>>     attrib1 => undef,
>>     attrib2 => undef,
>>     attrib3 => undef
>>     }
>> }
>>
>> I would then create an instance of that object
>>
>> my $instance = new objectname();
>>
>> I'm not certain though, how to populate the elements.  would it
>> actually be
>> my $instance = new objectname(attrib1 => value, attrib2 => value,
>> attrib3 =>
>> value)?  Or would I create the instance as above and then populate it
>> by some
>> other means?  For instance
>> $instance->hashOfAttribs {
>>     attrib1 => value,
>>     attrib2 => value,
>>     attrib3 => value
>> };
>>
>> Am I at least on the right track?
> 
> Well, sort of. Objects are simply intelligent data structures -
> structures with
> code as well as data that know how to perform operations on themselves.
> So you
> still have to decide on your basic data structure first, and we still
> need to
> know more about what the data is that you're trying to represent before
> we can
> help!
> 
> What you've written above is pretty much correct expect that Perl
> classes (types
> of objects) are packages not subroutines. But first lets be sure you
> really need
> to create objects.
> 
> Rob
> 
> 
> 

I'm building reports for our work ticket system.  The tickets are
actually objects themselves.  After accessing an instance of a ticket
object one simply accesses the various attributes such as the ticket
number ($ticket->id) or the subject of the ticket ($ticket->Subject).  I
need to do more than just access these attributes and print them out though.

There are several things that need to be done with the data though:
determine which tickets have the highest priority, averaging the time
spent on each ticket, the average time spent on each customer, etc.  In
order to get the information I need I have to store the data in a hash
outside of the actual ticket object.  Once all of the data has been
processed I need to print out the information for each ticket for each
customer and user.

My superiors want the printout for each of these reports to contain all
kinds of information under several headers such as the ticket id, owner,
customer, time spent on it, when it's due for completion, etc.  Needing
up to (but not necessarily) 11 columns I would end up with a hash
dropping 10 levels deep (n-1, right?).  Eventually, those levels would
contain only one item each in turn containing one item each.  All so I
can print out as many columns as requested

As well, I'll potentially be dealing with upwards of a hundred tickets
at a time.

That's the absolute simplest way I can put it.  Let me know if it isn't
enough to work with.

Mathew
Keep up with my goings on at http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


                   

l= so�s7 iuE