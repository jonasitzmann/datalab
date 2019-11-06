From speakup-bounces@braille.uwo.ca  Thu Jun  7 19:46:55 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l57NkshB008545
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 7 Jun 2007 19:46:54 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HwRgl-0000cF-00; Thu, 07 Jun 2007 19:46:47 -0400
Received: from py-out-1112.google.com ([64.233.166.176])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HwRgj-0000c6-00
	for <speakup@braille.uwo.ca>; Thu, 07 Jun 2007 19:46:45 -0400
Received: by py-out-1112.google.com with SMTP id y77so1168985pyg
	for <speakup@braille.uwo.ca>; Thu, 07 Jun 2007 16:46:45 -0700 (PDT)
Received: by 10.64.184.16 with SMTP id h16mr1983933qbf.1181260005268;
	Thu, 07 Jun 2007 16:46:45 -0700 (PDT)
Received: from ?192.168.0.10? ( [70.162.96.119])
	by mx.google.com with ESMTP id z21sm1380763qbc.2007.06.07.16.46.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 07 Jun 2007 16:46:44 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v752.3)
In-Reply-To: <20070607234126.GJ26670@rednote.net>
References: <20070607164001.GA26668@rednote.net> <20070607191102.GC21667@cm.nu>
	<003501c7a942$20639000$224a5c46@brent827e59cc1>
	<20070607211204.GG26670@rednote.net> <20070607215604.GA29148@cm.nu>
	<ABB3412B-5047-4AA7-9E00-73B238794DD1@gmail.com>
	<20070607234126.GJ26670@rednote.net>
Message-Id: <56150A0D-3FAA-4085-B96A-6C99E0B37965@gmail.com>
From: Jacob Schmude <j.schmude@gmail.com>
Subject: Re: TTSynth Is Here At Last
Date: Thu, 7 Jun 2007 16:46:41 -0700
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
X-Mailer: Apple Mail (2.752.3)
X-BeenThere: speakup@braille.uwo.ca
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: "Speakup is a screen review system for Linux."
	<speakup@braille.uwo.ca>
List-Id: "Speakup is a screen review system for Linux."
	<speakup.braille.uwo.ca>
List-Unsubscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=unsubscribe>
List-Archive: <http://speech.braille.uwo.ca/pipermail/speakup>
List-Post: <mailto:speakup@braille.uwo.ca>
List-Help: <mailto:speakup-request@braille.uwo.ca?subject=help>
List-Subscribe: <http://speech.braille.uwo.ca/mailman/listinfo/speakup>,
	<mailto:speakup-request@braille.uwo.ca?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca

Hi
I don't doubt that the 32-bit code would run under 64-bit Linux with  
the correct emulation libraries, it usually does. However, there are  
other issues to take into account other than whether it runs. The  
main one is that 64-bit and 32-bit libraries often are unable to link  
together. Have you been able to run it with a fully 64-bit gnome and  
gnome-speech installation linked into the 32-bit libraries of TTSynth?



On Jun 7, 2007, at 4:41 PM, Janina Sajka wrote:

> Hi, Jacob:
>
> We asked for a 64-bit compile some time ago but never got one. We have
> successfully run the 32-bit code on 64-bit OS installs, however.
>
> Janina
>
> Jacob Schmude writes:
>> Hi
>> Not related to ALSA, but a library question also. Will TTSynth be
>> available in both 32-bit and 64-bit versions? So far most proprietary
>> synths are 32-bit only (with the exception of Cepstral, as far as I
>> know).
>>
>> On Jun 7, 2007, at 2:56 PM, Shane wrote:
>>
>>> On Thu, Jun 07, 2007 at 05:12:04PM -0400, Janina Sajka wrote:
>>>> We did what we could to support alsa, but support is via alsa's  
>>>> oss.
>>>> Can't do anything about that because it's hardcoded into ibmtts,
>>>> and we
>>>> do not have that source code. However, there were problems running
>>>> with
>>>> alsa which were fixed some time ago. It was one of the early
>>>> issues that
>>>> held us up. There have been lots of issues! <grin>
>>>
>>> Hmm, I would think ALSA support would be trivial.  The
>>> ibmtts can output pcm via callback to the application.
>>> Speakup plugin, say program or whatever which could just
>>> use ALSA for the playback.  No real reason to use ibmtts
>>> for playback as such is there?
>>>
>>> S
>>>
>>> -- 
>>> http://www.cm.nu/~shane/
>>>
>>> _______________________________________________
>>> Speakup mailing list
>>> Speakup@braille.uwo.ca
>>> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>>
>>
>> _______________________________________________
>> Speakup mailing list
>> Speakup@braille.uwo.ca
>> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
> -- 
>
> Janina Sajka,	Phone:	+1.202.595.7777;	sip:janina@a11y.org
> Partner, Capital Accessibility LLC	http://CapitalAccessibility.Com
>
> Marketing the Owasys 22C talking screenless cell phone in the U.S.  
> and Canada
> Learn more at http://ScreenlessPhone.Com
>
> Chair, Open Accessibility	janina@a11y.org	
> Linux Foundation		http://a11y.org
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

          

1tcevs 1vt.D