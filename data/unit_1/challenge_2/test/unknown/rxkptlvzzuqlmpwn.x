From sugar-bounces@lists.laptop.org  Mon Jul  2 14:08:19 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62I8JL9017238
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 14:08:19 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id A032B58BC7CB;
	Mon,  2 Jul 2007 14:07:10 -0400 (EDT)
Received: from smtphost.cis.strath.ac.uk (smtphost.cis.strath.ac.uk
	[130.159.196.96])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.laptop.org (Postfix) with ESMTP id 2818E58BC7CB
	for <sugar@lists.laptop.org>; Mon,  2 Jul 2007 14:07:08 -0400 (EDT)
Received: from konqi.internal.akademy2007.cis.strath.ac.uk
	(gw-lt.akademy2007.cis.strath.ac.uk [130.159.199.20])
	by smtphost.cis.strath.ac.uk (8.13.4/8.13.4/Debian-3sarge3) with ESMTP
	id l62I7xLe032552; Mon, 2 Jul 2007 19:07:59 +0100
Received: from [172.24.0.229] (unknown [172.24.0.229])
	by konqi.internal.akademy2007.cis.strath.ac.uk (Postfix) with ESMTP id
	EF97C330204; Mon,  2 Jul 2007 20:07:33 +0100 (BST)
From: Bruno Coudoin <bruno.coudoin@free.fr>
To: Bert Freudenberg <bert@freudenbergs.de>
In-Reply-To: <C4673EB3-106A-43D5-B54C-161786663740@freudenbergs.de>
References: <1183291166.5419.62.camel@bruno> <4687FB00.2010208@redhat.com>
	<1183322514.5461.8.camel@bruno> <46890EB4.9070901@redhat.com>
	<C4673EB3-106A-43D5-B54C-161786663740@freudenbergs.de>
Date: Mon, 02 Jul 2007 18:25:58 +0200
Message-Id: <1183393558.6454.27.camel@bruno-laptop>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
X-CIS-MailScanner: Found to be clean
X-CIS-MailScanner-SpamCheck: not spam (whitelisted), SpamAssassin (score=0,
	required 6, autolearn=disabled)
X-CIS-MailScanner-From: bruno.coudoin@free.fr
Cc: GCompris developpers list <gcompris-devel@lists.sourceforge.net>,
   sugar@lists.laptop.org
Subject: Re: [sugar] GComprisXO progress
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
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l62I8JL9017238

Le lundi 02 juillet 2007 à 17:05 +0200, Bert Freudenberg a écrit :> On Jul 2, 2007, at 16:41 , Marco Pesenti Gritti wrote:> > > Bruno Coudoin wrote:> >> Le dimanche 01 juillet 2007 à 21:05 +0200, Marco Pesenti Gritti a> >> écrit :> >>> >>> Can you please explain what's exactly the role of the binary? Is  > >>> each> >>> activity runned from the binary? What does it provide?> >>>> >>> >> GCompris can be seen as a game engine, we call it the core, and each> >> activity rely on it to play. In our case, the gcompris binary  > >> contains> >> the game engine and within each activity directory you can find  > >> either a> >> bunch of C or python files for the activity code.> >>> >> For python activity, it would make sense to have a GCompris core in> >> python but for now we don't have it.> >>> >> > I'd suggest to have a look at sugar-native-factory.c in sugar git. You> > can either add something like that to the binary or use it as is to> > launch the binary.> > For an example of its use, see the Etoys activity in git. If anything  > is unclear, feel free to ask.
Yes, this is unclear. I checked twice and could not even found where thedbus code for the registering and the event management is. Could youplease tell me which files I have to look at and a mini description ofwhat it does. 
Bruno.

_______________________________________________Sugar mailing listSugar@lists.laptop.orghttp://lists.laptop.org/listinfo/sugar

                  

cotb 8s-/aen>