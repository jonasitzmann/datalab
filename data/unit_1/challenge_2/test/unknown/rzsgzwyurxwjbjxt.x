From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun  8 11:10:09 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l58FA9hB016826
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 8 Jun 2007 11:10:09 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 9FE9C162BC3
	for <ktwarwic@speedy.uwaterloo.ca>; Fri,  8 Jun 2007 15:10:02 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	UNPARSEABLE_RELAY,UPPERCASE_25_50 autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from mail.SerNet.de (mail.SerNet.DE [193.175.80.2])
	by lists.samba.org (Postfix) with ESMTP id B258D162ADF
	for <samba-technical@lists.samba.org>;
	Fri,  8 Jun 2007 15:09:18 +0000 (GMT)
Received: from intern.SerNet.DE by mail.SerNet.DE with esmtp (Exim 4.51 #1)
	for samba-technical@lists.samba.org
	id 1Hwg5V-0005YJ-Sr; Fri, 08 Jun 2007 17:09:17 +0200
Received: by intern.SerNet.DE
	id 1Hwg5V-0007YV-Bb; Fri, 08 Jun 2007 17:09:17 +0200
Received: by intern.SerNet.DE
	id 1Hwg5V-0007YR-3V; Fri, 08 Jun 2007 17:09:17 +0200
Date: Fri, 8 Jun 2007 17:09:17 +0200
From: Michael Adam <ma@sernet.de>
To: samba-technical@lists.samba.org
References: <20070608123214.BFDC4162ABE@lists.samba.org>
	<E1Hwdh5-0008OC-Jb@intern.SerNet.DE>
	<E1HweL9-0002CW-KR@intern.SerNet.DE>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <E1HweL9-0002CW-KR@intern.SerNet.DE>
User-Agent: Mutt/1.5.9i
Message-Id: <E1Hwg5V-0007YV-Bb@intern.SerNet.DE>
Organization: SerNet GmbH, Goettingen, Germany
Subject: Re: svn commit: samba r23387 - in branches/SAMBA_3_0/source: .
X-BeenThere: samba-technical@lists.samba.org
X-Mailman-Version: 2.1.5
Precedence: list
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
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l58FA9hB016826

I have disabled ACL support on Darwin in r23389 for now.
See the commit message for what was going wrong.

The other hosts seem happy so far. Let's wait for the last
few to build the new revision.

Cheers, Michael

On Fri, Jun 08, 2007 at 03:17:19PM +0200, Michael Adam wrote:
> Ok, the build breaks on Mac OS X, I will investigate that.
> 
> Michael
> 
> On Fri, Jun 08, 2007 at 02:35:55PM +0200, Michael Adam wrote:
> > Hi, 
> > 
> > I have turned ACL detection on by default and unified posix acl detection. 
> > 
> > Given the build farm is happy with this, I would like to merge
> > this to 3_0_26. Any objections?
> > 
> > Michael
> > 
> > On Fr, Jun 08, 2007 at 12:32:14 +0000, obnox@samba.org wrote:
> > > Author: obnox
> > > Date: 2007-06-08 12:32:13 +0000 (Fri, 08 Jun 2007)
> > > New Revision: 23387
> > > 
> > > WebSVN: http://websvn.samba.org/cgi-bin/viewcvs.cgi?view=rev&root=samba&rev=23387
> > > 
> > > Log:
> > > 1. This unifies the POSIX ACL detection code:
> > > Linux, FreeBSD and other (which?) ACL implementations
> > > are now checked in the same block instead of in three
> > > separate blocks. This was inspired by Timur Bakeyev
> > > in Bug #4543. Since bugzilla is currently unavailable
> > > this patch is probably slightly different from Timurs
> > > original patch. This should finally fix Bug #4543.
> > > 
> > > 2. The default of the --with-acl-support configure 
> > > option is changed to "auto" (which is actually the
> > > same as "yes"). So configure tries to detect acl
> > > support by default. This had been discussed with
> > > Metze and others.
> > > 
> > > Michael
> > > 
> > > 
> > > Modified:
> > >    branches/SAMBA_3_0/source/configure.in
> > > 
> > > 
> > > Changeset:
> > > Modified: branches/SAMBA_3_0/source/configure.in
> > > ===================================================================
> > > --- branches/SAMBA_3_0/source/configure.in	2007-06-08 10:56:46 UTC (rev 23386)
> > > +++ branches/SAMBA_3_0/source/configure.in	2007-06-08 12:32:13 UTC (rev 23387)
> > > @@ -5368,55 +5368,67 @@
> > >  
> > >  AC_MSG_CHECKING(whether to support ACLs)
> > >  AC_ARG_WITH(acl-support,
> > > -[  --with-acl-support      Include ACL support (default=no)],
> > > +[  --with-acl-support      Include ACL support (default=auto)],
> > >  [ case "$withval" in
> > > -  yes)
> > > +	yes|no)
> > > +		with_acl_support="$withval"
> > > +		;;
> > > +  esac ])
> > >  
> > > +if test x"$with_acl_support" = x ; then
> > > +	with_acl_support="auto"
> > > +fi
> > > +
> > > +AC_MSG_RESULT($with_acl_support)
> > > +
> > > +if test x"$with_acl_support" = x"no"; then
> > > +	AC_MSG_RESULT(Disabling ACL support)
> > > +	AC_DEFINE(HAVE_NO_ACLS,1,[Whether no ACLs support should be built in])
> > > +else
> > > +	AC_MSG_NOTICE(checking whether ACL support is available:)
> > >  	case "$host_os" in
> > >  	*sysv5*)
> > > -		AC_MSG_RESULT(Using UnixWare ACLs)
> > > +		AC_MSG_NOTICE(Using UnixWare ACLs)
> > >  		AC_DEFINE(HAVE_UNIXWARE_ACLS,1,[Whether UnixWare ACLs are available])
> > >  		default_static_modules="$default_static_modules vfs_solarisacl"
> > >  		;;
> > >  	*solaris*)
> > > -		AC_MSG_RESULT(Using solaris ACLs)
> > > +		AC_MSG_NOTICE(Using solaris ACLs)
> > >  		AC_DEFINE(HAVE_SOLARIS_ACLS,1,[Whether solaris ACLs are available])
> > >  		ACL_LIBS="$ACL_LIBS -lsec"
> > >  		default_static_modules="$default_static_modules vfs_solarisacl"
> > >  		;;
> > >  	*hpux*)
> > > -		AC_MSG_RESULT(Using HPUX ACLs)
> > > +		AC_MSG_NOTICE(Using HPUX ACLs)
> > >  		AC_DEFINE(HAVE_HPUX_ACLS,1,[Whether HPUX ACLs are available])
> > >  		default_static_modules="$default_static_modules vfs_hpuxacl"
> > >  		;;
> > >  	*irix*)
> > > -		AC_MSG_RESULT(Using IRIX ACLs)
> > > +		AC_MSG_NOTICE(Using IRIX ACLs)
> > >  		AC_DEFINE(HAVE_IRIX_ACLS,1,[Whether IRIX ACLs are available])
> > >  		default_static_modules="$default_static_modules vfs_irixacl"
> > >  		;;
> > >  	*aix*)
> > > -		AC_MSG_RESULT(Using AIX ACLs)
> > > +		AC_MSG_NOTICE(Using AIX ACLs)
> > >  		AC_DEFINE(HAVE_AIX_ACLS,1,[Whether AIX ACLs are available])
> > >  		default_static_modules="$default_static_modules vfs_aixacl"
> > >  		;;
> > >  	*osf*)
> > > -		AC_MSG_RESULT(Using Tru64 ACLs)
> > > +		AC_MSG_NOTICE(Using Tru64 ACLs)
> > >  		AC_DEFINE(HAVE_TRU64_ACLS,1,[Whether Tru64 ACLs are available])
> > >  		ACL_LIBS="$ACL_LIBS -lpacl"
> > >  		default_static_modules="$default_static_modules vfs_tru64acl"
> > >  		;;
> > > -	*freebsd[[5-9]]*)
> > > -		AC_MSG_RESULT(Using FreeBSD posix ACLs)
> > > -		AC_DEFINE(HAVE_POSIX_ACLS,1,[Whether FreeBSD POSIX ACLs are available])
> > > -		AC_DEFINE(HAVE_ACL_GET_PERM_NP,1,[Whether acl_get_perm_np() is available])
> > > -		default_static_modules="$default_static_modules vfs_posixacl"
> > > -		;;
> > > -	*linux*)
> > > -		AC_CHECK_LIB(attr,getxattr,[ACL_LIBS="$ACL_LIBS -lattr"])
> > > -       		AC_CHECK_LIB(acl,acl_get_file,[ACL_LIBS="$ACL_LIBS -lacl"])
> > > -		AC_CACHE_CHECK([for ACL support],samba_cv_HAVE_POSIX_ACLS,[
> > > +         *)
> > > +		AC_CHECK_LIB(acl,acl_get_file,[ACL_LIBS="$ACL_LIBS -lacl"])
> > > +		case "$host_os" in
> > > +		*linux*)
> > > +			AC_CHECK_LIB(attr,getxattr,[ACL_LIBS="$ACL_LIBS -lattr"])
> > > +			;;
> > > +		esac
> > > +		AC_CACHE_CHECK([for POSIX ACL support],samba_cv_HAVE_POSIX_ACLS,[
> > >  			acl_LIBS=$LIBS
> > > -			LIBS="$LIBS -lacl"
> > > +			LIBS="$LIBS $ACL_LIBS"
> > >  			AC_TRY_LINK([
> > >  				#include <sys/types.h>
> > >  				#include <sys/acl.h>
> > > @@ -5431,11 +5443,11 @@
> > >  			LIBS=$acl_LIBS
> > >  		])
> > >  		if test x"$samba_cv_HAVE_POSIX_ACLS" = x"yes"; then
> > > -			AC_MSG_RESULT(Using posix ACLs)
> > > +			AC_MSG_NOTICE(Using posix ACLs)
> > >  			AC_DEFINE(HAVE_POSIX_ACLS,1,[Whether POSIX ACLs are available])
> > >  			AC_CACHE_CHECK([for acl_get_perm_np],samba_cv_HAVE_ACL_GET_PERM_NP,[
> > >  				acl_LIBS=$LIBS
> > > -				LIBS="$LIBS -lacl"
> > > +				LIBS="$LIBS $ACL_LIBS"
> > >  				AC_TRY_LINK([
> > >  					#include <sys/types.h>
> > >  					#include <sys/acl.h>
> > > @@ -5451,64 +5463,17 @@
> > >  			if test x"$samba_cv_HAVE_ACL_GET_PERM_NP" = x"yes"; then
> > >  				AC_DEFINE(HAVE_ACL_GET_PERM_NP,1,[Whether acl_get_perm_np() is available])
> > >  			fi
> > > +   			default_static_modules="$default_static_modules vfs_posixacl"
> > > +		else
> > > +			AC_MSG_NOTICE(ACL support is not avaliable)
> > > +			AC_DEFINE(HAVE_NO_ACLS,1,[Whether no ACLs support is available])
> > >  		fi
> > > -            ;;
> > > -         *)
> > > -		AC_CHECK_LIB(acl,acl_get_file,[ACL_LIBS="$ACL_LIBS -lacl"])
> > > -		AC_CACHE_CHECK([for ACL support],samba_cv_HAVE_POSIX_ACLS,[
> > > -			acl_LIBS=$LIBS
> > > -			LIBS="$LIBS -lacl"
> > > -			AC_TRY_LINK([
> > > -				#include <sys/types.h>
> > > -				#include <sys/acl.h>
> > > -			],[
> > > -				acl_t acl;
> > > -				int entry_id;
> > > -				acl_entry_t *entry_p;
> > > -				return acl_get_entry( acl, entry_id, entry_p);
> > > -			],
> > > -			[samba_cv_HAVE_POSIX_ACLS=yes],
> > > -			[samba_cv_HAVE_POSIX_ACLS=no])
> > > -			LIBS=$acl_LIBS
> > > -		])
> > > -		if test x"$samba_cv_HAVE_POSIX_ACLS" = x"yes"; then
> > > -			AC_MSG_RESULT(Using posix ACLs)
> > > -			AC_DEFINE(HAVE_POSIX_ACLS,1,[Whether POSIX ACLs are available])
> > > -			AC_CACHE_CHECK([for acl_get_perm_np],samba_cv_HAVE_ACL_GET_PERM_NP,[
> > > -				acl_LIBS=$LIBS
> > > -				LIBS="$LIBS -lacl"
> > > -				AC_TRY_LINK([
> > > -					#include <sys/types.h>
> > > -					#include <sys/acl.h>
> > > -				],[
> > > -					acl_permset_t permset_d;
> > > -					acl_perm_t perm;
> > > -					return acl_get_perm_np( permset_d, perm);
> > > -				],
> > > -				[samba_cv_HAVE_ACL_GET_PERM_NP=yes],
> > > -				[samba_cv_HAVE_ACL_GET_PERM_NP=no])
> > > -				LIBS=$acl_LIBS
> > > -			])
> > > -			if test x"$samba_cv_HAVE_ACL_GET_PERM_NP" = x"yes"; then
> > > -				AC_DEFINE(HAVE_ACL_GET_PERM_NP,1,[Whether acl_get_perm_np() is available])
> > > -			fi
> > > -		fi
> > > -            ;;
> > > +		;;
> > >          esac
> > > -        ;;
> > > -  *)
> > > -    AC_MSG_RESULT(no)
> > > -    AC_DEFINE(HAVE_NO_ACLS,1,[Whether no ACLs support is available])
> > > -    ;;
> > > -  esac ],
> > > -  AC_DEFINE(HAVE_NO_ACLS,1,[Whether no ACLs support should be built in])
> > > -  AC_MSG_RESULT(no)
> > > -)
> > > +fi # with_acl_support
> > >  
> > > -if test x"$samba_cv_HAVE_POSIX_ACLS" = x"yes"; then
> > > -   default_static_modules="$default_static_modules vfs_posixacl"
> > > -fi
> > >  
> > > +
> > >  #################################################
> > >  # check for AIO support
> > >  
> > > 
> > 
> > -- 
> > Michael Adam <ma@sernet.de>
> > SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
> > phone: +49-551-370000-0, fax: +49-551-370000-9
> > AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
> > http://www.SerNet.DE, mailto: Info @ SerNet.DE
> 
> -- 
> 
> i.A. Michael Adam
> 
> -- 
> Michael Adam <ma@sernet.de>
> SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
> phone: +49-551-370000-0, fax: +49-551-370000-9
> AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
> http://www.SerNet.DE, mailto: Info @ SerNet.DE

-- 

i.A. Michael Adam

-- 
Michael Adam <ma@sernet.de>
SerNet GmbH, Bahnhofsallee 1b, 37081 Göttingen
phone: +49-551-370000-0, fax: +49-551-370000-9
AG Göttingen, HRB 2816, GF: Dr. Johannes Loxen
http://www.SerNet.DE, mailto: Info @ SerNet.DE

         

qPefgl0 ndi