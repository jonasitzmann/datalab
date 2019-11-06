From perl6-all-return-82349-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jun 25 00:20:26 2007
Return-Path: <perl6-all-return-82349-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5P4KDL9020837
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 25 Jun 2007 00:20:14 -0400
Received: (qmail 9436 invoked by uid 514); 25 Jun 2007 04:20:09 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 9428 invoked from network); 25 Jun 2007 04:20:08 -0000
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
Date: Sun, 24 Jun 2007 21:19:40 -0700
From: Mark Glines <mark@glines.org>
To: parrotbug-followup@parrotcode.org
Cc: perl6-internals@perl.org
Subject: Re: [perl #41497] [TODO] config - profiling options are specific to
 gcc in config/init/defaults.pm
Message-ID: <20070624211940.24be7aac@chirp>
In-Reply-To: <rt-3.6.HEAD-27081-1182744791-1918.41497-15-0@perl.org>
References: <RT-Ticket-41497@perl.org>
	<8e8ee0d40702130805g4901dab8t80c7175e1aa3ee29@mail.gmail.com>
	<rt-3.6.HEAD-27081-1182744791-1918.41497-15-0@perl.org>
Organization: Glines.org
X-Mailer: Claws Mail 2.9.0 (GTK+ 2.10.13; i686-pc-linux-gnu)
X-Useless-Header: yay!
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_HELO_PASS,SPF_PASS

On Sun, 24 Jun 2007 21:13:14 -0700
"James Keenan via RT" <parrotbug-followup@parrotcode.org> wrote:
> The profiling options code in config/init/defaults.pm reads:
> 
>     if ( $conf->options->get('profile') ) {
>         $conf->data->set(
>             cc_debug => " -pg ",
>             ld_debug => " -pg ",
>         );
>     }
> 
> Can anyone confirm that these are indeed gcc-specific?  Thanks.

This flag convinces gcc to generate profiling code specifically for
the GNU profiler, "gprof".  I find it *extremely* unlikely that this
flag would be available and/or mean the same thing for other compilers,
but I do not currently have any others to test with.

Mark

      

H-fpb.
H83