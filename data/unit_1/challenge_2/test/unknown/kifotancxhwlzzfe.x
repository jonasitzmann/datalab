From sugar-bounces@lists.laptop.org  Sun Jul  1 16:42:02 2007
Return-Path: <sugar-bounces@lists.laptop.org>
Received: from mail.laptop.org (pedal.laptop.org [18.85.2.148])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l61Kg2L9005098
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 1 Jul 2007 16:42:02 -0400
Received: from [127.0.1.1] (localhost [127.0.0.1])
	by mail.laptop.org (Postfix) with ESMTP id C18E958BC7E0;
	Sun,  1 Jul 2007 16:40:55 -0400 (EDT)
Received: from smtp6-g19.free.fr (smtp6-g19.free.fr [212.27.42.36])
	by mail.laptop.org (Postfix) with ESMTP id 6F71F58BC7E0
	for <sugar@lists.laptop.org>; Sun,  1 Jul 2007 16:40:54 -0400 (EDT)
Received: from [192.168.0.1] (home.gcompris.net [82.228.70.121])
	by smtp6-g19.free.fr (Postfix) with ESMTP id DACFDB5BB9;
	Sun,  1 Jul 2007 22:41:55 +0200 (CEST)
From: Bruno Coudoin <bruno.coudoin@free.fr>
To: Marco Pesenti Gritti <mpg@redhat.com>
In-Reply-To: <4687FB00.2010208@redhat.com>
References: <1183291166.5419.62.camel@bruno>  <4687FB00.2010208@redhat.com>
Date: Sun, 01 Jul 2007 22:41:54 +0200
Message-Id: <1183322514.5461.8.camel@bruno>
Mime-Version: 1.0
X-Mailer: Evolution 2.10.1 
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
Content-Type: text/plain; charset="iso-8859-1"
Sender: sugar-bounces@lists.laptop.org
Errors-To: sugar-bounces@lists.laptop.org
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l61Kg2L9005098

Le dimanche 01 juillet 2007 � 21:05 +0200, Marco Pesenti Gritti a
�crit :
> Can you please explain what's exactly the role of the binary? Is each 
> activity runned from the binary? What does it provide?

GCompris can be seen as a game engine, we call it the core, and each
activity rely on it to play. In our case, the gcompris binary contains
the game engine and within each activity directory you can find either a
bunch of C or python files for the activity code.

For python activity, it would make sense to have a GCompris core in
python but for now we don't have it.

-- 
Bruno Coudoin
http://gcompris.net Free educational software for kids
http://toulibre.org Logiciel Libre � Toulouse

_______________________________________________
Sugar mailing list
Sugar@lists.laptop.org
http://lists.laptop.org/listinfo/sugar

            


/J<tx"kp
b8F