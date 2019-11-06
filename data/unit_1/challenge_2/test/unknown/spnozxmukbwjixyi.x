From cc-devel-bounces@lists.ibiblio.org  Mon Jul  2 13:19:52 2007
Return-Path: <cc-devel-bounces@lists.ibiblio.org>
Received: from metalab.unc.edu (mail.metalab.unc.edu [152.46.7.112])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l62HJpL9016659
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 2 Jul 2007 13:19:51 -0400
Received: from malecky (unknown [152.46.7.119])
	by metalab.unc.edu (Postfix) with ESMTP id A7A1648176;
	Mon,  2 Jul 2007 13:19:46 -0400 (EDT)
X-Original-To: cc-devel@lists.ibiblio.org
Delivered-To: cc-devel@lists.ibiblio.org
Received: from darwin.ctyme.com (smtp8.junkemailfilter.com [69.50.231.8])
	by lists.ibiblio.org (Postfix) with ESMTP id 67A7F4C017
	for <cc-devel@lists.ibiblio.org>; Mon,  2 Jul 2007 13:19:45 -0400 (EDT)
Received: from adsl-69-232-223-136.dsl.pltn13.pacbell.net ([69.232.223.136]
	helo=[10.0.2.102])
	by darwin.ctyme.com with esmtpsa (SSLv3:RC4-MD5:128) (Exim 4.67)
	id 1I5PYu-0003WE-Iu on interface=69.50.231.8;
	Mon, 02 Jul 2007 10:19:44 -0700
From: Jon Phillips <jon@creativecommons.org>
To: Snic Huang <jmsogytr@gmail.com>, Roan Horning <roan@horning.us>,
   Victor Stone <fourstones.net@gmail.com>
In-Reply-To: <271c4d800706300643q10527411ybc839c1edee9b39c@mail.gmail.com>
References: <271c4d800706300643q10527411ybc839c1edee9b39c@mail.gmail.com>
Date: Mon, 02 Jul 2007 10:19:39 -0700
Message-Id: <1183396779.11269.161.camel@localhost.localdomain>
Mime-Version: 1.0
X-Mailer: Evolution 2.8.3 
X-Spamfilter-host: darwin.ctyme.com - http://www.junkemailfilter.com
Cc: "cc-devel@lists.ibiblio.org" <cc-devel@lists.ibiblio.org>,
   cctools-cchost@lists.sourceforge.net
Subject: Re: [cc-devel] [Cctools-cchost] About Creative Commons Metadata
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: cc-devel-bounces@lists.ibiblio.org
Errors-To: cc-devel-bounces@lists.ibiblio.org

On Sat, 2007-06-30 at 21:43 +0800, Snic Huang wrote:
> Hi Jon! Does only Creative Commons Metadata can be embedded in mp3
> file in cchost? 

I haven't looked at this code closely, but ccHost uses getid3 writer
which writes specific metadata into associated file formats. Victor, can
you enlighten us a bit more please on which file formats and what is
written?

Roan, can you also let us know what you looked at doing with this? Roan
worked on adding SVG write support...he added SVG read support.

NOTE: The getid3 library should be renamed because it does way more than
just getting id3 metadata out of files...it also reads and writes
different metadata from different file types.

> At present, Only HTML, RSS, MP3, Ogg, PDF, image formats, SMIL had
> supported Creative Commons Metadat.
> (http://wiki.creativecommons.org/UsingMarkup)
> Are there other file formats?

Yes, this list is not complete by any means. Yes, we would love to
support the best approaches outlined on the Creative Commons wiki for
metadata embedding. The current recommendation is to use Adobe's XMP
(http://wiki.creativecommons.org/XMP) for every file type, with the
major exception being mp3, of which, id3 is an established hacky
standard.

> I went to embed Creative Commons Metadat in supported files in cchost,
> how can I do that? Or using rdf had enough?
> What do you think?

What file types do you want to embed cc metadata into. Also, you might
want to have this discussion as well on cc-devel, which I will cc...

Jon

> Thanks,
> Snic
> -------------------------------------------------------------------------
> This SF.net email is sponsored by DB2 Express
> Download DB2 Express C - the FREE version of DB2 express and take
> control of your XML. No limits. Just data. Click to get it now.
> http://sourceforge.net/powerbar/db2/
> _______________________________________________ Cctools-cchost mailing list Cctools-cchost@lists.sourceforge.net https://lists.sourceforge.net/lists/listinfo/cctools-cchost
-- 
Jon Phillips
jon@creativecommons.org
cell: 510.499.0894

Community/Business Developer
Creative Commons
www.creativecommons.org

_______________________________________________
cc-devel mailing list
cc-devel@lists.ibiblio.org
http://lists.ibiblio.org/mailman/listinfo/cc-devel

                  

9WDPZeyc5g