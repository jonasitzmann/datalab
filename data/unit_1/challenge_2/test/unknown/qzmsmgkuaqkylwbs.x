From sugar-bounces@lists.laptop.org  Mon Jul  2 12:00:26 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62G0QL9015703
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 12:00:26 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id 1DADF58BC839;
	Mon,  2 Jul 2007 11:59:10 -0400 (EDT)
Received: by mail.laptop.org (Postfix)
	id 6C36F58BC827; Mon,  2 Jul 2007 11:59:08 -0400 (EDT)
Delivered-To: sugar@laptop.org
Received: from spam.laptop.org (spam.laptop.org [18.85.46.23])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 6924E58BC81C
	for <sugar@laptop.org>; Mon,  2 Jul 2007 11:59:08 -0400 (EDT)
X-ASG-Debug-ID: 1183392011-0c0e00060000-3Xmyjt
X-Barracuda-URL: http://18.85.46.23:8000/cgi-bin/mark.cgi
X-Barracuda-Connect: node1.t-mail.cz[62.141.0.166]
X-Barracuda-Start-Time: 1183392011
Received: from node1.t-mail.cz (node1.t-mail.cz [62.141.0.166])
	by spam.laptop.org (Spam Firewall) with ESMTP
	id B52854CF8; Mon,  2 Jul 2007 12:00:11 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by bl310.tmo.cz (Postfix) with ESMTP id 44AEE9B;
	Mon,  2 Jul 2007 18:00:08 +0200 (CEST)
X-Spam-Score: -2.599
X-Spam-Level: 
X-Spam-Status: No, score=-2.599 tagged_above=-999 required=8
	tests=[BAYES_00=-2.599]
Received: from node1.t-mail.cz ([127.0.0.1])
	by localhost (bl310.tmo.cz [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EUFLCKW+6HIq; Mon,  2 Jul 2007 18:00:03 +0200 (CEST)
Received: from [192.168.1.101] (89-24-78-61.4ginternet.cz [89.24.78.61])
	by bl310.tmo.cz (Postfix) with ESMTP id 38E3DA8;
	Mon,  2 Jul 2007 18:00:02 +0200 (CEST)
X-ASG-Orig-Subj: Re: [sugar] TamTam for Trial-2
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
To: Jean =?ISO-8859-1?Q?Pich=E9?= <jean@piche.com>
In-Reply-To: <6707E508-D7C6-4B05-917E-1B11477DCA90@piche.com>
References: <9073bf100706290823o79cc4a60k979633191600af98@mail.gmail.com>
	<6707E508-D7C6-4B05-917E-1B11477DCA90@piche.com>
Date: Mon, 02 Jul 2007 18:02:38 +0200
Message-Id: <1183392158.5961.5.camel@tomeu-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Virus-Scanned: by Barracuda Spam Firewall at laptop.org
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No, SCORE=-2.02 using global scores of TAG_LEVEL=3.5
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=5.5 tests=
X-Barracuda-Spam-Report: Code version 3.1, rules version 3.1.21601
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: tamtam <tamtam@studioimaginaire.com>, sugar@laptop.org,
   "OLPC Developer's List" <devel@laptop.org>
Subject: Re: [sugar] TamTam for Trial-2
X-BeenThere: sugar@lists.laptop.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Discussion of OLPC design,
	desktop platform and user experience" <sugar.lists.laptop.org>
List-Unsubscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=unsubscribe>
List-Archive: <http://lists.laptop.org/pipermail/sugar>
List-Post: <mailto:sugar@lists.laptop.org>
List-Help: <mailto:sugar-request@lists.laptop.org?subject=help>
List-Subscribe: <http://lists.laptop.org/listinfo/sugar>,
	<mailto:sugar-request@lists.laptop.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l62G0QL9015703

Hi,
On Mon, 2007-07-02 at 11:10 -0400, Jean Piché wrote:> The following features will depend on Mesh and Journal stability/ > usability over the next few days:> > 	Network synchronisation for TamTamJam (many machines can improvise/ > play together on a shared pulse)> 	Some Journal functionality to save and load TamTam tunes
Regarding the journal support, if you can write to and read from a fileon the fs (from python), then adding journal support will be trivial.
Thanks,
Tomeu
_______________________________________________Sugar mailing listSugar@lists.laptop.orghttp://lists.laptop.org/listinfo/sugar

  

T:. vI0tnYd=i 8