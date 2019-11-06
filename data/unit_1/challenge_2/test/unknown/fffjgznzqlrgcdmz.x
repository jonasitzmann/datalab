From beginners-return-92563-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 06:40:44 2007
Return-Path: <beginners-return-92563-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KAehL9008865
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 06:40:43 -0400
Received: (qmail 10332 invoked by uid 514); 20 Jun 2007 10:40:37 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 10323 invoked from network); 20 Jun 2007 10:40:36 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 10:40:36 -0000
Received: (qmail 15735 invoked by uid 225); 20 Jun 2007 10:40:35 -0000
Delivered-To: beginners@perl.org
Received: (qmail 15715 invoked by alias); 20 Jun 2007 10:40:32 -0000
X-Spam-Status: No, hits=2.8 required=8.0
	tests=BAYES_40,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from office.servervault.com (HELO mail1.dulles.sv.int) (216.12.128.136)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 03:40:30 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mail1.dulles.sv.int with Microsoft SMTPSVC(6.0.3790.1830);
	 Wed, 20 Jun 2007 06:40:24 -0400
Message-ID: <46790419.7020708@yahoo.com>
Date: Wed, 20 Jun 2007 06:40:25 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Perl Beginners <beginners@perl.org>
Subject: Re: Alternatives to highly nested hashes
References: <4678F4A4.30909@yahoo.com>
In-Reply-To: <4678F4A4.30909@yahoo.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 20 Jun 2007 10:40:24.0978 (UTC) FILETIME=[68FBD720:01C7B327]

It looks like an object is what I want.  Am I correct?  Suppose I need to work
with a bit of data that actually has 11 attributes.  This would be an object of
another type.  However, I need to manipulate pieces of it differently.  So I'm
guessing I would create an object thusly:

sub objectname {
    my %hashOfAttribs {
	attrib1 => undef,
	attrib2 => undef,
	attrib3 => undef
    }
}

I would then create an instance of that object

my $instance = new objectname();

I'm not certain though, how to populate the elements.  would it actually be
my $instance = new objectname(attrib1 => value, attrib2 => value, attrib3 =>
value)?  Or would I create the instance as above and then populate it by some
other means?  For instance
$instance->hashOfAttribs {
    attrib1 => value,
    attrib2 => value,
    attrib3 => value
};

Am I at least on the right track?

Mathew
Keep up with me and what I'm up to: http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


    

aZh5 P �o