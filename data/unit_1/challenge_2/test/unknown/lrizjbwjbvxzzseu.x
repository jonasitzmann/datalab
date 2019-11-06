From speakup-bounces@braille.uwo.ca  Mon Jun  4 08:26:00 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l54CPxhB027722
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 4 Jun 2007 08:26:00 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvBdB-0003Z4-00; Mon, 04 Jun 2007 08:25:53 -0400
Received: from relay4.mail.uk.clara.net ([80.168.70.184])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1HvBdA-0003Yv-00
	for <speakup@braille.uwo.ca>; Mon, 04 Jun 2007 08:25:52 -0400
Received: from adsl-solo-80-168-225-46.claranet.co.uk ([80.168.225.46]
	helo=pcr) by relay4.mail.uk.clara.net with smtp (Exim 4.62)
	(envelope-from <jsd@clara.co.uk>) id 1HvBd8-0004Bd-W2
	for speakup@braille.uwo.ca; Mon, 04 Jun 2007 13:25:51 +0100
MIME-Version: 1.0
From: Jonathan Duddington <jsd@clara.co.uk>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Date: Mon, 04 Jun 2007 13:25:41 +0100
Subject: Re: speech-dispatcher rate and volume settings for espeak 1.25
Message-ID: <4eedab472djsd@clara.co.uk>
In-Reply-To: <1180957010.9837.15.camel@labts16.troja.mff.cuni.cz>
References: <20070603192455.GA24783@linux1> <20070603200959.GA21564@ubuntu>
	<20070603203358.GA25457@linux1>
	<1180957010.9837.15.camel@labts16.troja.mff.cuni.cz>
User-Agent: Pluto/3.04e (RISC-OS/4.02) POPstar/2.02
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: speakup-bounces@braille.uwo.ca
Errors-To: speakup-bounces@braille.uwo.ca
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l54CPxhB027722

On 04 Jun, Hynek Hanke <hanke@brailcom.org> wrote:
>
> I�ll change the default espeak-generic.conf parameters for the new
> eSpeak range in the next version of speechd.

For eSpeak, a volume/amplitude value of 100 is "full volume".

However, eSpeak can use greater values than this to increase the
loudness.  If you increase the value above 100, eSpeak will apply audio
compression to prevent waveform clipping.  So the voice sounds louder,
but there will be some slight distortion, although this isn't too bad
at values below 200.

You can try using the command-line espeak command to show this effect,
and hear which is the best value for you.
   espeak -a200 "hello, this is a test"

The SSML speech markup language defines volume of 100 to be both the
maximum and also the default.  This seems strange.

eSpeak allows volume greater than the default.  A human can speak
(shout) at a greater volume than his default, and that may include some
"distortion".


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

            

1Z:�_>dn_c/ R