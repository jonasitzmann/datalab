From speakup-bounces@braille.uwo.ca  Mon Jun 18 13:49:31 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5IHnUL9020205
	for <ktwarwic@speedy.uwaterloo.ca>; Mon, 18 Jun 2007 13:49:30 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0LLz-0007Kz-00; Mon, 18 Jun 2007 13:49:27 -0400
Received: from mail2.fone.net ([206.168.68.165])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I0LLw-0007JR-00
	for <speakup@braille.uwo.ca>; Mon, 18 Jun 2007 13:49:24 -0400
Received: from GRANDMA (ip-206-123-194-16.static.fasttrackcomm.net
	[206.123.194.16])
	by mail2.fone.net (8.13.6+Sun/8.12.10) with SMTP id l5IFWP14002886
	for <speakup@braille.uwo.ca>; Mon, 18 Jun 2007 09:32:26 -0600 (MDT)
Message-ID: <010401c7b1bd$df4ba380$6401a8c0@GRANDMA>
From: "Littlefield, Tyler" <compgeek13@gmail.com>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <Pine.BSF.4.64.0706161719420.14120@freire2.furyyjbeyq.arg><000b01c7b068$f52e0630$ab00a8c0@tenstac><001201c7b071$3f80ff00$6401a8c0@GRANDMA><00a501c7b09d$51aaca90$ab00a8c0@tenstac>
	<009701c7b0fb$4d3fb890$9501a8c0@yellobow>
Subject: Re: switching from amd to p3
Date: Mon, 18 Jun 2007 09:32:19 -0600
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.3138
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.3138
X-Antivirus: avast! (VPS 000750-1, 06/18/2007), Outbound message
X-Antivirus-Status: Clean
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

got it. thanks for the help. :)
Thanks,
~~TheCreator~~
[My programs don't have bugs; just randomly added features]
msn:
compgeek13@gmail.com
aim: st8amnd2005
skype: st8amnd127
vertigo head coder
web: tysdomain.com
----- Original Message ----- 
From: "Scott Berry" <sberry@northlc.com>
To: "'Speakup is a screen review system for Linux.'" 
<speakup@braille.uwo.ca>
Sent: Sunday, June 17, 2007 10:19 AM
Subject: RE: switching from amd to p3


> Just one more thing to add Tyler.  Some of the more modern Bios also can 
> use
> f2 to enter the bios setup.
>
> Scott
>
>
> -----Original Message-----
> From: speakup-bounces@braille.uwo.ca 
> [mailto:speakup-bounces@braille.uwo.ca]
> On Behalf Of Spie Sutherland
> Sent: Sunday, June 17, 2007 12:07 AM
> To: Speakup is a screen review system for Linux.
> Subject: Re: switching from amd to p3
>
> Tyler, I believe disk boot failure is a BIOS error, not a linux error.
> It can happen if there is no drive, or the drive is not bootable, it
> could also happen if the BIOS boot options are not set properly,
> usually listed as boot priority, you usually want something like
> floppy, cdrom, ide0, ide1 boot priority. If the cables all seem
> okay I the next thing to check would be if the BIOS is seeing
> the drive. On modern BIOS the drives will usually be set to
> auto but if you press F8 it will detect the drives and show you
> them in BIOS (may be a different function key for a different
> BIOS). Confirm that BIOS is seeing the drive, and showing it
> as master, then check the boot priority settings in BIOS to
> make sure IDE0 is in the boot priority list. There are also
> settings in BIOS for the hard drive DMA mode, the lowest
> mode being PIO0, which is original IDE. If still not booting
> try setting that the lowest possible mode. The highest mode
> is probably PIO5 or Ultra DMA, or UDMA 133.
>
> At this point, after checking BIOS, if it sees the drive as
> master, IDE0 is in the boot list, the DMA mode is lowest
> PIO0, and it still won't boot, I would suggest putting it
> back in the original machine and making sure it boots.
>
> If it doesn't boot there I would check the partition table
> using fdisk or cfdisk or similar, check the bootable flag and
> make sure a partition is marked as bootable, and it's the
> correct partition, the one with grub installed. You can do
> this by booting from a linux CD and running fdisk -l or
> cfdisk.
>
> If BIOS on target system is seeing the drive as master and
> the drive will boot in original machine, then I'd say its time
> to try a different drive in target motherboard to make sure
> the IDE controller is working okay.
>
>  -- Spie
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup
>
>
>
> -- 
> No virus found in this incoming message.
> Checked by AVG Free Edition.
> Version: 7.5.472 / Virus Database: 269.9.0/852 - Release Date: 6/17/2007
> 8:23 AM
>
>
>
> _______________________________________________
> Speakup mailing list
> Speakup@braille.uwo.ca
> http://speech.braille.uwo.ca/mailman/listinfo/speakup 


_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

     

 F1<