From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Wed Jul  4 05:51:12 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l649pBL9008991
	for <ktwarwic@speedy.uwaterloo.ca>; Wed, 4 Jul 2007 05:51:11 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id AF8B6163848
	for <ktwarwic@speedy.uwaterloo.ca>; Wed,  4 Jul 2007 09:51:06 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: *
X-Spam-Status: No, score=1.8 required=3.8 tests=BAYES_20,RCVD_IN_DSBL,
	SPF_NEUTRAL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
X-Greylist: delayed 2970 seconds by postgrey-1.24 at dp.samba.org;
	Wed, 04 Jul 2007 09:50:29 GMT
Received: from mxout006.mail.hostpoint.ch (mxout006.mail.hostpoint.ch
	[217.26.49.185])
	by lists.samba.org (Postfix) with ESMTP id D9F75162BCC
	for <samba-technical@lists.samba.org>;
	Wed,  4 Jul 2007 09:50:29 +0000 (GMT)
Received: from [10.0.2.10] (helo=asmtp001.mail.hostpoint.ch)
	by mxout006.mail.hostpoint.ch with esmtp (Exim 4.66 (FreeBSD))
	(envelope-from <dev-zero@gentoo.org>) id 1I60jK-000I9n-Jn
	for samba-technical@lists.samba.org; Wed, 04 Jul 2007 11:00:58 +0200
Received: from [80.238.235.157] (helo=[192.168.0.5])
	by asmtp001.mail.hostpoint.ch with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.63 (FreeBSD)) (envelope-from <dev-zero@gentoo.org>)
	id 1I60jK-000Kux-B9
	for samba-technical@lists.samba.org; Wed, 04 Jul 2007 11:00:58 +0200
X-Authenticated-Sender-Id: tm@dev-zero.ch
Message-ID: <468B61C4.4070901@gentoo.org>
Date: Wed, 04 Jul 2007 11:00:52 +0200
From: =?ISO-8859-15?Q?Tiziano_M=FCller?= <dev-zero@gentoo.org>
Organization: Gentoo
User-Agent: Thunderbird 2.0.0.4 (X11/20070618)
MIME-Version: 1.0
To: samba-technical@lists.samba.org
X-Enigmail-Version: 0.95.1
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="------------enig1EDF58ADDEE7F8B73AEF9E86"
Subject: Install additional header-files to allow separate plugin builds
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
Reply-To: dev-zero@gentoo.org
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

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig1EDF58ADDEE7F8B73AEF9E86
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: quoted-printable

Hi everyone

I just wondered recently why all available plugins (samba-vscan, pdbsql)
need the complete samba source tree to build. So I started to experiment
and with the tree below, it's possible to successfully build the
mentioned plugins/backends (but didn't test them yet :-)

Now, are there any plans to install the relevant header-files in the
future? Even if the API is still unstable?

Thanks in advance,
Cheers

Tiziano

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

`-- include
    |-- librpc
    |   |-- gen_ndr
    |   |   |-- cli_wkssvc.h
    |   |   |-- ndr_notify.h
    |   |   |-- ndr_srvsvc.h
    |   |   |-- ndr_wkssvc.h
    |   |   |-- notify.h
    |   |   |-- security.h
    |   |   |-- srv_wkssvc.h
    |   |   |-- srvsvc.h
    |   |   |-- svcctl.h
    |   |   `-- wkssvc.h
    |   `-- ndr
    |       |-- libndr.h
    |       |-- misc.h
    |       |-- ndr_sec.h
    |       `-- security.h
    |-- nsswitch
    |   |-- pam_winbind.h
    |   |-- winbind_client.h
    |   |-- winbind_nss.h
    |   |-- winbind_nss_config.h
    |   |-- winbind_nss_hpux.h
    |   |-- winbind_nss_irix.h
    |   |-- winbind_nss_linux.h
    |   |-- winbind_nss_netbsd.h
    |   |-- winbind_nss_solaris.h
    |   |-- winbindd.h
    |   |-- winbindd_nss.h
    |   `-- winbindd_proto.h
    |-- replace
    |   |-- replace.h
    |   `-- system
    |       |-- README
    |       |-- aio.h
    |       |-- capability.h
    |       |-- config.m4
    |       |-- dir.h
    |       |-- filesys.h
    |       |-- glob.h
    |       |-- iconv.h
    |       |-- kerberos.h
    |       |-- locale.h
    |       |-- network.h
    |       |-- passwd.h
    |       |-- printing.h
    |       |-- readline.h
    |       |-- select.h
    |       |-- shmem.h
    |       |-- syslog.h
    |       |-- terminal.h
    |       |-- time.h
    |       `-- wait.h
    |-- samba
    |   |-- MacExtensions.h
    |   |-- ads.h
    |   |-- ads_cldap.h
    |   |-- ads_dns.h
    |   |-- ads_protos.h
    |   |-- adt_tree.h
    |   |-- asn_1.h
    |   |-- auth.h
    |   |-- authdata.h
    |   |-- build_env.h
    |   |-- byteorder.h
    |   |-- charset.h
    |   |-- client.h
    |   |-- clitar.h
    |   |-- config.h
    |   |-- core
    |   |   `-- nterr.h
    |   |-- core.h
    |   |-- dcerpc.h
    |   |-- debug.h
    |   |-- debugparse.h
    |   |-- dlinklist.h
    |   |-- doserr.h
    |   |-- dynconfig.h
    |   |-- event.h
    |   |-- fake_file.h
    |   |-- gpo.h
    |   |-- hmacmd5.h
    |   |-- idmap.h
    |   |-- includes.h
    |   |-- interfaces.h
    |   |-- intl.h
    |   |-- libmsrpc.h
    |   |-- libmsrpc_internal.h
    |   |-- libsmb_internal.h
    |   |-- libsmbclient.h
    |   |-- local.h
    |   |-- locking.h
    |   |-- mangle.h
    |   |-- mapping.h
    |   |-- md5.h
    |   |-- messages.h
    |   |-- module.h
    |   |-- msdfs.h
    |   |-- nameserv.h
    |   |-- ndr.h
    |   |-- nss_info.h
    |   |-- nt_printing.h
    |   |-- nt_status.h
    |   |-- ntdomain.h
    |   |-- nterr.h
    |   |-- ntioctl.h
    |   |-- ntlmssp.h
    |   |-- ntquotas.h
    |   |-- passdb.h
    |   |-- popt_common.h
    |   |-- printing.h
    |   |-- privileges.h
    |   |-- proto.h
    |   |-- pstring.h
    |   |-- rap.h
    |   |-- reg_objects.h
    |   |-- regfio.h
    |   |-- rpc_brs.h
    |   |-- rpc_client.h
    |   |-- rpc_dce.h
    |   |-- rpc_dfs.h
    |   |-- rpc_ds.h
    |   |-- rpc_echo.h
    |   |-- rpc_eventlog.h
    |   |-- rpc_lsa.h
    |   |-- rpc_misc.h
    |   |-- rpc_netlogon.h
    |   |-- rpc_ntsvcs.h
    |   |-- rpc_perfcount.h
    |   |-- rpc_perfcount_defs.h
    |   |-- rpc_reg.h
    |   |-- rpc_samr.h
    |   |-- rpc_secdes.h
    |   |-- rpc_shutdown.h
    |   |-- rpc_spoolss.h
    |   |-- rpc_srvsvc.h
    |   |-- rpc_svcctl.h
    |   |-- safe_string.h
    |   |-- samba_linux_quota.h
    |   |-- samba_xfs_quota.h
    |   |-- secrets.h
    |   |-- session.h
    |   |-- smb.h
    |   |-- smb_acls.h
    |   |-- smb_ldap.h
    |   |-- smb_macros.h
    |   |-- smb_share_modes.h
    |   |-- smbldap.h
    |   |-- smbprofile.h
    |   |-- spnego.h
    |   |-- srvstr.h
    |   |-- stamp-h
    |   |-- sysquotas.h
    |   |-- talloc.h
    |   |-- trans2.h
    |   |-- util_getent.h
    |   |-- util_tdb.h
    |   |-- version.h
    |   |-- vfs.h
    |   |-- vfs_macros.h
    |   `-- xfile.h
    `-- tdb
        |-- tdb.h
        `-- tdbback.h


--------------enig1EDF58ADDEE7F8B73AEF9E86
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.4 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iD8DBQFGi2HJGwVqY66cHjARAn7DAJ4tVZFISGPyogMmvV+kannW79Tp7QCfTdY2
lAlLPqXkSSHSbU3GrE1r1bA=
=EF4Q
-----END PGP SIGNATURE-----

--------------enig1EDF58ADDEE7F8B73AEF9E86--

    

2a�-o dRm_HSa