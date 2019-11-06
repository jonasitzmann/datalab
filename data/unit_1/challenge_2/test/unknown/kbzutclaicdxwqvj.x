From beginners-return-92580-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 10:33:54 2007
Return-Path: <beginners-return-92580-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KEXrL9011055
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 10:33:53 -0400
Received: (qmail 31283 invoked by uid 514); 20 Jun 2007 14:33:37 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 31237 invoked from network); 20 Jun 2007 14:33:36 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 20 Jun 2007 14:33:36 -0000
Received: (qmail 18110 invoked by uid 225); 20 Jun 2007 14:33:36 -0000
Delivered-To: beginners@perl.org
Received: (qmail 18069 invoked by alias); 20 Jun 2007 14:33:33 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,HS_INDEX_PARAM,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: domain of rvm@cbord.com designates 24.39.174.11 as permitted sender)
Received: from mx1.cbord.com (HELO Email.cbord.com) (24.39.174.11)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 20 Jun 2007 07:33:30 -0700
X-MIMEOLE: Produced By Microsoft Exchange V6.5
Content-class: urn:content-classes:message
MIME-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Subject: RE: Inter-thread communications
Date: Wed, 20 Jun 2007 10:32:55 -0400
Message-ID: <FF8482A96323694490C194BABEAC24A001130BA2@Email.cbord.com>
In-Reply-To: <h75i735jlo4tfmkqjt6ku94dc0fpu1kpm2@4ax.com>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: Inter-thread communications
Thread-Index: AcezQKG8t+9UfvBORMKECDhON7VRpwABI0nQ
References: <FF8482A96323694490C194BABEAC24A0010EC84E@Email.cbord.com> <ee9g73tn1mgg10usjfk06kokk9q5alqnqa@4ax.com> <FF8482A96323694490C194BABEAC24A00113084B@Email.cbord.com> <h75i735jlo4tfmkqjt6ku94dc0fpu1kpm2@4ax.com>
From: "Bob McConnell" <rvm@CBORD.com>
To: <beginners@perl.org>
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5KEXrL9011055

> -----Original Message-----
> From: Linux@lists.develooper.com 
> [mailto:Linux@lists.develooper.com] On Behalf Of zentara
> Sent: Wednesday, June 20, 2007 8:13 AM
> To: beginners@perl.org
> Subject: Re: Inter-thread communications
> 
> On Tue, 19 Jun 2007 15:44:18 -0400, rvm@CBORD.com ("Bob McConnell")
> wrote:
> 
> 
> >I have been trying to implement this in ActivePerl 5.8.8.820 
> on W2K, so
> >I am working in the thread based fork() implementation. IPC does not
> >seem to exist in that implementation.
> 
> For forked processes, you need pipes, sockets, or shared mem for
> IPC.  
> 
> You probably are better off sticking with threads on Win32, since
> it only uses threads underneath it all.
> 
> >I had pretty much figured out that alarm doesn't work in Win32. I had
> Alarm dosn't work on linux with threads either ( or not as you would
> expect.... the main thread intercepts all alarms).
> 
> >tried to use it to interrupt read() on a serial port, and that wasn't
> >working. Neither did SIGINT or SIGTERM. The only way to get out of it
> >was Ctrl->Break, which shuts down the whole process.
> >
> >Unless the Glib timer can interrupt a serial port read() 
> call, I don't
> >see any way to timeout a serial port input function on Win32.
> >Unfortunately, that means I will probably need to steal one 
> of the FC5
> >boxes from the next room in order to get it to work.
> 
> Yeah, Glib should be able to do it with some "flagging magic". I don't
> have an example offhand, but if you look at that perlmonks url, about
> rolling your own event loop, you can see how it MIGHT be done :-)
> 
> .....pseudo-code follows......
> 
> ###  filehandle watch
> open (FH, "+> test.log") or warn "$!\n";     # simulate your socket
> 
> Glib::IO->add_watch (fileno 'FH', ['in'], \&watch_callback, 'FH', 1 );
> 
> $main_loop->run;
> ####################################################################
> sub watch_callback {
>     my ($fd, $condition, $fh) = @_;
> 
>     if($flag){return 1}  # test for timer flag
> 
>     my @lines = <FH>;
>     print @lines;
> 
>    # here you might regex the lines for Ack or Nack, and if found,
>    #launch a timer to set a flag after 3 seconds ( act as alarm) 
>    my $timer  = Glib::Timeout->add (3000, \&timer_callback, 
> undef, 1 );
> 
> 
>     #always return TRUE to continue the callback
>     return 1;
> }       
> 
> 
> 
> Like I said it was just pseudo code, and I have to admit, it would
> probably take a few hours of realtime testing scripts, to see how
> the serial port socket actually behaves..... the devil is 
> always in the
> details.
> 
> Switching to a linux box would make things work better for sure, but
> first I recommend checking out POE. It is an advanced 
> event-loop system
> that has alot of the bugs worked out.
> There is a POE cookbook of examples online, and you may find
> something close to your needs.
> POE does offer alarms and signals.
> 
> http://poe.perl.org/?POE_Cookbook
> 
> 
> zentara

Thank your for those ideas. I don't know how far I will get with POE
since I don't do objects. At this point I have to think about switching
to C for this project. I know I could throw it together in a couple of
days using GCC in Cygwin, which is already installed. I have spent more
time than that trying to do it in Perl.

Bob McConnell

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/



     

ZeKtGn 