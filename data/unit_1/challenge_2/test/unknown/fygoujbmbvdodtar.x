From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 16:52:24 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BKqNL9018688
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 16:52:23 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 20B561638F7
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 20:52:23 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=3.8 tests=AWL,BAYES_00,
	RCVD_IN_BLARS_RBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from alnrmhc11.comcast.net (alnrmhc11.comcast.net [206.18.177.51])
	by lists.samba.org (Postfix) with ESMTP id 34ACE162AE4
	for <samba-technical@samba.org>; Mon, 11 Jun 2007 20:51:54 +0000 (GMT)
Received: from [172.31.16.108] (unknown[136.162.38.255])
	by comcast.net (alnrmhc11) with ESMTP
	id <20070611205005b1100jc35oe>; Mon, 11 Jun 2007 20:50:05 +0000
Message-ID: <466DB57C.6050206@ubiqx.mn.org>
Date: Mon, 11 Jun 2007 15:50:04 -0500
From: "Christopher R. Hertel" <crh@ubiqx.mn.org>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Michael B Allen <mba2000@ioplex.com>
References: <f325f5a00706071911p4ca8f089s21a3f67bdc86d03b@mail.gmail.com>	<20070608122024.b39470da.mba2000@ioplex.com>	<f325f5a00706102009p4d35e70aw4d51e9abc198788a@mail.gmail.com>	<20070610233503.e5577200.mba2000@ioplex.com>	<20070611172050.GB1305@samba1>	<466D894B.1000001@ubiqx.mn.org>
	<20070611145241.f17e4b5f.mba2000@ioplex.com>
In-Reply-To: <20070611145241.f17e4b5f.mba2000@ioplex.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Cc: samba-technical@samba.org
Subject: Re: [SMB] NTCreateANDX quesiotn
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org

below...

Michael B Allen wrote:
> Hi Chris,
> 
> It looks to me like the WordCount is too big but Jeremy said 42 was
> right so I'm not sure.
> 
> If you can decipher the output of my 'hexd' tool the packet I'm looking
> at is:
> 
> $ hexd Frame457.bin -r "0x36:Frame457,4:NetBIOS Header,32:SMB \
>    Header,1:WordCount,84:Words,256:Unknown"
> Frame457
> 00000:  00 07 e9 09 b2 cb 00 07 e9 09 ba 5c 08 00 45 00  |...........\..E.|
> 00010:  00 b3 d0 57 40 00 80 06 a2 9a c0 a8 03 80 c0 a8  |...W@...........|
> 00020:  02 82 01 bd 04 25 8b d0 b0 41 87 14 5f 2d 50 18  |.....%...A.._-P.|
> 00030:  fa 88 27 a5 00 00                                |..'...          |
> NetBIOS Header
> 00000:  00 00 00 87                                      |....            |
> SMB Header
> 00000:  ff 53 4d 42 a2 00 00 00 00 98 07 c8 00 00 44 77  |.SMB..........Dw|
> 00010:  28 30 80 f2 a4 3d 00 00 07 08 d0 03 01 10 c0 18  |(0...=..........|
> WordCount
> 00000:  2a                                               |*               |
> Words
> 00000:  ff 00 87 00 03 00 c0 01 00 00 00 80 65 7a c2 f5  |............ez..|
> 00010:  77 c3 01 5e 1b 3e 77 91 6c c6 01 80 65 7a c2 f5  |w..^.>w.l...ez..|
> 00020:  77 c3 01 28 34 0f 62 2d 21 c4 01 20 00 00 00 00  |w..(4.b-!.. ....|
> 00030:  f0 00 00 00 00 00 00 00 e8 00 00 00 00 00 00 00  |................|
> 00040:  00 07 00 00 00 00 00 70 00 2e 00 65 00 78 00 65  |.......p...e.x.e|
> 00050:  00 00 00 00                                      |....            |
> Unknown
> 00000:  00 03 81 d8 bf 03 81 20 ff 01 1f 00 00 00 00 00  |....... ........|
> 00010:  00 00                                            |..              |
> 
> So I see 'p.exe' in the Words and Wireshark doesn't decode those bytes
> so it looks like there's just garbage at the end. Meaning the WordCount
> and the NetBIOS header payload size are incorrect (too large).

So... my next question.  Is the WordCount value 42 (0x2a) correct (for this
packet)?  If so, then the "p.exe" string really is part of the Words.

...but you said earlier that you thought the correct value should be closer
to 34 (0x22).  If that were the case, the bytecount would be zero and
'p.exe' would not be part of the packet at all.

I am curious as to how this packet should be read.

Thanks!

Chris -)-----

-- 
"Implementing CIFS - the Common Internet FileSystem"    ISBN: 013047116X
Samba Team -- http://www.samba.org/    -)-----     Christopher R. Hertel
jCIFS Team -- http://jcifs.samba.org/  -)-----  ubiqx development, uninq
ubiqx Team -- http://www.ubiqx.org/    -)-----          crh@ubiqx.mn.org
OnLineBook -- http://ubiqx.org/cifs/   -)-----             crh@ubiqx.org

   

m==r