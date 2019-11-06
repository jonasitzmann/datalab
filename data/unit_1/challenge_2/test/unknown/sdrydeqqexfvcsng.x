From perl6-all-return-82544-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 18:18:12 2007
Return-Path: <perl6-all-return-82544-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64MIBL9016191
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 18:18:11 -0400
Received: (qmail 5030 invoked by uid 514); 4 Jul 2007 22:18:06 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 5024 invoked from network); 4 Jul 2007 22:18:06 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-internals-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-internals
List-Id: <perl6-internals.perl.org>
Delivered-To: mailing list perl6-internals@perl.org
Delivered-To: perl6-internals@perl.org
Delivered-To: parrotbug-followup@parrotcode.org
Received-SPF: pass (x1.develooper.com: domain of mark@glines.org designates 72.36.206.66 as permitted sender)
Date: Wed, 4 Jul 2007 15:17:33 -0700
From: Mark Glines <mark@glines.org>
To: bob@fourtheye.org
Cc: Patrick Michaud <pmichaud@pobox.com>, Andy Lester <andy@petdance.com>,
   parrotbug-followup@parrotcode.org
Subject: Re: [perl #43481] t/examples/shootout.t (shootout_16.pir) fails on
 gentoo/x86
Message-ID: <20070704151733.6b598bbf@chirp>
In-Reply-To: <20070704225648.GA22686@fourtheye.org>
References: <RT-Ticket-43481@perl.org>
	<20070702164623.5c0a64f3@chirp>
	<rt-3.6.HEAD-20473-1183420014-385.43481-72-0@perl.org>
	<20070702202752.10abda93@chirp>
	<rt-3.6.HEAD-20473-1183433306-679.43481-74-0@perl.org>
	<rt-3.6.HEAD-25329-1183480468-447.43481-74-0@perl.org>
	<20070703100256.5ead2c99@chirp>
	<16626A5E-AF77-498C-9014-6F208444AB06@petdance.com>
	<20070703101859.6dafae29@chirp>
	<20070703132830.0ba461d1@chirp>
	<20070704225648.GA22686@fourtheye.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Wed, 4 Jul 2007 22:56:48 +0000
bob@fourtheye.org wrote:
> > This is on gentoo linux x86.  I ran Configure.pl with no arguments.
> > Apparently this test passes on chromatic's linux box, and on
> > particle's win32 box, but fails on my gentoo box and particle's
> > ubuntu box.  So its a bit sporadic.
> I just tried this test case with a fresh parrot from svn on a sparc
> machine running gentoo and got the first set of output. 
> 
> I don't know if this helps or confuses.

It helps, thanks.  Glad to know I can't just blame gentoo.

After doing the binary search I mentioned earlier and finding that it
started breaking in svn r19441, there was some discussion in the IRC
channel.  The important bit is:

[13:35] <@chromatic> Hm, I don't blame 19441 for the shootout test.
[13:35] <@chromatic> I think it just changed the memory characteristics of the program sufficiently to trigger a lurking GC bug.


So now I'll try to see if there was a DOD run that freed up something
it shouldn't have, or something like that.

Thanks for testing!

Mark

                  

Vk6 fS"bd