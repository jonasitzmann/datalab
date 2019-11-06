From speakup-bounces@braille.uwo.ca  Sun Jun 24 23:47:23 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5P3lNL9020557
	for <ktwarwic@speedy.uwaterloo.ca>; Sun, 24 Jun 2007 23:47:23 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2fXo-0001at-00; Sun, 24 Jun 2007 23:47:16 -0400
Received: from linserver.romuald.net.eu.org ([63.228.150.209])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I2fXl-0001aS-00
	for <speakup@braille.uwo.ca>; Sun, 24 Jun 2007 23:47:14 -0400
Received: (qmail 1106 invoked by uid 1000); 24 Jun 2007 20:46:42 -0700
Date: Sun, 24 Jun 2007 20:46:42 -0700
From: Gregory Nowak <greg@romuald.net.eu.org>
To: speakup@braille.uwo.ca
Subject: Re: A computer issue, how should I deal with this? Best solution?
Message-ID: <20070625034642.GD32366@localhost.localdomain>
References: <20070624224026.GA24723@localhost.localdomain>
	<010f01c7b6ca$766f4080$b100a8c0@AveratecLaptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <010f01c7b6ca$766f4080$b100a8c0@AveratecLaptop>
X-PGP-Key: http://www.romuald.net.eu.org/pubkey.asc
User-Agent: Mutt/1.5.13 (2006-08-11)
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

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Hi Glen,

On Sun, Jun 24, 2007 at 08:45:08PM -0500, Glenn Ervin wrote:
> Keep in mind that the file system manages the mechanics of a drive, 

No, the file system doesn't manage the mechanics of the drive. The
mechanics of the drive is actually managed by the drive firmware,
which in turn communicates with the ide/scsi/sata/whatever interface
bios, which in turn communicates with the os, and so on. Let's take an
analog cassette tape for example, which is similar to the hard drive in
that it also stores data magnetically on a medium, and that the medium
moves past a head for reading/writing. To say that the file system
controls the mechanics of a drive is to say that the data on a tape
controls how fast or slow the tape rolls, or how the head comes in
contact with the tape. This is obviously not true, since the tape
rolls at the same rate, regardless of what is recorded on it, and the
head coming in contact with the tape is also not controlled by the
recording, since the head is in contact with the tape when you press
play, and the head loses contact with the tape when you press stop, or
the tape player shuts off automatically.

> thus the 
> file system does have an effect on the success of a drive, as does other 
> factors, like how fragmented your data is on the drive, as if your data is 
> very fragmented, the drive will have to work much harder.  This is just one 
> of the ways that the file system, and manner in which data is stored can 
> effect the life expectancy of a drive.

Yes, it's true that a file system with lots of fragmented files on the
drive could make the drive work more, as it goes through its platters
looking for scattered bits of files. However, both fat32 and ntfs can
have fragmented files, and I haven't heard of anything stating that
ntfs is more prone to fragmentation than fat32, or vise versa. In
fact, back when I was running win98 with the fat32 file system, I
would defragment my c drive once a week. These defragmenting sessions
never completed quickly, lasting 1 hour or more, and the drive wasn't
very full. 

On the other hand, I now have an ntfs drive partition with windows xp
on it, which is also not very full, and I check it for fragmentation
once a week, and so far, windows tells me I don't need to defragment
this drive. Granted, this may be due to the winxp defragmentation
program, vs the win98 defragmentation program, (I don't know if I'd
see the same behavior when defragmenting a fat32 partition under winxp
as with ntfs). The point being, that fragmentation level doesn't
depend on the file system as far as I know. Thus, we can't reasonably
say that a ntfs-formatted drive is more fragmented than a
fat32-formatted drive, (thus shortening the drive's life expectancy), and vise versa.

Greg



- -- 
web site: http://www.romuald.net.eu.org
gpg public key: http://www.romuald.net.eu.org/pubkey.asc
skype: gregn1
(authorization required, add me to your contacts list first)

- --
Free domains: http://www.eu.org/ or mail dns-manager@EU.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGfzqi7s9z/XlyUyARAkCSAJ9LepmtPUtwroidQQvfHxlrqqVqkACg3BlU
ux7t9HvnvWlUlzyDm5191ZU=
=A6de
-----END PGP SIGNATURE-----

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

        

Ve.y1