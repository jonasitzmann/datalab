From bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org  Mon Jun 11 09:43:03 2007
Return-Path: <bounce-debian-mirrors=ktwarwic=speedy.uwaterloo.ca@lists.debian.org>
Received: from murphy.debian.org (murphy.debian.org [70.103.162.31])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5BDh2L9014565
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 11 Jun 2007 09:43:02 -0400
Received: from localhost (localhost [127.0.0.1])
	by murphy.debian.org (Postfix) with QMQP
	id 5F8B02EDF3; Mon, 11 Jun 2007 13:42:30 +0000 (UTC)
Old-Return-Path: <carlos@fisica.ufpr.br>
X-Spam-Checker-Version: SpamAssassin 3.1.4 (2006-07-26) on murphy.debian.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=4.0 tests=AWL,BAYES_00,IMPRONONCABLE_1 
	autolearn=no version=3.1.4
X-Original-To: debian-mirrors@lists.debian.org
Received: from fisica.ufpr.br (fisica.ufpr.br [200.17.209.129])
	by murphy.debian.org (Postfix) with ESMTP id C88DC2ED87
	for <debian-mirrors@lists.debian.org>; Mon, 11 Jun 2007 13:25:41 +0000 (UTC)
Received: by fisica.ufpr.br (Postfix)
	id 7A096305AA6; Mon, 11 Jun 2007 10:26:05 -0300 (BRT)
Message-ID: <18029.19817.189462.332338@fisica.ufpr.br>
Date: Mon, 11 Jun 2007 10:26:01 -0300
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
To: Simon Paillard <simon.paillard@resel.enst-bretagne.fr>
Cc: debian-mirrors@lists.debian.org, Philip Hands <phil@hands.com>
Subject: Re: mirror.inter.net.il and its upstream ftp.uk.d.o (was: Changes in the Israeli mirrors for Debian)
In-Reply-To: <20070610202246.GC7624@dedibox>
References: <4667353D.8020505@debian.org>
	<20070610162517.GA7624@dedibox>
	<466C2D49.6020904@debian.org>
	<6F2DB4B43B9EAD4FA4659FA701F45ADB0E2302@IGMAIL.InetGold>
	<20070610202246.GC7624@dedibox>
X-Mailer: VM 7.19 under Emacs 21.4.1
From: carlos@fisica.ufpr.br (Carlos Carvalho)
X-Rc-Spam: 2007-05-24_01
X-Rc-Virus: 2006-10-25_01
X-Rc-Spam: 2007-05-24_01
Resent-Message-ID: <niyFJD.A.VVF.GFVbGB@murphy>
Resent-From: debian-mirrors@lists.debian.org
X-Mailing-List: <debian-mirrors@lists.debian.org> 
X-Loop: debian-mirrors@lists.debian.org
List-Id: <debian-mirrors.lists.debian.org>
List-Post: <mailto:debian-mirrors@lists.debian.org>
List-Help: <mailto:debian-mirrors-request@lists.debian.org?subject=help>
List-Subscribe: <mailto:debian-mirrors-request@lists.debian.org?subject=subscribe>
List-Unsubscribe: <mailto:debian-mirrors-request@lists.debian.org?subject=unsubscribe>
Precedence: list
Resent-Sender: debian-mirrors-request@lists.debian.org
Resent-Date: Mon, 11 Jun 2007 13:42:30 +0000 (UTC)

Simon Paillard (simon.paillard@resel.enst-bretagne.fr) wrote on 10 June 2007 22:22:
 >> 2. The non-US directories were synced from
 >> ftp://ftp.uk.debian.org/debian/, using the official anonftpsync
 >> script.
 >
 >Ok, so that is a issue specific to ftp.uk.d.o, whose admin is in CC.
 >
 >Phil, could you remove these extra non-us and non-US directories that
 >are present under http://ftp.uk.debian.org/debian/ ?

Simon Paillard (simon.paillard@resel.enst-bretagne.fr) wrote on 10 June 2007 20:25:
 >http://www.debian.org/mirrors/ftpmirror must be read, and anonftpsync
 >should be used.

It seems you caught another one not using anonftpsync :-)
Perhaps ftp.uk could also fix the trace file name.

We had the trace file name problem too. In fact, it's rather frequent.
I've included a config variable in our anonftpsync for this. Perhaps
it could also be included in the official version?


-- 
To UNSUBSCRIBE, email to debian-mirrors-REQUEST@lists.debian.org
with a subject of "unsubscribe". Trouble? Contact listmaster@lists.debian.org

             

trT..bt2nJ tp