From beginners-return-92086-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun  1 15:51:10 2007
Return-Path: <beginners-return-92086-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l51Jp9hB014086
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 1 Jun 2007 15:51:10 -0400
Received: (qmail 30038 invoked by uid 514); 1 Jun 2007 19:50:56 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 30029 invoked from network); 1 Jun 2007 19:50:55 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 1 Jun 2007 19:50:55 -0000
Received: (qmail 2302 invoked by uid 225); 1 Jun 2007 19:50:55 -0000
Delivered-To: beginners@perl.org
Received: (qmail 2293 invoked by alias); 1 Jun 2007 19:50:55 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from pearl.ibctech.ca (HELO pearl.ibctech.ca) (208.70.104.210)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Fri, 01 Jun 2007 12:50:40 -0700
Received: (qmail 34732 invoked by uid 1002); 1 Jun 2007 19:50:36 -0000
Received: from iaccounts@ibctech.ca by pearl.ibctech.ca by uid 89 with qmail-scanner-1.22 
 (spamassassin: 2.64.  Clear:RC:1(208.70.107.100):. 
 Processed in 25.572981 secs); 01 Jun 2007 19:50:36 -0000
Received: from unknown (HELO ?192.168.1.210?) (steve@ibctech.ca@208.70.107.100)
  by pearl.ibctech.ca with (DHE-RSA-AES256-SHA encrypted) SMTP; 1 Jun 2007 19:50:10 -0000
Message-ID: <4660789E.20304@ibctech.ca>
Date: Fri, 01 Jun 2007 15:50:54 -0400
From: Steve Bertrand <iaccounts@ibctech.ca>
User-Agent: Thunderbird 2.0.0.0 (Windows/20070326)
MIME-Version: 1.0
To: beginners@perl.org
Subject: Re: pr warn die question
References: <32b873ff0706010748k176fe43cr3cc9ed06551db126@mail.gmail.com>	 <1180710663.420917.144320@w5g2000hsg.googlegroups.com>	 <58ce48dc0706010821w67f6866do1a1f6c8efa029870@mail.gmail.com>	 <1180716814.254664.138210@k79g2000hse.googlegroups.com>	 <58ce48dc0706011049m4ab7fa99p5ba49ada6790b68a@mail.gmail.com>	 <1180725887.152399.70680@q66g2000hsg.googlegroups.com> <58ce48dc0706011247m85fc459h12fce6b6a99a8ce4@mail.gmail.com>
In-Reply-To: <58ce48dc0706011247m85fc459h12fce6b6a99a8ce4@mail.gmail.com>
X-Enigmail-Version: 0.95.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Chas Owens wrote:
> On 6/1/07, Paul Lalli <mritty@gmail.com> wrote:
>> On Jun 1, 1:49 pm, chas.ow...@gmail.com (Chas Owens) wrote:
>> > On 6/1/07, Paul Lalli <mri...@gmail.com> wrote:> On Jun 1, 11:21 am,
>>
>> > > and unscalable.  (As soon as you add an 'else' clause,
>> > > people have to read it two or three times to understand what's being
>> > > done).  Avoid at all costs.
>> >
>> > Which is why you never use an unless with an else.  If you have
>> >
>> > unless ($foo) {
>> >     print "false\n";
>> > }
>> >
>> > and you find you need an else you change it to an if
>> >
>> > if ($foo) {
>> >     print "true\n"
>> > } else {
>> >     print "false\n";
>> > }
>>
>> Thank you for proving my point for me. :-P
>>
>> Paul Lalli
> 
> Umm, no, I didn't.  I agreed with part of what you said.  You should
> never use an else with an unless, but unless by itself is better, in
> my mind, than an if (!) and you can always change it to an if later if
> you need to add an else.

In all honesty, I find removing a ! is easier than changing an if to
unless, especially if just testing something quickly. Also makes it
easier to search for.

Steve

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


              

J F.Rk rwNaA