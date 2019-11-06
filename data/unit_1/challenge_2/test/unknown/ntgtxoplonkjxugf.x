From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jun  6 08:53:01 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l56Cr1hB021622
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 6 Jun 2007 08:53:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 0E341162AE9
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  6 Jun 2007 12:52:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail1.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id B515B162AE9;
	Wed,  6 Jun 2007 12:52:22 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	id 1Hvuzu-0000zC-Bb; Wed, 06 Jun 2007 14:52:22 +0200
Received: by intern.SerNet.DE
	id 1Hvuzt-0005is-M0; Wed, 06 Jun 2007 14:52:21 +0200
Received: by intern.SerNet.DE
	id 1Hvuzt-0005ip-FH; Wed, 06 Jun 2007 14:52:21 +0200
Received: from vlendec by delphin.sernet.de with local (Exim 4.51)
	id 1Hvv3g-0002lz-UN; Wed, 06 Jun 2007 14:56:17 +0200
Date: Wed, 6 Jun 2007 14:56:16 +0200
From: Volker Lendecke <Volker.Lendecke@SerNet.DE>
To: tridge@samba.org
References: <1180928372.24923.238.camel@localhost.localdomain>
	<089D1CE1-5D21-4711-918B-48E2C36C5D1D@samba.org>
	<18021.64361.164851.672386@samba.org>
	<5A8F8CFA-D862-4C8D-8134-A88913D85DED@samba.org>
	<Pine.LNX.4.64.0706052130040.22014@dolby.south.ad.plainjoe.org>
	<18022.10164.545376.678905@samba.org> <46662AD0.50301@samba.org>
	<18022.12332.550130.866023@samba.org> <4666A3D3.5070009@samba.org>
	<18022.43695.79583.817856@samba.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Pk6IbRAofICFmK5e"
Content-Disposition: inline
In-Reply-To: <18022.43695.79583.817856@samba.org>
User-Agent: Mutt/1.5.9i
Message-Id: <E1Hvuzt-0005is-M0@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Cc: "Gerald \(Jerry\) Carter" <jerry@samba.org>,
   samba-technical@lists.samba.org
Subject: Re: getting rid of mkproto.sh from Samba3
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: Volker.Lendecke@SerNet.DE
List-Id: "Discussions on Samba internals. For general questions please
	subscribe to the list samba@samba.org"
	<samba-technical.lists.samba.org>
List-Unsubscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>, 
	<mailto:samba-technical-request@lists.samba.org?subject=unsubscribe>
List-Archive: <http://lists.samba.org/archive/samba-technical>
List-Post: <mailto:samba-technical@lists.samba.org>
List-Help: <mailto:samba-technical-request@lists.samba.org?subject=help>
List-Subscribe: <https://lists.samba.org/mailman/listinfo/samba-technical>,
	<mailto:samba-technical-request@lists.samba.org?subject=subscribe>
Sender: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org
Errors-To: samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org


--Pk6IbRAofICFmK5e
Content-Type: multipart/mixed; boundary="XF85m9dhOBO43t/C"
Content-Disposition: inline


--XF85m9dhOBO43t/C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 06, 2007 at 10:38:07PM +1000, tridge@samba.org wrote:
> nope. If we do it manually we will screw up, just like every other C
> project has screwed it up. Maybe there is a perfect team of
> programmers somewhere in the world, but we are not it. It's not
> philosphy to realise that we are fallible.

I can certainly only speak for me, but for the ctdb protocol
wrapper for S3 I coded up the attached little packet
wrapper. It has helped me immensly to be forced to manually
write down the header file in getting the abstraction in
place.

Volker

--XF85m9dhOBO43t/C
Content-Type: text/x-chdr; charset=us-ascii
Content-Disposition: attachment; filename="packet.h"
Content-Transfer-Encoding: quoted-printable

/*=20
   Unix SMB/CIFS implementation.
   Packet handling
   Copyright (C) Volker Lendecke 2007
  =20
   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.
  =20
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
  =20
   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/

/*
 * A packet context is a wrapper around a bidirectional file descriptor,
 * hiding the handling of individual requests.
 */

struct packet_context;

/*
 * Initialize a packet context. The fd is given to the packet context, mean=
ing
 * that it is automatically closed when the packet context is freed.
 */
struct packet_context *packet_init(TALLOC_CTX *mem_ctx, int fd);

/*
 * Pull data from the fd
 */
NTSTATUS packet_fd_read(struct packet_context *ctx);

/*
 * Handle an incoming packet:
 * Return False if none is available
 * Otherwise return True and store the callback result in *status
 */
BOOL packet_handler(struct packet_context *ctx,
		    BOOL (*full_req)(const struct data_blob *data,
				     size_t *length,
				     void *private_data),
		    NTSTATUS (*callback)(const struct data_blob *data,
					 void *private_data),
		    void *private_data,
		    NTSTATUS *status);

/*
 * How many bytes of outgoing data do we have pending?
 */
size_t packet_outgoing_bytes(struct packet_context *ctx);

/*
 * Push data to the fd
 */
NTSTATUS packet_fd_write(struct packet_context *ctx);

/*
 * Sync flush all outgoing bytes
 */
NTSTATUS packet_flush(struct packet_context *ctx);

/*
 * Send a list of DATA_BLOBs
 *
 * Example:  packet_send(ctx, 2, data_blob_const(&size, sizeof(size)),
 *			 data_blob_const(buf, size));
 */
NTSTATUS packet_send(struct packet_context *ctx, int num_blobs, ...);

/*
 * Get the packet context's file descriptor
 */
int packet_get_fd(struct packet_context *ctx);

--XF85m9dhOBO43t/C--

--Pk6IbRAofICFmK5e
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.2 (GNU/Linux)

iD8DBQFGZq7vpZr5CauZH5wRAqNnAJ9cFRgHCTr8RU3hsu5NuHR13iQWugCgwMXh
m5jnS6Xbg6lrOUP3RmknZzM=
=TJqA
-----END PGP SIGNATURE-----

--Pk6IbRAofICFmK5e--

 

UVaVtDpoaHn3