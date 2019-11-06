From perl6-all-return-82031-ktwarwic=speedy.uwaterloo.ca@perl.org  Sun Jun 17 10:02:13 2007
Return-Path: <perl6-all-return-82031-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5HE2CL9007602
	for <ktwarwic@flax9.uwaterloo.ca>; Sun, 17 Jun 2007 10:02:12 -0400
Received: (qmail 20541 invoked by uid 514); 17 Jun 2007 14:02:10 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 20536 invoked from network); 17 Jun 2007 14:02:09 -0000
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
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <46753E9F.1040700@rblasch.org>
Date: Sun, 17 Jun 2007 16:01:03 +0200
From: Ron Blaschke <ron@rblasch.org>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.4) Gecko/20070604 Thunderbird/2.0.0.4 Mnenhy/0.7.5.666
MIME-Version: 1.0
To: Paul Cochrane <paultcochrane@gmail.com>
CC: parrotbug-followup@parrotcode.org
Subject: Re: [perl #39426] [BUG] Can't build with cygwin.
References: <RT-Ticket-39426@perl.org>	 <DDA1D5C7-FD92-4F62-9B2B-68A6644D94DB@coleda.com>	 <rt-3.6.HEAD-28323-1152264265-204.39426-74-0@perl.org>	 <rt-3.6.HEAD-1668-1181065555-1791.39426-74-0@perl.org>	 <CCED14BA-7653-47A2-B0EB-A0E9DCE42B6E@coleda.com>	 <8e8ee0d40706052330w45e6da86l5e15bac910e52ae2@mail.gmail.com>	 <4666D7A2.4090000@rblasch.org> <8e8ee0d40706160645r60562b53u3adea93be469c232@mail.gmail.com>
In-Reply-To: <8e8ee0d40706160645r60562b53u3adea93be469c232@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-0.7 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS

Paul Cochrane wrote:
>> Paul Cochrane wrote:
>> >> Without the manual setting of PATH before building?
>> >
>> > With the manual PATH setting.  There are several tickets for cygwin
>> > not building in RT; are they all related?  Is there something like a
>> > hints file where the information about the PATH can be set so that
>> > cygwin builds out of the box?
> 
> Cygwin is building for me without the PATH setting as of r19022.  Are
> other people seeing this behaviour as well?  If so, can we get rid of
> the (three or four) "parrot isn't building on cygwin" tickets in RT?

Doesn't work for me either.

Invoking Parrot to generate runtime/parrot/include/config.fpmc --cross
your fingers
./miniparrot.exe config_lib.pasm > runtime/parrot/include/config.fpmc
make: *** [runtime/parrot/include/config.fpmc] Error 53

Do you have an installed Parrot?  Try C< which -a libparrot.dll >.

Ron

       

esUth.i