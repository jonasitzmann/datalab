From speakup-bounces@braille.uwo.ca  Tue Jun  5 17:31:36 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l55LVahB014037
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 5 Jun 2007 17:31:36 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvgcj-0003j2-00; Tue, 05 Jun 2007 17:31:29 -0400
Received: from bay0-omc3-s30.bay0.hotmail.com ([65.54.246.230])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1Hvgch-0003ij-00
	for <speakup@braille.uwo.ca>; Tue, 05 Jun 2007 17:31:28 -0400
Received: from hotmail.com ([65.55.152.25]) by bay0-omc3-s30.bay0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.2668); 
	Tue, 5 Jun 2007 14:30:57 -0700
Received: from mail pickup service by hotmail.com with Microsoft SMTPSVC;
	Tue, 5 Jun 2007 14:30:56 -0700
Message-ID: <BAY141-DAV15A5EA5B9D3FA4E27F24D68F200@phx.gbl>
Received: from 71.111.96.206 by BAY141-DAV15.phx.gbl with DAV;
	Tue, 05 Jun 2007 21:30:54 +0000
X-Originating-IP: [71.111.96.206]
X-Originating-Email: [z_kline@hotmail.com]
X-Sender: z_kline@hotmail.com
From: "Zachary Kline" <Z_kline@hotmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
Subject: Debian Alsa
Date: Tue, 5 Jun 2007 14:30:07 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3028
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3028
X-OriginalArrivalTime: 05 Jun 2007 21:30:56.0984 (UTC)
	FILETIME=[CDAD0D80:01C7A7B8]
X-Content-Filtered-By: Mailman/MimeDel 2.1.9
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

Hiya,
    While I was finally able to get my Dectalk Express to work properly and provide hardware synthesis for Speakup, I've noticed that Alsa seems to enjoy being a real pain to configure on Debian.  For some reason, when I've booted, I've noticed that /dev/mixer, among other things, isn't being created.  I would think that Udev could do that?  Not to mention /dev/dsp and all...
    Is there something fairly simple I'm missing?
Thanks,
Zack.
_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

               

acuff -+d;ib