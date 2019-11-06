From speakup-bounces@braille.uwo.ca  Sat Jun 23 11:12:02 2007
Return-Path: <speakup-bounces@braille.uwo.ca>
Received: from speech.braille.uwo.ca (speech.braille.uwo.ca [129.100.249.132])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5NFBxL9020293
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 23 Jun 2007 11:12:00 -0400
Received: from localhost ([127.0.0.1] helo=speech.braille.uwo.ca)
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I27HE-0004MF-00; Sat, 23 Jun 2007 11:11:52 -0400
Received: from beaver.sibername.com ([64.15.155.210])
	by speech.braille.uwo.ca with esmtp (Exim 3.36 #1 (Debian))
	id 1I27HD-0004M2-00
	for <speakup@braille.uwo.ca>; Sat, 23 Jun 2007 11:11:51 -0400
Received: from [24.226.66.233] (helo=tenstac)
	by beaver.sibername.com with smtp (Exim 4.66)
	(envelope-from <spie@proficio.ca>) id 1I27Gi-0005Ia-Qu
	for speakup@braille.uwo.ca; Sat, 23 Jun 2007 11:11:20 -0400
Message-ID: <000b01c7b5b1$595fd500$ab00a8c0@tenstac>
From: "Spie Sutherland" <spie@proficio.ca>
To: "Speakup is a screen review system for Linux." <speakup@braille.uwo.ca>
References: <000d01c7b4a3$d1e58f60$6501a8c0@YOUR3ADE1B78A3><001301c7b4d5$0a146150$ab00a8c0@tenstac><156c01c7b512$33eb83e0$b100a8c0@AveratecLaptop><002501c7b540$6b7df620$ab00a8c0@tenstac><161401c7b53f$57e6a950$b100a8c0@AveratecLaptop><00bd01c7b549$ce9834b0$ab00a8c0@tenstac><162e01c7b541$e8985eb0$b100a8c0@AveratecLaptop><00c501c7b54f$65d5c220$ab00a8c0@tenstac>
	<Pine.BSF.4.64.0706230718540.11431@server2.shellworld.net>
Subject: Re: A computer issue, how should I deal with this? Best solution?
Date: Sat, 23 Jun 2007 11:12:51 -0500
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2800.1807
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2800.1896
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - beaver.sibername.com
X-AntiAbuse: Original Domain - braille.uwo.ca
X-AntiAbuse: Originator/Caller UID/GID - [0 0] / [47 12]
X-AntiAbuse: Sender Address Domain - proficio.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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

The way they do it is to allow more than one 2GB partition!
That's the primary and logical drives. From microsoft:

Microsoft MS-DOS versions 4.0 and later allow FDISK to 
partition hard disks up to 4 gigabytes (GB) in size. However, 
the MS-DOS file allocation table (FAT) file system can 
support only 2 GB per partition. Because of this fact, a hard 
disk between 2 and 4 GB in size must be broken down into 
multiple partitions, each of which does not exceed 2 GB. 

http://support.microsoft.com/kb/118335

After you use the Fdisk tool to partition your hard disk, use the 
Format tool to format those partitions with a file system. The file 
system File Allocation Table (FAT) allows the hard disk to 
accept, store, and retrieve data. Windows 95 OEM Service 
Release 2 (OSR2), Windows 98, Windows 98 Second Edition, 
Windows Millennium Edition (Me), and Windows 2000 support 
the FAT16 and FAT32 file systems. When you run the Fdisk tool 
on a hard disk that is larger than 512 megabytes (MB), you are 
prompted to choose one of the following file systems: 

FAT16: This file system has a maximum of 2 gigabytes (GB) for 
each allocated space or drive letter. For example, if you use the 
FAT16 file system and have a 6-GB hard disk, you can have 
three drive letters (C, D, and E), each with 2 GB of allocated 
space.For additional information about the FAT16 file system, 
click the article number below to view the article in the Microsoft
knowledge base:

Maximum Partition Size Using FAT16 File Syetem
http://support.microsoft.com/kb/118335/EN-US/

FAT32: This file system supports drives that are up to 2 terabytes 
in size and stores files on smaller sections of the hard disk than the 
FAT16 file system does. This results in more free space on the hard 
disk. The FAT32 file system does not support drives that are 
smaller than 512 MB.For additional information about the FAT32 
file system, click the article number below to view the article in the 
Microsoft Knowledge Base: 

Description of the FAT32 File System
http://support.microsoft.com/kb/154997/EN-US/

>From the above
Windows 95 OSR2, Windows 98, and Windows Me include an 
updated version of the FAT file system. This updated version is called 
FAT32. The FAT32 file system allows for a default cluster size as 
small as 4 KB, and includes support for EIDE hard disk sizes larger 
than 2 gigabytes (GB).

These microsoft documents are dated 2007, they are not old.
Again, if you use Win95 OSR2 or Win98 to make a boot disk
you're not making DOS. The command.com created by these
is not the same as DOS, it has the new 0B and 0C partition 
type support for FAT32 and VFAT, completely different.

Also, even on WinNT, Win2k, and WinXP, try creating a FAT32 
partition greater than 32GB and then try formatting it:

Logical Disk Manager: Volume size too big.

DOS (FAT16) supports 2GB partitions.
Windows (FAT32) supports 32GB partitions.

There is this theoretical 2TB partition size, but if you can't 
format it, then, well the wind blows.

  -- Spie

.

_______________________________________________
Speakup mailing list
Speakup@braille.uwo.ca
http://speech.braille.uwo.ca/mailman/listinfo/speakup

 

4e06a 