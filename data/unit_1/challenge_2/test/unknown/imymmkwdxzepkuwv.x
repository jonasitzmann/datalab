From cc-devel-bounces@lists.ibiblio.org  Tue Jun 19 15:19:46 2007
Return-Path: <cc-devel-bounces@lists.ibiblio.org>
Received: from metalab.unc.edu (mail.metalab.unc.edu [152.46.7.112])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JJJkL9000472
	for <ktwarwic@speedy.uwaterloo.ca>; Tue, 19 Jun 2007 15:19:46 -0400
Received: from malecky (unknown [152.46.7.119])
	by metalab.unc.edu (Postfix) with ESMTP id 238FE4801A;
	Tue, 19 Jun 2007 15:19:44 -0400 (EDT)
X-Original-To: cc-devel@lists.ibiblio.org
Delivered-To: cc-devel@lists.ibiblio.org
Received: from py-out-1112.google.com (py-out-1112.google.com [64.233.166.179])
	by lists.ibiblio.org (Postfix) with ESMTP id D9DD04C017
	for <cc-devel@lists.ibiblio.org>; Tue, 19 Jun 2007 15:19:42 -0400 (EDT)
Received: by py-out-1112.google.com with SMTP id y77so4218672pyg
	for <cc-devel@lists.ibiblio.org>; Tue, 19 Jun 2007 12:19:42 -0700 (PDT)
Received: by 10.65.159.3 with SMTP id l3mr12182924qbo.1182280782334;
	Tue, 19 Jun 2007 12:19:42 -0700 (PDT)
Received: from ?192.168.0.101? ( [67.160.97.153])
	by mx.google.com with ESMTP id f16sm7539642qba.2007.06.19.12.19.41
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 19 Jun 2007 12:19:42 -0700 (PDT)
Message-ID: <46782C86.6010304@gmail.com>
Date: Tue, 19 Jun 2007 12:20:38 -0700
From: Jason Kivlighn <jkivlighn@gmail.com>
User-Agent: Thunderbird 2.0.0.4 (X11/20070618)
MIME-Version: 1.0
To: "Nathan R. Yergler" <nathan@creativecommons.org>,
   Jon Phillips <jon@creativecommons.org>,
   CC Developer Mailing List <cc-devel@lists.ibiblio.org>
X-Enigmail-Version: 0.95.0
Subject: [cc-devel] =?iso-8859-1?q?Fwd=3A_Bug_447000_--_=5Bid3demux=5D_add?=
 =?iso-8859-1?q?_support_for_reading_license_URL_from_WCOP_tag?=
X-BeenThere: cc-devel@lists.ibiblio.org
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: <cc-devel.lists.ibiblio.org>
List-Unsubscribe: <http://lists.ibiblio.org/mailman/listinfo/cc-devel>,
	<mailto:cc-devel-request@lists.ibiblio.org?subject=unsubscribe>
List-Archive: <http://lists.ibiblio.org/pipermail/cc-devel>
List-Post: <mailto:cc-devel@lists.ibiblio.org>
List-Help: <mailto:cc-devel-request@lists.ibiblio.org?subject=help>
List-Subscribe: <http://lists.ibiblio.org/mailman/listinfo/cc-devel>,
	<mailto:cc-devel-request@lists.ibiblio.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: cc-devel-bounces@lists.ibiblio.org
Errors-To: cc-devel-bounces@lists.ibiblio.org
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l5JJJkL9000472

There's some discussion on reading license info in GStreamer, regarding CC's usage of WCOP in id3 tags.  I was hoping to have the WCOP tag recognized as a license.

http://bugzilla.gnome.org/show_bug.cgi?id=447000

The latest discussion:

*Tim-Philipp M�ller wrote: <http://bugzilla.gnome.org/describeuser.cgi?login=t.i.m%40zen.co.uk>*

You're probably right about the encoding, I read to quickly there.

I'm still a bit undecided about what to do here. I don't think it's technically
correct to map WCOP to GST_TAG_LICENSE, since the link might not link to a
license, and we also map TCOP to GST_TAG_COPYRIGHT, so IMHO we should map WCOP
also to GST_TAG_COPYRIGHT or introduce a new GST_TAG_COPYRIGHT_URI or so.

The W... frames seem rather useless and ill-specified as a whole, I wish
creative-commons had just decided to go for custom frames (TXXX and WXXX). But
since they've adopted the ill-specified ID3 scheme, there isn't much we can do
about that now, I guess.

What we could do (in addition to the above or in stead of the above) is to add
a helper function or two to libgsttag to recognise a set of white-listed
well-known license URIs and then set the GST_TAG_LICENSE* if we find one of
those. Not very elegant though.

Comments?

_______________________________________________
cc-devel mailing list
cc-devel@lists.ibiblio.org
http://lists.ibiblio.org/mailman/listinfo/cc-devel

                

eeLim onknpncXJ