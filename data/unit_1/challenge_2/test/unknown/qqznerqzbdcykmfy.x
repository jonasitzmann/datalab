From speakup-bounces@braille.uwo.ca  Tue Jun  5 20:16:25 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l560GPhB015392
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 20:16:25 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvjCC-0007W7-00; Tue, 05 Jun 2007 20:16:16 -0400
Received: from bay0-omc3-s1.bay0.hotmail.com ([65.54.246.201])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvjCB-0007Uw-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 20:16:15 -0400
Received: from hotmail.com ([65.55.152.27]) by bay0-omc3-s1.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Tue, 5 Jun 2007 17:15:44 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Tue, 5 Jun 2007 17:15:45 -0700
Message-ID: <BAY141-DAV17ED928147715A851592998F270@phx.gbl>
Received: from 71.111.96.206 by BAY141-DAV17.phx.gbl with DAV;
	Wed, 06 Jun 2007 00:15:42 +0000
X-Originating-IP: [71.111.96.206]
X-Originating-Email: [z_kline@hotmail.com]
X-Sender: z_kline@hotmail.com
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
	<Pine.LNX.4.64.0706051837150.17059@dell.bellsouth.net>
Subject: Re: Debian Alsa
Date: Tue, 5 Jun 2007 17:14:51 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-OriginalArrivalTime: 06 Jun 2007 00:15:45.0004 (UTC)
	FILETIME=[D3652AC0:01C7A7CF]
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

Hello,
    I didn't load any of these modules explicitly.  I notice that when I 
modprobe snd, however, all the problems seem to go away: /dev/mixer and 
/dev/snd/ are created, etc.  I don't know why it didn't do this for me...
    As for mplayer, thanks for the tip.  It's very useful.
Yours,
Zack.

----- Original Message ----- 
From: "Adam Myrow" <myrowa@bellsouth.net>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Sent: Tuesday, June 05, 2007 4:45 PM
Subject: Re: Debian Alsa


> On Tue, 5 Jun 2007, Zachary Kline wrote:
>
>>    Is there something fairly simple I'm missing?
>
> Probably.  Are you loading snd_pcm_oss, snd_mixer_oss, and possibly
> snd_seq_oss?  I can't believe that Debian doesn't load Alsa modules
> automatically!  Even Slackware does that.  BTW, to get Mplayer to use Alsa
> by default, add this to your .mplayer/config.
>
> ao=alsa
>
> First, make sure that Mplayer supports Alsa by running the command
> "mplayer -ao help" which will show what audio devices are compiled in.
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
> 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

             

3 X0