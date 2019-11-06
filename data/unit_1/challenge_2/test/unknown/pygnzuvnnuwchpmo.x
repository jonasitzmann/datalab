From cc-devel-bounces@lists.ibiblio.org  Thu Jun 14 19:28:13 2007
Return-Path: <cc-devel-bounces@lists.ibiblio.org>
Received: from metalab.unc.edu (mail.metalab.unc.edu [152.46.7.112])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5ENSDL9027603
	for <ktwarwic@speedy.uwaterloo.ca>; Thu, 14 Jun 2007 19:28:13 -0400
Received: from malecky (unknown [152.46.7.119])
	by metalab.unc.edu (Postfix) with ESMTP id 1F40448010;
	Thu, 14 Jun 2007 19:28:12 -0400 (EDT)
X-Original-To: cc-devel@lists.ibiblio.org
Delivered-To: cc-devel@lists.ibiblio.org
Received: from wa-out-1112.google.com (wa-out-1112.google.com [209.85.146.182])
	by lists.ibiblio.org (Postfix) with ESMTP id 748904C013
	for <cc-devel@lists.ibiblio.org>; Thu, 14 Jun 2007 19:28:09 -0400 (EDT)
Received: by wa-out-1112.google.com with SMTP id k34so876017wah
	for <cc-devel@lists.ibiblio.org>; Thu, 14 Jun 2007 16:28:08 -0700 (PDT)
Received: by 10.114.103.1 with SMTP id a1mr2362046wac.1181863688137;
	Thu, 14 Jun 2007 16:28:08 -0700 (PDT)
Received: from ?192.168.0.101? ( [67.160.97.153])
	by mx.google.com with ESMTP id v35sm5272945wah.2007.06.14.16.28.07
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Thu, 14 Jun 2007 16:28:07 -0700 (PDT)
Message-ID: <4671CF3F.2070406@gmail.com>
Date: Thu, 14 Jun 2007 16:29:03 -0700
From: Jason Kivlighn <jkivlighn@gmail.com>
User-Agent: Thunderbird 2.0.0.0 (X11/20070419)
MIME-Version: 1.0
To: Hubert Figuiere <hub@figuiere.net>
References: <4671C9F5.3030006@gmail.com>
In-Reply-To: <4671C9F5.3030006@gmail.com>
X-Enigmail-Version: 0.95.0
Cc: CC Developer Mailing List <cc-devel@lists.ibiblio.org>
Subject: Re: [cc-devel] XMP Embedding in TIFF, Bug?
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

Also, Adobe themselves specify this field to be of type BYTE:

www.*adobe*.com/devnet/*xmp*/pdfs/*xmp*_*specification*.pdf (page 92)

-Jason
> Hi Hubert,
>
> I seem to have come across a bug in Adobe's code for embedding XMP in
> the TIFF format.  The spec[1] says that the XMLPacket tag has type BYTE,
> but Adobe assigns a type of UNDEFINED.  libtiff complains and is unable
> to read the XMP when given the wrong type.
>
> In TIFF_Handler.cpp, changing
>
> this->tiffMgr.SetTag ( kTIFF_PrimaryIFD, kTIFF_XMP, kTIFF_UndefinedType,
> this->xmpPacket.size(), this->xmpPacket.c_str() );
>
> to
>
> this->tiffMgr.SetTag ( kTIFF_PrimaryIFD, kTIFF_XMP, kTIFF_ByteType,
> this->xmpPacket.size(), this->xmpPacket.c_str() );
>
> solves the problems I'm having.
>
> This should be passed on to Adobe.  Do you know who to contact to get
> this fixed?
>
> Cheers,
> Jason
>
> [1] http://www.awaresystems.be/imaging/tiff/tifftags/xmp.html
>
>
>   

_______________________________________________
cc-devel mailing list
cc-devel@lists.ibiblio.org
http://lists.ibiblio.org/mailman/listinfo/cc-devel



>inPehDtB=peih