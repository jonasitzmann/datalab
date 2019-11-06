From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Mon Jun 11 14:53:27 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BIrQL9017571
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 14:53:26 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id C69EF1638CD
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 18:53:25 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=3.8 tests=AWL, BAYES_00, FORGED_RCVD_HELO,
	RCVD_IN_BLARS_RBL,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@samba.org
Delivered-To: samba-technical@samba.org
Received: from www.ioplex.com (www.ioplex.com [66.220.1.142])
	by lists.samba.org (Postfix) with ESMTP id C8A7516381B
	for <samba-technical@samba.org>; Mon, 11 Jun 2007 18:52:43 +0000 (GMT)
Received: from quark.foo.net (c-69-142-196-170.hsd1.nj.comcast.net
	[69.142.196.170])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.ioplex.com (Postfix) with ESMTP id B2FA942B6F;
	Mon, 11 Jun 2007 14:52:42 -0400 (EDT)
Date: Mon, 11 Jun 2007 14:52:41 -0400
From: Michael B Allen <mba2000@ioplex.com>
To: "Christopher R. Hertel" <crh@ubiqx.mn.org>
Message-Id: <20070611145241.f17e4b5f.mba2000@ioplex.com>
In-Reply-To: <466D894B.1000001@ubiqx.mn.org>
References: <f325f5a00706071911p4ca8f089s21a3f67bdc86d03b@mail.gmail.com>
	<20070608122024.b39470da.mba2000@ioplex.com>
	<f325f5a00706102009p4d35e70aw4d51e9abc198788a@mail.gmail.com>
	<20070610233503.e5577200.mba2000@ioplex.com>
	<20070611172050.GB1305@samba1> <466D894B.1000001@ubiqx.mn.org>
Organization: IOPLEX Software
X-Mailer: Sylpheed 2.4.0 (GTK+ 2.10.4; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi Chris,

It looks to me like the WordCount is too big but Jeremy said 42 was
right so I'm not sure.

If you can decipher the output of my 'hexd' tool the packet I'm looking
at is:

$ hexd Frame457.bin -r "0x36:Frame457,4:NetBIOS Header,32:SMB \
   Header,1:WordCount,84:Words,256:Unknown"
Frame457
00000:  00 07 e9 09 b2 cb 00 07 e9 09 ba 5c 08 00 45 00  |...........\..E.|
00010:  00 b3 d0 57 40 00 80 06 a2 9a c0 a8 03 80 c0 a8  |...W@...........|
00020:  02 82 01 bd 04 25 8b d0 b0 41 87 14 5f 2d 50 18  |.....%...A.._-P.|
00030:  fa 88 27 a5 00 00                                |..'...          |
NetBIOS Header
00000:  00 00 00 87                                      |....            |
SMB Header
00000:  ff 53 4d 42 a2 00 00 00 00 98 07 c8 00 00 44 77  |.SMB..........Dw|
00010:  28 30 80 f2 a4 3d 00 00 07 08 d0 03 01 10 c0 18  |(0...=..........|
WordCount
00000:  2a                                               |*               |
Words
00000:  ff 00 87 00 03 00 c0 01 00 00 00 80 65 7a c2 f5  |............ez..|
00010:  77 c3 01 5e 1b 3e 77 91 6c c6 01 80 65 7a c2 f5  |w..^.>w.l...ez..|
00020:  77 c3 01 28 34 0f 62 2d 21 c4 01 20 00 00 00 00  |w..(4.b-!.. ....|
00030:  f0 00 00 00 00 00 00 00 e8 00 00 00 00 00 00 00  |................|
00040:  00 07 00 00 00 00 00 70 00 2e 00 65 00 78 00 65  |.......p...e.x.e|
00050:  00 00 00 00                                      |....            |
Unknown
00000:  00 03 81 d8 bf 03 81 20 ff 01 1f 00 00 00 00 00  |....... ........|
00010:  00 00                                            |..              |

So I see 'p.exe' in the Words and Wireshark doesn't decode those bytes
so it looks like there's just garbage at the end. Meaning the WordCount
and the NetBIOS header payload size are incorrect (too large).

Mike

On Mon, 11 Jun 2007 12:41:31 -0500
"Christopher R. Hertel" <crh@ubiqx.mn.org> wrote:

> Jeremy, Mike,
> 
> If you can provide some additional details, I'll write up a note and add it
> to the online version of my book.  Is it just that the numbers are not
> correct, or is there some other data being tacked on somewhere else?
> 
> The term "extended response" falls within the range of Jeremy's sense of humor.
> 
> Chris -)-----
> 
> Jeremy Allison wrote:
> > On Sun, Jun 10, 2007 at 11:35:03PM -0400, Michael B Allen wrote:
> >> Ahh, I see what you're talking about. In the response. The WordCount is
> >> way too large. It should be more like 34 and not 42. Funny, I've written
> >> multiple CIFS clients and never noticed.
> > 
> > It's the "extended response" that's undocumented in any of the current
> > CIFS specs (at least any public ones). The latest code in SAMBA_3_0_25
> > does this right now.
> > 
> > Jeremy.
> 
> -- 
> "Implementing CIFS - the Common Internet FileSystem"    ISBN: 013047116X
> Samba Team -- http://www.samba.org/    -)-----     Christopher R. Hertel
> jCIFS Team -- http://jcifs.samba.org/  -)-----  ubiqx development, uninq
> ubiqx Team -- http://www.ubiqx.org/    -)-----          crh@ubiqx.mn.org
> OnLineBook -- http://ubiqx.org/cifs/   -)-----             crh@ubiqx.org
> 


-- 
Michael B Allen
PHP Active Directory Kerberos SSO
http://www.ioplex.com/

                   


_a 4kp& caf