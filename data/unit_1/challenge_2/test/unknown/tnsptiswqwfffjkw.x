From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 18:29:37 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5MMT1L9009781
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 18:29:01 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id 5839D1638E4
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 20:21:38 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=3.8 tests=AWL,BAYES_00,RCVD_IN_DSBL,
	SPF_HELO_PASS,SPF_PASS,UNPARSEABLE_RELAY autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
Received: from thunker.thunk.org (THUNK.ORG [69.25.196.29])
	by lists.samba.org (Postfix) with ESMTP id 0D88C162C4F;
	Fri, 22 Jun 2007 20:20:33 +0000 (GMT)
Received: from root (helo=candygram.thunk.org)
	by thunker.thunk.org with local-esmtps 
	(tls_cipher TLS-1.0:RSA_AES_256_CBC_SHA:32)  (Exim 4.50 #1 (Debian))
	id 1I1pjz-0004NW-LE; Fri, 22 Jun 2007 16:28:24 -0400
Received: from tytso by candygram.thunk.org with local (Exim 4.63)
	(envelope-from <tytso@thunk.org>)
	id 1I1pcC-0001VH-Gn; Fri, 22 Jun 2007 16:20:20 -0400
Date: Fri, 22 Jun 2007 16:20:20 -0400
From: Theodore Tso <tytso@mit.edu>
To: Jeremy Allison <jra@samba.org>
Message-ID: <20070622202020.GJ15285@thunk.org>
References: <87ejkbbycq.fsf@rho.meyering.net>
	<1182175456.13184.7.camel@kleikamp.austin.ibm.com>
	<87wsy15p5n.fsf@rho.meyering.net>
	<20070622064144.GC17097@thunk.org> <20070622172704.GA10211@samba1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20070622172704.GA10211@samba1>
User-Agent: Mutt/1.5.13 (2006-08-11)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: tytso@thunk.org
X-SA-Exim-Scanned: No (on thunker.thunk.org); SAEximRunCond expanded to false
Cc: Dave Kleikamp <shaggy@linux.vnet.ibm.com>, linux-ext4@vger.kernel.org,
   samba-technical@lists.samba.org, Jim Meyering <jim@meyering.net>
Subject: Re: avoid leak upon failed realloc
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

On Fri, Jun 22, 2007 at 10:27:04AM -0700, Jeremy Allison wrote:
> > 	Thanks for the patch!  I actually automatically build the
> > tdb.c file from the Samba SVN tree (with a series of patches and
> > scripts)

In case people are interested, I've attached the patches and scripts I
use to build a single tdb.c/tdb.h file for e2fsprogs.

> Thanks Ted, we fixed this in the generic Samba sources by using
> realloc wrappers, but tdb has to be separate from these.

Hmm.... There are actually several realloc calls in the tdb sources,
not just the one which Jim pointed out.  If it's better I can just
simply hack one of my patches to provide a realloc wrapper that deals
with all of the cases in one fell swoop.

							- Ted

#!/bin/sh
# This is a shell archive (produced by GNU sharutils 4.2.1).
# To extract the files from this archive, save it to some FILE, remove
# everything before the `!/bin/sh' line above, then type `sh FILE'.
#
# Made on 2007-06-22 16:19 EDT by <tytso@candygram>.
# Source directory was `/usr/projects/samba'.
#
# Existing files will *not* be overwritten unless `-c' is specified.
#
# This shar contains:
# length mode       name
# ------ ---------- ------------------------------------------
#    849 -rwxr-xr-x tdbsa/build-tdb
#   4552 -rw-r--r-- tdbsa/patches/static-prototypes
#    716 -rw-r--r-- tdbsa/patches/copyright
#     94 -rw-r--r-- tdbsa/patches/series
#   1892 -rw-r--r-- tdbsa/patches/replace-includes
#   2265 -rw-r--r-- tdbsa/patches/ext2tdb-rename
#    674 -rw-r--r-- tdbsa/patches/tdbtool-includes
#    545 -rw-r--r-- tdbsa/patches/static-functions
#    232 -rw-r--r-- tdbsa/Makefile
#
save_IFS="${IFS}"
IFS="${IFS}:"
gettext_dir=FAILED
locale_dir=FAILED
first_param="$1"
for dir in $PATH
do
  if test "$gettext_dir" = FAILED && test -f $dir/gettext \
     && ($dir/gettext --version >/dev/null 2>&1)
  then
    set `$dir/gettext --version 2>&1`
    if test "$3" = GNU
    then
      gettext_dir=$dir
    fi
  fi
  if test "$locale_dir" = FAILED && test -f $dir/shar \
     && ($dir/shar --print-text-domain-dir >/dev/null 2>&1)
  then
    locale_dir=`$dir/shar --print-text-domain-dir`
  fi
done
IFS="$save_IFS"
if test "$locale_dir" = FAILED || test "$gettext_dir" = FAILED
then
  echo=echo
else
  TEXTDOMAINDIR=$locale_dir
  export TEXTDOMAINDIR
  TEXTDOMAIN=sharutils
  export TEXTDOMAIN
  echo="$gettext_dir/gettext -s"
fi
if mkdir _sh05242; then
  $echo 'x -' 'creating lock directory'
else
  $echo 'failed to create lock directory'
  exit 1
fi
# ============= tdbsa/build-tdb ==============
if test ! -d 'tdbsa'; then
  $echo 'x -' 'creating directory' 'tdbsa'
  mkdir 'tdbsa'
fi
if test -f 'tdbsa/build-tdb' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/build-tdb' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/build-tdb' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/build-tdb' &&
#!/bin/sh
#
# This file creates a stand-alone TDB based on a set of sources from 
# Samba
X
#BASE_DIR=/usr/projects/samba/samba-4.0.0tp4/source/lib/tdb
BASE_DIR=/usr/projects/samba/tdb
X
rm -rf .pc
X
FILES="error.c lock.c io.c transaction.c freelist.c \
X	freelistcheck.c traverse.c dump.c tdb.c open.c"
X
(cd $BASE_DIR/common; svn info ) > .svninfo
echo "/*" > tdb.c
grep ^URL .svninfo >> tdb.c
grep "^Last Changed Rev" .svninfo | sed -e 's/Last Changed //' >> tdb.c
grep "^Last Changed Date" .svninfo >> tdb.c
echo "*/" >> tdb.c
X
cat $BASE_DIR/common/tdb_private.h >> tdb.c
for i in $FILES; do
X	if [ `tail -n 1 tdb.c | wc -c` -gt 1 ]; then
X		printf "\n" >> tdb.c
X	fi
X	echo "/* file: $i */" >> tdb.c
X	sed -e '1,/#include "tdb_private.h"/d' < $BASE_DIR/common/$i >> tdb.c
done
X
cp $BASE_DIR/include/tdb.h .
cp $BASE_DIR/tools/tdbtool.c .
X
quilt push -a
X
SHAR_EOF
  chmod 0755 'tdbsa/build-tdb' ||
  $echo 'restore of' 'tdbsa/build-tdb' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/build-tdb:' 'MD5 check failed'
da181f5eb74b1b653482317cf94e5138  tdbsa/build-tdb
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/build-tdb'`"
    test 849 -eq "$shar_count" ||
    $echo 'tdbsa/build-tdb:' 'original size' '849,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/static-prototypes ==============
if test ! -d 'tdbsa/patches'; then
  $echo 'x -' 'creating directory' 'tdbsa/patches'
  mkdir 'tdbsa/patches'
fi
if test -f 'tdbsa/patches/static-prototypes' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/static-prototypes' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/static-prototypes' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/static-prototypes' &&
Index: tdbsa/tdb.c
===================================================================
--- tdbsa.orig/tdb.c
+++ tdbsa/tdb.c
@@ -251,39 +251,39 @@ struct tdb_context {
X /*
X   internal prototypes
X */
-int tdb_munmap(struct tdb_context *tdb);
-void tdb_mmap(struct tdb_context *tdb);
-int tdb_lock(struct tdb_context *tdb, int list, int ltype);
-int tdb_unlock(struct tdb_context *tdb, int list, int ltype);
-int tdb_brlock(struct tdb_context *tdb, tdb_off_t offset, int rw_type, int lck_type, int probe, size_t len);
-int tdb_transaction_lock(struct tdb_context *tdb, int ltype);
-int tdb_transaction_unlock(struct tdb_context *tdb);
-int tdb_brlock_upgrade(struct tdb_context *tdb, tdb_off_t offset, size_t len);
-int tdb_write_lock_record(struct tdb_context *tdb, tdb_off_t off);
-int tdb_write_unlock_record(struct tdb_context *tdb, tdb_off_t off);
-int tdb_ofs_read(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
-int tdb_ofs_write(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
-void *tdb_convert(void *buf, u32 size);
-int tdb_free(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
-tdb_off_t tdb_allocate(struct tdb_context *tdb, tdb_len_t length, struct list_struct *rec);
-int tdb_ofs_read(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
-int tdb_ofs_write(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
-int tdb_lock_record(struct tdb_context *tdb, tdb_off_t off);
-int tdb_unlock_record(struct tdb_context *tdb, tdb_off_t off);
-int tdb_rec_read(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
-int tdb_rec_write(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
-int tdb_do_delete(struct tdb_context *tdb, tdb_off_t rec_ptr, struct list_struct *rec);
-unsigned char *tdb_alloc_read(struct tdb_context *tdb, tdb_off_t offset, tdb_len_t len);
-int tdb_parse_data(struct tdb_context *tdb, TDB_DATA key,
+static int tdb_munmap(struct tdb_context *tdb);
+static void tdb_mmap(struct tdb_context *tdb);
+static int tdb_lock(struct tdb_context *tdb, int list, int ltype);
+static int tdb_unlock(struct tdb_context *tdb, int list, int ltype);
+static int tdb_brlock(struct tdb_context *tdb, tdb_off_t offset, int rw_type, int lck_type, int probe, size_t len);
+static int tdb_transaction_lock(struct tdb_context *tdb, int ltype);
+static int tdb_transaction_unlock(struct tdb_context *tdb);
+static int tdb_brlock_upgrade(struct tdb_context *tdb, tdb_off_t offset, size_t len);
+static int tdb_write_lock_record(struct tdb_context *tdb, tdb_off_t off);
+static int tdb_write_unlock_record(struct tdb_context *tdb, tdb_off_t off);
+static int tdb_ofs_read(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
+static int tdb_ofs_write(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
+static void *tdb_convert(void *buf, u32 size);
+static int tdb_free(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
+static tdb_off_t tdb_allocate(struct tdb_context *tdb, tdb_len_t length, struct list_struct *rec);
+static int tdb_ofs_read(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
+static int tdb_ofs_write(struct tdb_context *tdb, tdb_off_t offset, tdb_off_t *d);
+static int tdb_lock_record(struct tdb_context *tdb, tdb_off_t off);
+static int tdb_unlock_record(struct tdb_context *tdb, tdb_off_t off);
+static int tdb_rec_read(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
+static int tdb_rec_write(struct tdb_context *tdb, tdb_off_t offset, struct list_struct *rec);
+static int tdb_do_delete(struct tdb_context *tdb, tdb_off_t rec_ptr, struct list_struct *rec);
+static unsigned char *tdb_alloc_read(struct tdb_context *tdb, tdb_off_t offset, tdb_len_t len);
+static int tdb_parse_data(struct tdb_context *tdb, TDB_DATA key,
X 		   tdb_off_t offset, tdb_len_t len,
X 		   int (*parser)(TDB_DATA key, TDB_DATA data,
X 				 void *private_data),
X 		   void *private_data);
-tdb_off_t tdb_find_lock_hash(struct tdb_context *tdb, TDB_DATA key, u32 hash, int locktype,
+static tdb_off_t tdb_find_lock_hash(struct tdb_context *tdb, TDB_DATA key, u32 hash, int locktype,
X 			   struct list_struct *rec);
-void tdb_io_init(struct tdb_context *tdb);
-int tdb_expand(struct tdb_context *tdb, tdb_off_t size);
-int tdb_rec_free_read(struct tdb_context *tdb, tdb_off_t off,
+static void tdb_io_init(struct tdb_context *tdb);
+static int tdb_expand(struct tdb_context *tdb, tdb_off_t size);
+static int tdb_rec_free_read(struct tdb_context *tdb, tdb_off_t off,
X 		      struct list_struct *rec);
X 
X 
SHAR_EOF
  chmod 0644 'tdbsa/patches/static-prototypes' ||
  $echo 'restore of' 'tdbsa/patches/static-prototypes' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/static-prototypes:' 'MD5 check failed'
5b95bfff8fac41ff13583defa06614de  tdbsa/patches/static-prototypes
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/static-prototypes'`"
    test 4552 -eq "$shar_count" ||
    $echo 'tdbsa/patches/static-prototypes:' 'original size' '4552,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/copyright ==============
if test -f 'tdbsa/patches/copyright' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/copyright' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/copyright' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/copyright' &&
Index: tdbsa/tdb.c
===================================================================
--- tdbsa.orig/tdb.c
+++ tdbsa/tdb.c
@@ -4,11 +4,11 @@ Rev: 23371
X Last Changed Date: 2007-06-06 20:14:06 -0400 (Wed, 06 Jun 2007)
X */
X  /* 
-   Unix SMB/CIFS implementation.
+   trivial database library - standalone version
X 
-   trivial database library - private includes
-
-   Copyright (C) Andrew Tridgell              2005
+   Copyright (C) Andrew Tridgell              1999-2005
+   Copyright (C) Jeremy Allison               2000-2006
+   Copyright (C) Paul `Rusty' Russell         2000
X    
X      ** NOTE! The following LGPL license applies to the tdb
X      ** library. This does NOT imply that all of Samba is released
SHAR_EOF
  chmod 0644 'tdbsa/patches/copyright' ||
  $echo 'restore of' 'tdbsa/patches/copyright' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/copyright:' 'MD5 check failed'
a9c26eb26660c38d55c025525e33e4be  tdbsa/patches/copyright
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/copyright'`"
    test 716 -eq "$shar_count" ||
    $echo 'tdbsa/patches/copyright:' 'original size' '716,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/series ==============
if test -f 'tdbsa/patches/series' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/series' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/series' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/series' &&
copyright
replace-includes
static-prototypes
static-functions
tdbtool-includes
ext2tdb-rename
SHAR_EOF
  chmod 0644 'tdbsa/patches/series' ||
  $echo 'restore of' 'tdbsa/patches/series' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/series:' 'MD5 check failed'
d7407665a70fe6d73b9e2adf24371e3a  tdbsa/patches/series
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/series'`"
    test 94 -eq "$shar_count" ||
    $echo 'tdbsa/patches/series:' 'original size' '94,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/replace-includes ==============
if test -f 'tdbsa/patches/replace-includes' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/replace-includes' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/replace-includes' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/replace-includes' &&
Index: tdbsa/tdb.c
===================================================================
--- tdbsa.orig/tdb.c
+++ tdbsa/tdb.c
@@ -29,11 +29,80 @@ Last Changed Date: 2007-06-06 20:14:06 -
X    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
X */
X 
-#include "replace.h"
-#include "system/filesys.h"
-#include "system/time.h"
-#include "system/shmem.h"
-#include "system/select.h"
+#ifdef CONFIG_STAND_ALONE
+#define HAVE_MMAP
+#define HAVE_STRDUP
+#define HAVE_SYS_MMAN_H
+#define HAVE_UTIME_H
+#define HAVE_UTIME
+#endif
+#define _XOPEN_SOURCE 500
+
+#include <unistd.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <stdarg.h>
+#include <stddef.h>
+#include <errno.h>
+#include <string.h>
+#include <sys/select.h>
+#include <sys/time.h>
+#include <sys/types.h>
+#include <time.h>
+#ifdef HAVE_UTIME_H
+#include <utime.h>
+#endif
+#include <sys/stat.h>
+#include <sys/file.h>
+#include <fcntl.h>
+
+#ifdef HAVE_SYS_MMAN_H
+#include <sys/mman.h>
+#endif
+
+#ifndef MAP_FILE
+#define MAP_FILE 0
+#endif
+
+#ifndef MAP_FAILED
+#define MAP_FAILED ((void *)-1)
+#endif
+
+#ifndef HAVE_STRDUP
+#define strdup rep_strdup
+static char *rep_strdup(const char *s)
+{
+	char *ret;
+	int length;
+	if (!s)
+		return NULL;
+
+	if (!length)
+		length = strlen(s);
+
+	ret = malloc(length + 1);
+	if (ret) {
+		strncpy(ret, s, length);
+		ret[length] = '\0';
+	}
+	return ret;
+}
+#endif
+
+#ifndef PRINTF_ATTRIBUTE
+#if (__GNUC__ >= 3) && (__GNUC_MINOR__ >= 1 )
+/** Use gcc attribute to check printf fns.  a1 is the 1-based index of
+ * the parameter containing the format, and a2 the index of the first
+ * argument. Note that some gcc 2.x versions don't handle this
+ * properly **/
+#define PRINTF_ATTRIBUTE(a1, a2) __attribute__ ((format (__printf__, a1, a2)))
+#else
+#define PRINTF_ATTRIBUTE(a1, a2)
+#endif
+#endif
+
+typedef int bool;
+
X #include "tdb.h"
X 
X #ifndef u32
SHAR_EOF
  chmod 0644 'tdbsa/patches/replace-includes' ||
  $echo 'restore of' 'tdbsa/patches/replace-includes' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/replace-includes:' 'MD5 check failed'
19be597cb884df5399b9f43fb5cacd2e  tdbsa/patches/replace-includes
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/replace-includes'`"
    test 1892 -eq "$shar_count" ||
    $echo 'tdbsa/patches/replace-includes:' 'original size' '1892,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/ext2tdb-rename ==============
if test -f 'tdbsa/patches/ext2tdb-rename' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/ext2tdb-rename' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/ext2tdb-rename' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/ext2tdb-rename' &&
Index: tdbsa/tdb.h
===================================================================
--- tdbsa.orig/tdb.h
+++ tdbsa/tdb.h
@@ -76,6 +76,51 @@ typedef struct TDB_DATA {
X #endif
X #endif
X 
+/* ext2fs tdb renames */
+#define tdb_open ext2fs_tdb_open
+#define tdb_open_ex ext2fs_tdb_open_ex
+#define tdb_set_max_dead ext2fs_tdb_set_max_dead
+#define tdb_reopen ext2fs_tdb_reopen
+#define tdb_reopen_all ext2fs_tdb_reopen_all
+#define tdb_set_logging_function ext2fs_tdb_set_logging_function
+#define tdb_error ext2fs_tdb_error
+#define tdb_errorstr ext2fs_tdb_errorstr
+#define tdb_fetch ext2fs_tdb_fetch
+#define tdb_parse_record ext2fs_tdb_parse_record
+#define tdb_delete ext2fs_tdb_delete
+#define tdb_store ext2fs_tdb_store
+#define tdb_append ext2fs_tdb_append
+#define tdb_close ext2fs_tdb_close
+#define tdb_firstkey ext2fs_tdb_firstkey
+#define tdb_nextkey ext2fs_tdb_nextkey
+#define tdb_traverse ext2fs_tdb_traverse
+#define tdb_traverse_read ext2fs_tdb_traverse_read
+#define tdb_exists ext2fs_tdb_exists
+#define tdb_lockall ext2fs_tdb_lockall
+#define tdb_unlockall ext2fs_tdb_unlockall
+#define tdb_lockall_read ext2fs_tdb_lockall_read
+#define tdb_unlockall_read ext2fs_tdb_unlockall_read
+#define tdb_name ext2fs_tdb_name
+#define tdb_fd ext2fs_tdb_fd
+#define tdb_log_fn ext2fs_tdb_log_fn
+#define tdb_get_logging_private ext2fs_tdb_get_logging_private
+#define tdb_transaction_start ext2fs_tdb_transaction_start
+#define tdb_transaction_commit ext2fs_tdb_transaction_commit
+#define tdb_transaction_cancel ext2fs_tdb_transaction_cancel
+#define tdb_transaction_recover ext2fs_tdb_transaction_recover
+#define tdb_get_seqnum ext2fs_tdb_get_seqnum
+#define tdb_hash_size ext2fs_tdb_hash_size
+#define tdb_map_size ext2fs_tdb_map_size
+#define tdb_get_flags ext2fs_tdb_get_flags
+#define tdb_chainlock ext2fs_tdb_chainlock
+#define tdb_chainunlock ext2fs_tdb_chainunlock
+#define tdb_chainlock_read ext2fs_tdb_chainlock_read
+#define tdb_chainunlock_read ext2fs_tdb_chainunlock_read
+#define tdb_dump_all ext2fs_tdb_dump_all
+#define tdb_printfreelist ext2fs_tdb_printfreelist
+#define tdb_validate_freelist ext2fs_tdb_validate_freelist
+
+
X /* this is the context structure that is returned from a db open */
X typedef struct tdb_context TDB_CONTEXT;
X 
SHAR_EOF
  chmod 0644 'tdbsa/patches/ext2tdb-rename' ||
  $echo 'restore of' 'tdbsa/patches/ext2tdb-rename' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/ext2tdb-rename:' 'MD5 check failed'
13d7bf0a02ad81f08cf3e44c30d0614a  tdbsa/patches/ext2tdb-rename
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/ext2tdb-rename'`"
    test 2265 -eq "$shar_count" ||
    $echo 'tdbsa/patches/ext2tdb-rename:' 'original size' '2265,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/tdbtool-includes ==============
if test -f 'tdbsa/patches/tdbtool-includes' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/tdbtool-includes' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/tdbtool-includes' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/tdbtool-includes' &&
Index: tdbsa/tdbtool.c
===================================================================
--- tdbsa.orig/tdbtool.c
+++ tdbsa/tdbtool.c
@@ -21,10 +21,21 @@
X    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
X */
X 
-#include "replace.h"
-#include "system/locale.h"
-#include "system/time.h"
-#include "system/filesys.h"
+#include <errno.h>
+#include <stdlib.h>
+#include <stdio.h>
+#include <fcntl.h>
+#include <unistd.h>
+#include <string.h>
+#include <fcntl.h>
+#include <time.h>
+#include <sys/mman.h>
+#include <sys/stat.h>
+#include <sys/time.h>
+#include <ctype.h>
+#include <signal.h>
+#include <stdarg.h>
+
X #include "tdb.h"
X 
X static int do_command(void);
SHAR_EOF
  chmod 0644 'tdbsa/patches/tdbtool-includes' ||
  $echo 'restore of' 'tdbsa/patches/tdbtool-includes' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/tdbtool-includes:' 'MD5 check failed'
65f421c38dfe742c56d4cde7b4dcc2ca  tdbsa/patches/tdbtool-includes
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/tdbtool-includes'`"
    test 674 -eq "$shar_count" ||
    $echo 'tdbsa/patches/tdbtool-includes:' 'original size' '674,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/patches/static-functions ==============
if test -f 'tdbsa/patches/static-functions' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/patches/static-functions' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/patches/static-functions' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/patches/static-functions' &&
Index: tdbsa/tdb.c
===================================================================
--- tdbsa.orig/tdb.c
+++ tdbsa/tdb.c
@@ -2254,7 +2254,7 @@ int tdb_transaction_recover(struct tdb_c
X /* file: freelist.c */
X 
X /* read a freelist record and check for simple errors */
-int tdb_rec_free_read(struct tdb_context *tdb, tdb_off_t off, struct list_struct *rec)
+static int tdb_rec_free_read(struct tdb_context *tdb, tdb_off_t off, struct list_struct *rec)
X {
X 	if (tdb->methods->tdb_read(tdb, off, rec, sizeof(*rec),DOCONV()) == -1)
X 		return -1;
SHAR_EOF
  chmod 0644 'tdbsa/patches/static-functions' ||
  $echo 'restore of' 'tdbsa/patches/static-functions' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/patches/static-functions:' 'MD5 check failed'
090a51902b70a4433ba24b8ad98847e1  tdbsa/patches/static-functions
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/patches/static-functions'`"
    test 545 -eq "$shar_count" ||
    $echo 'tdbsa/patches/static-functions:' 'original size' '545,' 'current size' "$shar_count!"
  fi
fi
# ============= tdbsa/Makefile ==============
if test -f 'tdbsa/Makefile' && test "$first_param" != -c; then
  $echo 'x -' SKIPPING 'tdbsa/Makefile' '(file already exists)'
else
  $echo 'x -' extracting 'tdbsa/Makefile' '(text)'
  sed 's/^X//' << 'SHAR_EOF' > 'tdbsa/Makefile' &&
all: tdbtool
X
tdb.c tdb.h tdbtool.c: 
X	./build-tdb
X
tdbtool.o: tdbtool.c
X	gcc -c tdbtool.c
X
tdbtool: tdb.o tdbtool.o
X	gcc -o tdbtool tdb.o tdbtool.o
X
clean:
X	rm -f tdb.c tdb.h tdb.o tdbtool tdbtool.c tdbtool.o .svninfo
X	rm -rf .pc
X
SHAR_EOF
  chmod 0644 'tdbsa/Makefile' ||
  $echo 'restore of' 'tdbsa/Makefile' 'failed'
  if ( md5sum --help 2>&1 | grep 'sage: md5sum \[' ) >/dev/null 2>&1 \
  && ( md5sum --version 2>&1 | grep -v 'textutils 1.12' ) >/dev/null; then
    md5sum -c << SHAR_EOF >/dev/null 2>&1 \
    || $echo 'tdbsa/Makefile:' 'MD5 check failed'
d60a39bdfc602833f2ab64d04840da3c  tdbsa/Makefile
SHAR_EOF
  else
    shar_count="`LC_ALL= LC_CTYPE= LANG= wc -c < 'tdbsa/Makefile'`"
    test 232 -eq "$shar_count" ||
    $echo 'tdbsa/Makefile:' 'original size' '232,' 'current size' "$shar_count!"
  fi
fi
rm -fr _sh05242
exit 0



c l/ewoel1Fp