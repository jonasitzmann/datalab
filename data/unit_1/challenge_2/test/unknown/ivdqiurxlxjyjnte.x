From cc-devel-bounces@lists.ibiblio.org  Sat Jun 30 13:08:55 2007
Return-Path: <cc-devel-bounces@lists.ibiblio.org>
Received: from metalab.unc.edu (mail.metalab.unc.edu [152.46.7.112])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5UH8sL9009632
	for <ktwarwic@speedy.uwaterloo.ca>; Sat, 30 Jun 2007 13:08:54 -0400
Received: from malecky (unknown [152.46.7.119])
	by metalab.unc.edu (Postfix) with ESMTP id 3EAF148A85;
	Sat, 30 Jun 2007 13:08:50 -0400 (EDT)
X-Original-To: cc-devel@lists.ibiblio.org
Delivered-To: cc-devel@lists.ibiblio.org
Received: from nz-out-0506.google.com (nz-out-0506.google.com [64.233.162.225])
	by lists.ibiblio.org (Postfix) with ESMTP id 7E2084C010
	for <cc-devel@lists.ibiblio.org>; Sat, 30 Jun 2007 13:08:48 -0400 (EDT)
Received: by nz-out-0506.google.com with SMTP id m22so580109nzf
	for <cc-devel@lists.ibiblio.org>; Sat, 30 Jun 2007 10:08:48 -0700 (PDT)
Received: by 10.140.207.2 with SMTP id e2mr842223rvg.1183223327221;
	Sat, 30 Jun 2007 10:08:47 -0700 (PDT)
Received: from ?192.168.0.101? ( [67.160.97.153])
	by mx.google.com with ESMTP id f13sm13491764rvb.2007.06.30.10.08.44
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Sat, 30 Jun 2007 10:08:45 -0700 (PDT)
Message-ID: <46868E55.8020705@gmail.com>
Date: Sat, 30 Jun 2007 10:09:41 -0700
From: Jason Kivlighn <jkivlighn@gmail.com>
User-Agent: Thunderbird 2.0.0.4 (X11/20070618)
MIME-Version: 1.0
To: Jon Phillips <jon@rejon.org>
References: <E1I4Lwq-0004M5-B6@sc8-pr-svn3.sourceforge.net>
	<1183186813.11269.45.camel@localhost.localdomain>
In-Reply-To: <1183186813.11269.45.camel@localhost.localdomain>
X-Enigmail-Version: 0.95.0
Cc: CC Developer Mailing List <cc-devel@lists.ibiblio.org>
Subject: Re: [cc-devel] [Cctools-cvs] SF.net SVN: cctools: [6089]
	liblicense/trunk
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

1) xdg-mime is command-line only, making it a run-time dependency, which
I don't like.  If xdg-mime doesn't exist, we have to give up on
embedding because we won't know what i/o module to use. 2) xdgmime is in
cvs, so no svn:externals.

For a 100kb library, with relatively few updates (cvs shows some updates
3/4 weeks ago, and the updates before that were 12+ months ago), I think
it's worth it to remove the trouble of an external dependency, and
spawning xdg-mime and parsing it's output.

Jason

> Heya, why are you pulling in xdgmime into the tree? We should be
> depending on externals as much as possible. Can we avoid pulling this
> into the tree? And/or is it setup with svn externals if absolutely
> necessary to pull it in.
>
> Jon
>
> On Fri, 2007-06-29 at 12:16 -0700, jakin44@users.sourceforge.net wrote:
>   
>> Revision: 6089
>>           http://svn.sourceforge.net/cctools/?rev=6089&view=rev
>> Author:   jakin44
>> Date:     2007-06-29 12:16:02 -0700 (Fri, 29 Jun 2007)
>>
>> Log Message:
>> -----------
>> Pull in xdgmime from Freedesktop for mime-type detection.
>>
>> Modified Paths:
>> --------------
>>     liblicense/trunk/Makefile.am
>>     liblicense/trunk/configure.ac
>>
>> Added Paths:
>> -----------
>>     liblicense/trunk/xdgmime/
>>     liblicense/trunk/xdgmime/Makefile.am
>>     liblicense/trunk/xdgmime/xdgmime.c
>>     liblicense/trunk/xdgmime/xdgmime.h
>>     liblicense/trunk/xdgmime/xdgmimealias.c
>>     liblicense/trunk/xdgmime/xdgmimealias.h
>>     liblicense/trunk/xdgmime/xdgmimecache.c
>>     liblicense/trunk/xdgmime/xdgmimecache.h
>>     liblicense/trunk/xdgmime/xdgmimeglob.c
>>     liblicense/trunk/xdgmime/xdgmimeglob.h
>>     liblicense/trunk/xdgmime/xdgmimeint.c
>>     liblicense/trunk/xdgmime/xdgmimeint.h
>>     liblicense/trunk/xdgmime/xdgmimemagic.c
>>     liblicense/trunk/xdgmime/xdgmimemagic.h
>>     liblicense/trunk/xdgmime/xdgmimeparent.c
>>     liblicense/trunk/xdgmime/xdgmimeparent.h
>>
>> Modified: liblicense/trunk/Makefile.am
>> ===================================================================
>> --- liblicense/trunk/Makefile.am	2007-06-28 23:38:45 UTC (rev 6088)
>> +++ liblicense/trunk/Makefile.am	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -1,4 +1,4 @@
>> -SUBDIRS = . modules bindings tests
>> +SUBDIRS = . xdgmime modules bindings tests
>>  
>>  lib_LTLIBRARIES = liblicense.la
>>  
>> @@ -9,4 +9,4 @@
>>  	write_license.c \
>>  	system_default.c \
>>  	module_wrangler.c \
>> -	system_licenses.c 
>> \ No newline at end of file
>> +	system_licenses.c 
>>
>> Modified: liblicense/trunk/configure.ac
>> ===================================================================
>> --- liblicense/trunk/configure.ac	2007-06-28 23:38:45 UTC (rev 6088)
>> +++ liblicense/trunk/configure.ac	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -66,7 +66,7 @@
>>  # check for exempi
>>  ##################################################################
>>  
>> -EXEMPI_REQUIRED=1.99.1
>> +EXEMPI_REQUIRED=1.99.3
>>  
>>  AC_ARG_ENABLE(xmp, AC_HELP_STRING([--disable-xmp], [Disable XMP extraction]),,[enable_xmp=yes])
>>  if test "x$enable_xmp" = "xyes"; then
>> @@ -89,6 +89,7 @@
>>  	bindings/Makefile
>>  	bindings/python/Makefile
>>  	tests/Makefile
>> +	xdgmime/Makefile
>>  ])
>>  
>>  AC_CONFIG_HEADERS([config.h])
>>
>> Added: liblicense/trunk/xdgmime/Makefile.am
>> ===================================================================
>> --- liblicense/trunk/xdgmime/Makefile.am	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/Makefile.am	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,18 @@
>> +
>> +noinst_LTLIBRARIES = libxdgmime.la
>> +
>> +libxdgmime_la_SOURCES = \
>> +	xdgmime.c 	\
>> +	xdgmime.h	\
>> +	xdgmimealias.c	\
>> +	xdgmimealias.h	\
>> +	xdgmimecache.c	\
>> +	xdgmimecache.h	\
>> +	xdgmimeglob.c 	\
>> +	xdgmimeglob.h 	\
>> +	xdgmimeint.c 	\
>> +	xdgmimeint.h 	\
>> +	xdgmimemagic.c  \
>> +	xdgmimemagic.h	\
>> +	xdgmimeparent.c	\
>> +	xdgmimeparent.h
>>
>> Added: liblicense/trunk/xdgmime/xdgmime.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmime.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmime.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,828 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmime.c: XDG Mime Spec mime resolver.  Based on version 0.11 of the spec.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + * 
>> + * Copyright (C) 2003,2004  Red Hat, Inc.
>> + * Copyright (C) 2003,2004  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + * 
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include "xdgmime.h"
>> +#include "xdgmimeint.h"
>> +#include "xdgmimeglob.h"
>> +#include "xdgmimemagic.h"
>> +#include "xdgmimealias.h"
>> +#include "xdgmimeparent.h"
>> +#include "xdgmimecache.h"
>> +#include <stdio.h>
>> +#include <string.h>
>> +#include <sys/stat.h>
>> +#include <sys/types.h>
>> +#include <sys/time.h>
>> +#include <unistd.h>
>> +#include <assert.h>
>> +
>> +typedef struct XdgDirTimeList XdgDirTimeList;
>> +typedef struct XdgCallbackList XdgCallbackList;
>> +
>> +static int need_reread = TRUE;
>> +static time_t last_stat_time = 0;
>> +
>> +static XdgGlobHash *global_hash = NULL;
>> +static XdgMimeMagic *global_magic = NULL;
>> +static XdgAliasList *alias_list = NULL;
>> +static XdgParentList *parent_list = NULL;
>> +static XdgDirTimeList *dir_time_list = NULL;
>> +static XdgCallbackList *callback_list = NULL;
>> +
>> +XdgMimeCache **_caches = NULL;
>> +static int n_caches = 0;
>> +
>> +const char *xdg_mime_type_unknown = "application/octet-stream";
>> +
>> +
>> +enum
>> +{
>> +  XDG_CHECKED_UNCHECKED,
>> +  XDG_CHECKED_VALID,
>> +  XDG_CHECKED_INVALID
>> +};
>> +
>> +struct XdgDirTimeList
>> +{
>> +  time_t mtime;
>> +  char *directory_name;
>> +  int checked;
>> +  XdgDirTimeList *next;
>> +};
>> +
>> +struct XdgCallbackList
>> +{
>> +  XdgCallbackList *next;
>> +  XdgCallbackList *prev;
>> +  int              callback_id;
>> +  XdgMimeCallback  callback;
>> +  void            *data;
>> +  XdgMimeDestroy   destroy;
>> +};
>> +
>> +/* Function called by xdg_run_command_on_dirs.  If it returns TRUE, further
>> + * directories aren't looked at */
>> +typedef int (*XdgDirectoryFunc) (const char *directory,
>> +				 void       *user_data);
>> +
>> +static XdgDirTimeList *
>> +xdg_dir_time_list_new (void)
>> +{
>> +  XdgDirTimeList *retval;
>> +
>> +  retval = calloc (1, sizeof (XdgDirTimeList));
>> +  retval->checked = XDG_CHECKED_UNCHECKED;
>> +
>> +  return retval;
>> +}
>> +
>> +static void
>> +xdg_dir_time_list_free (XdgDirTimeList *list)
>> +{
>> +  XdgDirTimeList *next;
>> +
>> +  while (list)
>> +    {
>> +      next = list->next;
>> +      free (list->directory_name);
>> +      free (list);
>> +      list = next;
>> +    }
>> +}
>> +
>> +static int
>> +xdg_mime_init_from_directory (const char *directory)
>> +{
>> +  char *file_name;
>> +  struct stat st;
>> +  XdgDirTimeList *list;
>> +
>> +  assert (directory != NULL);
>> +
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/mime.cache") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/mime.cache");
>> +  if (stat (file_name, &st) == 0)
>> +    {
>> +      XdgMimeCache *cache = _xdg_mime_cache_new_from_file (file_name);
>> +
>> +      if (cache != NULL)
>> +	{
>> +	  list = xdg_dir_time_list_new ();
>> +	  list->directory_name = file_name;
>> +	  list->mtime = st.st_mtime;
>> +	  list->next = dir_time_list;
>> +	  dir_time_list = list;
>> +
>> +	  _caches = realloc (_caches, sizeof (XdgMimeCache *) * (n_caches + 2));
>> +	  _caches[n_caches] = cache;
>> +          _caches[n_caches + 1] = NULL;
>> +	  n_caches++;
>> +
>> +	  return FALSE;
>> +	}
>> +    }
>> +  free (file_name);
>> +
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/globs") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/globs");
>> +  if (stat (file_name, &st) == 0)
>> +    {
>> +      _xdg_mime_glob_read_from_file (global_hash, file_name);
>> +
>> +      list = xdg_dir_time_list_new ();
>> +      list->directory_name = file_name;
>> +      list->mtime = st.st_mtime;
>> +      list->next = dir_time_list;
>> +      dir_time_list = list;
>> +    }
>> +  else
>> +    {
>> +      free (file_name);
>> +    }
>> +
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/magic") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/magic");
>> +  if (stat (file_name, &st) == 0)
>> +    {
>> +      _xdg_mime_magic_read_from_file (global_magic, file_name);
>> +
>> +      list = xdg_dir_time_list_new ();
>> +      list->directory_name = file_name;
>> +      list->mtime = st.st_mtime;
>> +      list->next = dir_time_list;
>> +      dir_time_list = list;
>> +    }
>> +  else
>> +    {
>> +      free (file_name);
>> +    }
>> +
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/aliases") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/aliases");
>> +  _xdg_mime_alias_read_from_file (alias_list, file_name);
>> +  free (file_name);
>> +
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/subclasses") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/subclasses");
>> +  _xdg_mime_parent_read_from_file (parent_list, file_name);
>> +  free (file_name);
>> +
>> +  return FALSE; /* Keep processing */
>> +}
>> +
>> +/* Runs a command on all the directories in the search path */
>> +static void
>> +xdg_run_command_on_dirs (XdgDirectoryFunc  func,
>> +			 void             *user_data)
>> +{
>> +  const char *xdg_data_home;
>> +  const char *xdg_data_dirs;
>> +  const char *ptr;
>> +
>> +  xdg_data_home = getenv ("XDG_DATA_HOME");
>> +  if (xdg_data_home)
>> +    {
>> +      if ((func) (xdg_data_home, user_data))
>> +	return;
>> +    }
>> +  else
>> +    {
>> +      const char *home;
>> +
>> +      home = getenv ("HOME");
>> +      if (home != NULL)
>> +	{
>> +	  char *guessed_xdg_home;
>> +	  int stop_processing;
>> +
>> +	  guessed_xdg_home = malloc (strlen (home) + strlen ("/.local/share/") + 1);
>> +	  strcpy (guessed_xdg_home, home);
>> +	  strcat (guessed_xdg_home, "/.local/share/");
>> +	  stop_processing = (func) (guessed_xdg_home, user_data);
>> +	  free (guessed_xdg_home);
>> +
>> +	  if (stop_processing)
>> +	    return;
>> +	}
>> +    }
>> +
>> +  xdg_data_dirs = getenv ("XDG_DATA_DIRS");
>> +  if (xdg_data_dirs == NULL)
>> +    xdg_data_dirs = "/usr/local/share/:/usr/share/";
>> +
>> +  ptr = xdg_data_dirs;
>> +
>> +  while (*ptr != '\000')
>> +    {
>> +      const char *end_ptr;
>> +      char *dir;
>> +      int len;
>> +      int stop_processing;
>> +
>> +      end_ptr = ptr;
>> +      while (*end_ptr != ':' && *end_ptr != '\000')
>> +	end_ptr ++;
>> +
>> +      if (end_ptr == ptr)
>> +	{
>> +	  ptr++;
>> +	  continue;
>> +	}
>> +
>> +      if (*end_ptr == ':')
>> +	len = end_ptr - ptr;
>> +      else
>> +	len = end_ptr - ptr + 1;
>> +      dir = malloc (len + 1);
>> +      strncpy (dir, ptr, len);
>> +      dir[len] = '\0';
>> +      stop_processing = (func) (dir, user_data);
>> +      free (dir);
>> +
>> +      if (stop_processing)
>> +	return;
>> +
>> +      ptr = end_ptr;
>> +    }
>> +}
>> +
>> +/* Checks file_path to make sure it has the same mtime as last time it was
>> + * checked.  If it has a different mtime, or if the file doesn't exist, it
>> + * returns FALSE.
>> + *
>> + * FIXME: This doesn't protect against permission changes.
>> + */
>> +static int
>> +xdg_check_file (const char *file_path)
>> +{
>> +  struct stat st;
>> +
>> +  /* If the file exists */
>> +  if (stat (file_path, &st) == 0)
>> +    {
>> +      XdgDirTimeList *list;
>> +
>> +      for (list = dir_time_list; list; list = list->next)
>> +	{
>> +	  if (! strcmp (list->directory_name, file_path) &&
>> +	      st.st_mtime == list->mtime)
>> +	    {
>> +	      if (list->checked == XDG_CHECKED_UNCHECKED)
>> +		list->checked = XDG_CHECKED_VALID;
>> +	      else if (list->checked == XDG_CHECKED_VALID)
>> +		list->checked = XDG_CHECKED_INVALID;
>> +
>> +	      return (list->checked != XDG_CHECKED_VALID);
>> +	    }
>> +	}
>> +      return TRUE;
>> +    }
>> +
>> +  return FALSE;
>> +}
>> +
>> +static int
>> +xdg_check_dir (const char *directory,
>> +	       int        *invalid_dir_list)
>> +{
>> +  int invalid;
>> +  char *file_name;
>> +
>> +  assert (directory != NULL);
>> +
>> +  /* Check the globs file */
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/globs") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/globs");
>> +  invalid = xdg_check_file (file_name);
>> +  free (file_name);
>> +  if (invalid)
>> +    {
>> +      *invalid_dir_list = TRUE;
>> +      return TRUE;
>> +    }
>> +
>> +  /* Check the magic file */
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/magic") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/magic");
>> +  invalid = xdg_check_file (file_name);
>> +  free (file_name);
>> +  if (invalid)
>> +    {
>> +      *invalid_dir_list = TRUE;
>> +      return TRUE;
>> +    }
>> +
>> +  /* Check the mime.cache file */
>> +  file_name = malloc (strlen (directory) + strlen ("/mime/mime.cache") + 1);
>> +  strcpy (file_name, directory); strcat (file_name, "/mime/mime.cache");
>> +  invalid = xdg_check_file (file_name);
>> +  free (file_name);
>> +  if (invalid)
>> +    {
>> +      *invalid_dir_list = TRUE;
>> +      return TRUE;
>> +    }
>> +
>> +  return FALSE; /* Keep processing */
>> +}
>> +
>> +/* Walks through all the mime files stat()ing them to see if they've changed.
>> + * Returns TRUE if they have. */
>> +static int
>> +xdg_check_dirs (void)
>> +{
>> +  XdgDirTimeList *list;
>> +  int invalid_dir_list = FALSE;
>> +
>> +  for (list = dir_time_list; list; list = list->next)
>> +    list->checked = XDG_CHECKED_UNCHECKED;
>> +
>> +  xdg_run_command_on_dirs ((XdgDirectoryFunc) xdg_check_dir,
>> +			   &invalid_dir_list);
>> +
>> +  if (invalid_dir_list)
>> +    return TRUE;
>> +
>> +  for (list = dir_time_list; list; list = list->next)
>> +    {
>> +      if (list->checked != XDG_CHECKED_VALID)
>> +	return TRUE;
>> +    }
>> +
>> +  return FALSE;
>> +}
>> +
>> +/* We want to avoid stat()ing on every single mime call, so we only look for
>> + * newer files every 5 seconds.  This will return TRUE if we need to reread the
>> + * mime data from disk.
>> + */
>> +static int
>> +xdg_check_time_and_dirs (void)
>> +{
>> +  struct timeval tv;
>> +  time_t current_time;
>> +  int retval = FALSE;
>> +
>> +  gettimeofday (&tv, NULL);
>> +  current_time = tv.tv_sec;
>> +
>> +  if (current_time >= last_stat_time + 5)
>> +    {
>> +      retval = xdg_check_dirs ();
>> +      last_stat_time = current_time;
>> +    }
>> +
>> +  return retval;
>> +}
>> +
>> +/* Called in every public function.  It reloads the hash function if need be.
>> + */
>> +static void
>> +xdg_mime_init (void)
>> +{
>> +  if (xdg_check_time_and_dirs ())
>> +    {
>> +      xdg_mime_shutdown ();
>> +    }
>> +
>> +  if (need_reread)
>> +    {
>> +      global_hash = _xdg_glob_hash_new ();
>> +      global_magic = _xdg_mime_magic_new ();
>> +      alias_list = _xdg_mime_alias_list_new ();
>> +      parent_list = _xdg_mime_parent_list_new ();
>> +
>> +      xdg_run_command_on_dirs ((XdgDirectoryFunc) xdg_mime_init_from_directory,
>> +			       NULL);
>> +
>> +      need_reread = FALSE;
>> +    }
>> +}
>> +
>> +const char *
>> +xdg_mime_get_mime_type_for_data (const void *data,
>> +				 size_t      len)
>> +{
>> +  const char *mime_type;
>> +
>> +  xdg_mime_init ();
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_get_mime_type_for_data (data, len);
>> +
>> +  mime_type = _xdg_mime_magic_lookup_data (global_magic, data, len, NULL, 0);
>> +
>> +  if (mime_type)
>> +    return mime_type;
>> +
>> +  return XDG_MIME_TYPE_UNKNOWN;
>> +}
>> +
>> +const char *
>> +xdg_mime_get_mime_type_for_file (const char  *file_name,
>> +                                 struct stat *statbuf)
>> +{
>> +  const char *mime_type;
>> +  /* currently, only a few globs occur twice, and none
>> +   * more often, so 5 seems plenty.
>> +   */
>> +  const char *mime_types[5];
>> +  FILE *file;
>> +  unsigned char *data;
>> +  int max_extent;
>> +  int bytes_read;
>> +  struct stat buf;
>> +  const char *base_name;
>> +  int n;
>> +
>> +  if (file_name == NULL)
>> +    return NULL;
>> +  if (! _xdg_utf8_validate (file_name))
>> +    return NULL;
>> +
>> +  xdg_mime_init ();
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_get_mime_type_for_file (file_name, statbuf);
>> +
>> +  base_name = _xdg_get_base_name (file_name);
>> +  n = _xdg_glob_hash_lookup_file_name (global_hash, base_name, mime_types, 5);
>> +
>> +  if (n == 1)
>> +    return mime_types[0];
>> +
>> +  if (!statbuf)
>> +    {
>> +      if (stat (file_name, &buf) != 0)
>> +	return XDG_MIME_TYPE_UNKNOWN;
>> +
>> +      statbuf = &buf;
>> +    }
>> +
>> +  if (!S_ISREG (statbuf->st_mode))
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +
>> +  /* FIXME: Need to make sure that max_extent isn't totally broken.  This could
>> +   * be large and need getting from a stream instead of just reading it all
>> +   * in. */
>> +  max_extent = _xdg_mime_magic_get_buffer_extents (global_magic);
>> +  data = malloc (max_extent);
>> +  if (data == NULL)
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +        
>> +  file = fopen (file_name, "r");
>> +  if (file == NULL)
>> +    {
>> +      free (data);
>> +      return XDG_MIME_TYPE_UNKNOWN;
>> +    }
>> +
>> +  bytes_read = fread (data, 1, max_extent, file);
>> +  if (ferror (file))
>> +    {
>> +      free (data);
>> +      fclose (file);
>> +      return XDG_MIME_TYPE_UNKNOWN;
>> +    }
>> +
>> +  mime_type = _xdg_mime_magic_lookup_data (global_magic, data, bytes_read,
>> +					   mime_types, n);
>> +
>> +  free (data);
>> +  fclose (file);
>> +
>> +  if (mime_type)
>> +    return mime_type;
>> +
>> +  return XDG_MIME_TYPE_UNKNOWN;
>> +}
>> +
>> +const char *
>> +xdg_mime_get_mime_type_from_file_name (const char *file_name)
>> +{
>> +  const char *mime_types[2];
>> +
>> +  xdg_mime_init ();
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_get_mime_type_from_file_name (file_name);
>> +
>> +  if (_xdg_glob_hash_lookup_file_name (global_hash, file_name, mime_types, 2) == 1)
>> +    return mime_types[0];
>> +  else
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +}
>> +
>> +int
>> +xdg_mime_is_valid_mime_type (const char *mime_type)
>> +{
>> +  /* FIXME: We should make this a better test
>> +   */
>> +  return _xdg_utf8_validate (mime_type);
>> +}
>> +
>> +void
>> +xdg_mime_shutdown (void)
>> +{
>> +  XdgCallbackList *list;
>> +
>> +  /* FIXME: Need to make this (and the whole library) thread safe */
>> +  if (dir_time_list)
>> +    {
>> +      xdg_dir_time_list_free (dir_time_list);
>> +      dir_time_list = NULL;
>> +    }
>> +	
>> +  if (global_hash)
>> +    {
>> +      _xdg_glob_hash_free (global_hash);
>> +      global_hash = NULL;
>> +    }
>> +  if (global_magic)
>> +    {
>> +      _xdg_mime_magic_free (global_magic);
>> +      global_magic = NULL;
>> +    }
>> +
>> +  if (alias_list)
>> +    {
>> +      _xdg_mime_alias_list_free (alias_list);
>> +      alias_list = NULL;
>> +    }
>> +
>> +  if (parent_list)
>> +    {
>> +      _xdg_mime_parent_list_free (parent_list);
>> +      parent_list = NULL;
>> +    }
>> +  
>> +  for (list = callback_list; list; list = list->next)
>> +    (list->callback) (list->data);
>> +
>> +  need_reread = TRUE;
>> +}
>> +
>> +int
>> +xdg_mime_get_max_buffer_extents (void)
>> +{
>> +  xdg_mime_init ();
>> +  
>> +  if (_caches)
>> +    return _xdg_mime_cache_get_max_buffer_extents ();
>> +
>> +  return _xdg_mime_magic_get_buffer_extents (global_magic);
>> +}
>> +
>> +static const char *
>> +_xdg_mime_unalias_mime_type (const char *mime_type)
>> +{
>> +  const char *lookup;
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_unalias_mime_type (mime_type);
>> +
>> +  if ((lookup = _xdg_mime_alias_list_lookup (alias_list, mime_type)) != NULL)
>> +    return lookup;
>> +
>> +  return mime_type;
>> +}
>> +
>> +const char *
>> +xdg_mime_unalias_mime_type (const char *mime_type)
>> +{
>> +  xdg_mime_init ();
>> +
>> +  return _xdg_mime_unalias_mime_type (mime_type);
>> +}
>> +
>> +int
>> +_xdg_mime_mime_type_equal (const char *mime_a,
>> +			   const char *mime_b)
>> +{
>> +  const char *unalias_a, *unalias_b;
>> +
>> +  unalias_a = _xdg_mime_unalias_mime_type (mime_a);
>> +  unalias_b = _xdg_mime_unalias_mime_type (mime_b);
>> +
>> +  if (strcmp (unalias_a, unalias_b) == 0)
>> +    return 1;
>> +
>> +  return 0;
>> +}
>> +
>> +int
>> +xdg_mime_mime_type_equal (const char *mime_a,
>> +			  const char *mime_b)
>> +{
>> +  xdg_mime_init ();
>> +
>> +  return _xdg_mime_mime_type_equal (mime_a, mime_b);
>> +}
>> +
>> +int
>> +xdg_mime_media_type_equal (const char *mime_a,
>> +			   const char *mime_b)
>> +{
>> +  char *sep;
>> +
>> +  xdg_mime_init ();
>> +
>> +  sep = strchr (mime_a, '/');
>> +  
>> +  if (sep && strncmp (mime_a, mime_b, sep - mime_a + 1) == 0)
>> +    return 1;
>> +
>> +  return 0;
>> +}
>> +
>> +#if 0
>> +static int
>> +xdg_mime_is_super_type (const char *mime)
>> +{
>> +  int length;
>> +  const char *type;
>> +
>> +  length = strlen (mime);
>> +  type = &(mime[length - 2]);
>> +
>> +  if (strcmp (type, "/*") == 0)
>> +    return 1;
>> +
>> +  return 0;
>> +}
>> +#endif
>> +
>> +int
>> +_xdg_mime_mime_type_subclass (const char *mime,
>> +			      const char *base)
>> +{
>> +  const char *umime, *ubase;
>> +  const char **parents;
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_mime_type_subclass (mime, base);
>> +
>> +  umime = _xdg_mime_unalias_mime_type (mime);
>> +  ubase = _xdg_mime_unalias_mime_type (base);
>> +
>> +  if (strcmp (umime, ubase) == 0)
>> +    return 1;
>> +
>> +#if 0  
>> +  /* Handle supertypes */
>> +  if (xdg_mime_is_super_type (ubase) &&
>> +      xdg_mime_media_type_equal (umime, ubase))
>> +    return 1;
>> +#endif
>> +
>> +  /*  Handle special cases text/plain and application/octet-stream */
>> +  if (strcmp (ubase, "text/plain") == 0 && 
>> +      strncmp (umime, "text/", 5) == 0)
>> +    return 1;
>> +
>> +  if (strcmp (ubase, "application/octet-stream") == 0)
>> +    return 1;
>> +  
>> +  parents = _xdg_mime_parent_list_lookup (parent_list, umime);
>> +  for (; parents && *parents; parents++)
>> +    {
>> +      if (_xdg_mime_mime_type_subclass (*parents, ubase))
>> +	return 1;
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +int
>> +xdg_mime_mime_type_subclass (const char *mime,
>> +			     const char *base)
>> +{
>> +  xdg_mime_init ();
>> +
>> +  return _xdg_mime_mime_type_subclass (mime, base);
>> +}
>> +
>> +char **
>> +xdg_mime_list_mime_parents (const char *mime)
>> +{
>> +  const char **parents;
>> +  char **result;
>> +  int i, n;
>> +
>> +  if (_caches)
>> +    return _xdg_mime_cache_list_mime_parents (mime);
>> +
>> +  parents = xdg_mime_get_mime_parents (mime);
>> +
>> +  if (!parents)
>> +    return NULL;
>> +
>> +  for (i = 0; parents[i]; i++) ;
>> +  
>> +  n = (i + 1) * sizeof (char *);
>> +  result = (char **) malloc (n);
>> +  memcpy (result, parents, n);
>> +
>> +  return result;
>> +}
>> +
>> +const char **
>> +xdg_mime_get_mime_parents (const char *mime)
>> +{
>> +  const char *umime;
>> +
>> +  xdg_mime_init ();
>> +
>> +  umime = _xdg_mime_unalias_mime_type (mime);
>> +
>> +  return _xdg_mime_parent_list_lookup (parent_list, umime);
>> +}
>> +
>> +void 
>> +xdg_mime_dump (void)
>> +{
>> +  printf ("*** ALIASES ***\n\n");
>> +  _xdg_mime_alias_list_dump (alias_list);
>> +  printf ("\n*** PARENTS ***\n\n");
>> +  _xdg_mime_parent_list_dump (parent_list);
>> +}
>> +
>> +
>> +/* Registers a function to be called every time the mime database reloads its files
>> + */
>> +int
>> +xdg_mime_register_reload_callback (XdgMimeCallback  callback,
>> +				   void            *data,
>> +				   XdgMimeDestroy   destroy)
>> +{
>> +  XdgCallbackList *list_el;
>> +  static int callback_id = 1;
>> +
>> +  /* Make a new list element */
>> +  list_el = calloc (1, sizeof (XdgCallbackList));
>> +  list_el->callback_id = callback_id;
>> +  list_el->callback = callback;
>> +  list_el->data = data;
>> +  list_el->destroy = destroy;
>> +  list_el->next = callback_list;
>> +  if (list_el->next)
>> +    list_el->next->prev = list_el;
>> +
>> +  callback_list = list_el;
>> +  callback_id ++;
>> +
>> +  return callback_id - 1;
>> +}
>> +
>> +void
>> +xdg_mime_remove_callback (int callback_id)
>> +{
>> +  XdgCallbackList *list;
>> +
>> +  for (list = callback_list; list; list = list->next)
>> +    {
>> +      if (list->callback_id == callback_id)
>> +	{
>> +	  if (list->next)
>> +	    list->next = list->prev;
>> +
>> +	  if (list->prev)
>> +	    list->prev->next = list->next;
>> +	  else
>> +	    callback_list = list->next;
>> +
>> +	  /* invoke the destroy handler */
>> +	  (list->destroy) (list->data);
>> +	  free (list);
>> +	  return;
>> +	}
>> +    }
>> +}
>>
>> Added: liblicense/trunk/xdgmime/xdgmime.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmime.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmime.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,108 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmime.h: XDG Mime Spec mime resolver.  Based on version 0.11 of the spec.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + * 
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + * 
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +
>> +#ifndef __XDG_MIME_H__
>> +#define __XDG_MIME_H__
>> +
>> +#include <stdlib.h>
>> +#include <sys/stat.h>
>> +
>> +#ifdef __cplusplus
>> +extern "C" {
>> +#endif /* __cplusplus */
>> +
>> +#ifdef XDG_PREFIX
>> +#define XDG_ENTRY(func) _XDG_ENTRY2(XDG_PREFIX,func)
>> +#define _XDG_ENTRY2(prefix,func) _XDG_ENTRY3(prefix,func)
>> +#define _XDG_ENTRY3(prefix,func) prefix##_##func
>> +#endif
>> +
>> +typedef void (*XdgMimeCallback) (void *user_data);
>> +typedef void (*XdgMimeDestroy)  (void *user_data);
>> +
>> +  
>> +#ifdef XDG_PREFIX
>> +#define xdg_mime_get_mime_type_for_data       XDG_ENTRY(get_mime_type_for_data)
>> +#define xdg_mime_get_mime_type_for_file       XDG_ENTRY(get_mime_type_for_file)
>> +#define xdg_mime_get_mime_type_from_file_name XDG_ENTRY(get_mime_type_from_file_name)
>> +#define xdg_mime_is_valid_mime_type           XDG_ENTRY(is_valid_mime_type)
>> +#define xdg_mime_mime_type_equal              XDG_ENTRY(mime_type_equal)
>> +#define xdg_mime_media_type_equal             XDG_ENTRY(media_type_equal)
>> +#define xdg_mime_mime_type_subclass           XDG_ENTRY(mime_type_subclass)
>> +#define xdg_mime_get_mime_parents             XDG_ENTRY(get_mime_parents)
>> +#define xdg_mime_list_mime_parents            XDG_ENTRY(list_mime_parents)
>> +#define xdg_mime_unalias_mime_type            XDG_ENTRY(unalias_mime_type)
>> +#define xdg_mime_get_max_buffer_extents       XDG_ENTRY(get_max_buffer_extents)
>> +#define xdg_mime_shutdown                     XDG_ENTRY(shutdown)
>> +#define xdg_mime_register_reload_callback     XDG_ENTRY(register_reload_callback)
>> +#define xdg_mime_remove_callback              XDG_ENTRY(remove_callback)
>> +#define xdg_mime_type_unknown                 XDG_ENTRY(type_unknown)
>> +#endif
>> +
>> +extern const char *xdg_mime_type_unknown;
>> +#define XDG_MIME_TYPE_UNKNOWN xdg_mime_type_unknown
>> +
>> +const char  *xdg_mime_get_mime_type_for_data       (const void *data,
>> +						    size_t      len);
>> +const char  *xdg_mime_get_mime_type_for_file       (const char *file_name,
>> +                                                    struct stat *statbuf);
>> +const char  *xdg_mime_get_mime_type_from_file_name (const char *file_name);
>> +int          xdg_mime_is_valid_mime_type           (const char *mime_type);
>> +int          xdg_mime_mime_type_equal              (const char *mime_a,
>> +						    const char *mime_b);
>> +int          xdg_mime_media_type_equal             (const char *mime_a,
>> +						    const char *mime_b);
>> +int          xdg_mime_mime_type_subclass           (const char *mime_a,
>> +						    const char *mime_b);
>> +  /* xdg_mime_get_mime_parents() is deprecated since it does
>> +   * not work correctly with caches. Use xdg_mime_list_parents() 
>> +   * instead, but notice that that function expects you to free
>> +   * the array it returns. 
>> +   */
>> +const char **xdg_mime_get_mime_parents		   (const char *mime);
>> +char **      xdg_mime_list_mime_parents		   (const char *mime);
>> +const char  *xdg_mime_unalias_mime_type		   (const char *mime);
>> +int          xdg_mime_get_max_buffer_extents       (void);
>> +void         xdg_mime_shutdown                     (void);
>> +void         xdg_mime_dump                         (void);
>> +int          xdg_mime_register_reload_callback     (XdgMimeCallback  callback,
>> +						    void            *data,
>> +						    XdgMimeDestroy   destroy);
>> +void         xdg_mime_remove_callback              (int              callback_id);
>> +
>> +  /* Private versions of functions that don't call xdg_mime_init () */
>> +int          _xdg_mime_mime_type_equal             (const char *mime_a,
>> +						    const char *mime_b);
>> +int          _xdg_mime_mime_type_subclass          (const char *mime,
>> +						    const char *base);
>> +
>> +#ifdef __cplusplus
>> +}
>> +#endif /* __cplusplus */
>> +
>> +#endif /* __XDG_MIME_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimealias.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimealias.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimealias.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,184 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimealias.c: Private file.  Datastructure for storing the aliases.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2004  Red Hat, Inc.
>> + * Copyright (C) 2004  Matthias Clasen <mclasen@redhat.com>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include "xdgmimealias.h"
>> +#include "xdgmimeint.h"
>> +#include <stdlib.h>
>> +#include <stdio.h>
>> +#include <assert.h>
>> +#include <string.h>
>> +#include <fnmatch.h>
>> +
>> +#ifndef	FALSE
>> +#define	FALSE	(0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE	(!FALSE)
>> +#endif
>> +
>> +typedef struct XdgAlias XdgAlias;
>> +
>> +struct XdgAlias 
>> +{
>> +  char *alias;
>> +  char *mime_type;
>> +};
>> +
>> +struct XdgAliasList
>> +{
>> +  struct XdgAlias *aliases;
>> +  int n_aliases;
>> +};
>> +
>> +XdgAliasList *
>> +_xdg_mime_alias_list_new (void)
>> +{
>> +  XdgAliasList *list;
>> +
>> +  list = malloc (sizeof (XdgAliasList));
>> +
>> +  list->aliases = NULL;
>> +  list->n_aliases = 0;
>> +
>> +  return list;
>> +}
>> +
>> +void         
>> +_xdg_mime_alias_list_free (XdgAliasList *list)
>> +{
>> +  int i;
>> +
>> +  if (list->aliases)
>> +    {
>> +      for (i = 0; i < list->n_aliases; i++)
>> +	{
>> +	  free (list->aliases[i].alias);
>> +	  free (list->aliases[i].mime_type);
>> +	}
>> +      free (list->aliases);
>> +    }
>> +  free (list);
>> +}
>> +
>> +static int
>> +alias_entry_cmp (const void *v1, const void *v2)
>> +{
>> +  return strcmp (((XdgAlias *)v1)->alias, ((XdgAlias *)v2)->alias);
>> +}
>> +
>> +const char  *
>> +_xdg_mime_alias_list_lookup (XdgAliasList *list,
>> +			     const char   *alias)
>> +{
>> +  XdgAlias *entry;
>> +  XdgAlias key;
>> +
>> +  if (list->n_aliases > 0)
>> +    {
>> +      key.alias = (char *)alias;
>> +      key.mime_type = 0;
>> +
>> +      entry = bsearch (&key, list->aliases, list->n_aliases,
>> +		       sizeof (XdgAlias), alias_entry_cmp);
>> +      if (entry)
>> +        return entry->mime_type;
>> +    }
>> +
>> +  return NULL;
>> +}
>> +
>> +void
>> +_xdg_mime_alias_read_from_file (XdgAliasList *list,
>> +				const char   *file_name)
>> +{
>> +  FILE *file;
>> +  char line[255];
>> +  int alloc;
>> +
>> +  file = fopen (file_name, "r");
>> +
>> +  if (file == NULL)
>> +    return;
>> +
>> +  /* FIXME: Not UTF-8 safe.  Doesn't work if lines are greater than 255 chars.
>> +   * Blah */
>> +  alloc = list->n_aliases + 16;
>> +  list->aliases = realloc (list->aliases, alloc * sizeof (XdgAlias));
>> +  while (fgets (line, 255, file) != NULL)
>> +    {
>> +      char *sep;
>> +      if (line[0] == '#')
>> +	continue;
>> +
>> +      sep = strchr (line, ' ');
>> +      if (sep == NULL)
>> +	continue;
>> +      *(sep++) = '\000';
>> +      sep[strlen (sep) -1] = '\000';
>> +      if (list->n_aliases == alloc)
>> +	{
>> +	  alloc <<= 1;
>> +	  list->aliases = realloc (list->aliases, 
>> +				   alloc * sizeof (XdgAlias));
>> +	}
>> +      list->aliases[list->n_aliases].alias = strdup (line);
>> +      list->aliases[list->n_aliases].mime_type = strdup (sep);
>> +      list->n_aliases++;
>> +    }
>> +  list->aliases = realloc (list->aliases, 
>> +			   list->n_aliases * sizeof (XdgAlias));
>> +
>> +  fclose (file);  
>> +  
>> +  if (list->n_aliases > 1)
>> +    qsort (list->aliases, list->n_aliases, 
>> +           sizeof (XdgAlias), alias_entry_cmp);
>> +}
>> +
>> +
>> +void
>> +_xdg_mime_alias_list_dump (XdgAliasList *list)
>> +{
>> +  int i;
>> +
>> +  if (list->aliases)
>> +    {
>> +      for (i = 0; i < list->n_aliases; i++)
>> +	{
>> +	  printf ("%s %s\n", 
>> +		  list->aliases[i].alias,
>> +		  list->aliases[i].mime_type);
>> +	}
>> +    }
>> +}
>> +
>> +
>>
>> Added: liblicense/trunk/xdgmime/xdgmimealias.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimealias.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimealias.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,50 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimealias.h: Private file.  Datastructure for storing the aliases.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2004  Red Hat, Inc.
>> + * Copyright (C) 200  Matthias Clasen <mclasen@redhat.com>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifndef __XDG_MIME_ALIAS_H__
>> +#define __XDG_MIME_ALIAS_H__
>> +
>> +#include "xdgmime.h"
>> +
>> +typedef struct XdgAliasList XdgAliasList;
>> +
>> +#ifdef XDG_PREFIX
>> +#define _xdg_mime_alias_read_from_file        XDG_ENTRY(alias_read_from_file)
>> +#define _xdg_mime_alias_list_new              XDG_ENTRY(alias_list_new)
>> +#define _xdg_mime_alias_list_free             XDG_ENTRY(alias_list_free)
>> +#define _xdg_mime_alias_list_lookup           XDG_ENTRY(alias_list_lookup)
>> +#endif
>> +
>> +void          _xdg_mime_alias_read_from_file (XdgAliasList *list,
>> +					      const char   *file_name);
>> +XdgAliasList *_xdg_mime_alias_list_new       (void);
>> +void          _xdg_mime_alias_list_free      (XdgAliasList *list);
>> +const char   *_xdg_mime_alias_list_lookup    (XdgAliasList *list,
>> +					      const char  *alias);
>> +void          _xdg_mime_alias_list_dump      (XdgAliasList *list);
>> +
>> +#endif /* __XDG_MIME_ALIAS_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimecache.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimecache.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimecache.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,901 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimealias.c: Private file.  mmappable caches for mime data
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2005  Matthias Clasen <mclasen@redhat.com>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <string.h>
>> +
>> +#include <fcntl.h>
>> +#include <unistd.h>
>> +#include <fnmatch.h>
>> +#include <assert.h>
>> +
>> +#include <netinet/in.h> /* for ntohl/ntohs */
>> +
>> +#ifdef HAVE_MMAP
>> +#include <sys/mman.h>
>> +#endif
>> +
>> +#include <sys/stat.h>
>> +#include <sys/types.h>
>> +
>> +#include "xdgmimecache.h"
>> +#include "xdgmimeint.h"
>> +
>> +#ifndef MAX
>> +#define MAX(a,b) ((a) > (b) ? (a) : (b))
>> +#endif
>> +
>> +#ifndef	FALSE
>> +#define	FALSE	(0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE	(!FALSE)
>> +#endif
>> +
>> +#ifndef _O_BINARY
>> +#define _O_BINARY 0
>> +#endif
>> +
>> +#ifndef MAP_FAILED
>> +#define MAP_FAILED ((void *) -1)
>> +#endif
>> +
>> +#define MAJOR_VERSION 1
>> +#define MINOR_VERSION 0
>> +
>> +struct _XdgMimeCache
>> +{
>> +  int ref_count;
>> +
>> +  size_t  size;
>> +  char   *buffer;
>> +};
>> +
>> +#define GET_UINT16(cache,offset) (ntohs(*(xdg_uint16_t*)((cache) + (offset))))
>> +#define GET_UINT32(cache,offset) (ntohl(*(xdg_uint32_t*)((cache) + (offset))))
>> +
>> +XdgMimeCache *
>> +_xdg_mime_cache_ref (XdgMimeCache *cache)
>> +{
>> +  cache->ref_count++;
>> +  return cache;
>> +}
>> +
>> +void
>> +_xdg_mime_cache_unref (XdgMimeCache *cache)
>> +{
>> +  cache->ref_count--;
>> +
>> +  if (cache->ref_count == 0)
>> +    {
>> +#ifdef HAVE_MMAP
>> +      munmap (cache->buffer, cache->size);
>> +#endif
>> +      free (cache);
>> +    }
>> +}
>> +
>> +XdgMimeCache *
>> +_xdg_mime_cache_new_from_file (const char *file_name)
>> +{
>> +  XdgMimeCache *cache = NULL;
>> +
>> +#ifdef HAVE_MMAP
>> +  int fd = -1;
>> +  struct stat st;
>> +  char *buffer = NULL;
>> +
>> +  /* Open the file and map it into memory */
>> +  fd = open (file_name, O_RDONLY|_O_BINARY, 0);
>> +
>> +  if (fd < 0)
>> +    return NULL;
>> +  
>> +  if (fstat (fd, &st) < 0 || st.st_size < 4)
>> +    goto done;
>> +
>> +  buffer = (char *) mmap (NULL, st.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
>> +
>> +  if (buffer == MAP_FAILED)
>> +    goto done;
>> +
>> +  /* Verify version */
>> +  if (GET_UINT16 (buffer, 0) != MAJOR_VERSION ||
>> +      GET_UINT16 (buffer, 2) != MINOR_VERSION)
>> +    {
>> +      munmap (buffer, st.st_size);
>> +
>> +      goto done;
>> +    }
>> +  
>> +  cache = (XdgMimeCache *) malloc (sizeof (XdgMimeCache));
>> +  cache->ref_count = 1;
>> +  cache->buffer = buffer;
>> +  cache->size = st.st_size;
>> +
>> + done:
>> +  if (fd != -1)
>> +    close (fd);
>> +
>> +#endif  /* HAVE_MMAP */
>> +
>> +  return cache;
>> +}
>> +
>> +static int
>> +cache_magic_matchlet_compare_to_data (XdgMimeCache *cache, 
>> +				      xdg_uint32_t  offset,
>> +				      const void   *data,
>> +				      size_t        len)
>> +{
>> +  xdg_uint32_t range_start = GET_UINT32 (cache->buffer, offset);
>> +  xdg_uint32_t range_length = GET_UINT32 (cache->buffer, offset + 4);
>> +  xdg_uint32_t data_length = GET_UINT32 (cache->buffer, offset + 12);
>> +  xdg_uint32_t data_offset = GET_UINT32 (cache->buffer, offset + 16);
>> +  xdg_uint32_t mask_offset = GET_UINT32 (cache->buffer, offset + 20);
>> +  
>> +  unsigned int i, j;
>> +
>> +  for (i = range_start; i <= range_start + range_length; i++)
>> +    {
>> +      int valid_matchlet = TRUE;
>> +      
>> +      if (i + data_length > len)
>> +	return FALSE;
>> +
>> +      if (mask_offset)
>> +	{
>> +	  for (j = 0; j < data_length; j++)
>> +	    {
>> +	      if ((((unsigned char *)cache->buffer)[data_offset + j] & ((unsigned char *)cache->buffer)[mask_offset + j]) !=
>> +		  ((((unsigned char *) data)[j + i]) & ((unsigned char *)cache->buffer)[mask_offset + j]))
>> +		{
>> +		  valid_matchlet = FALSE;
>> +		  break;
>> +		}
>> +	    }
>> +	}
>> +      else
>> +	{
>> +	  for (j = 0; j < data_length; j++)
>> +	    {
>> +	      if (((unsigned char *)cache->buffer)[data_offset + j] != ((unsigned char *) data)[j + i])
>> +		{
>> +		  valid_matchlet = FALSE;
>> +		  break;
>> +		}
>> +	    }
>> +	}
>> +      
>> +      if (valid_matchlet)
>> +	return TRUE;
>> +    }
>> +  
>> +  return FALSE;  
>> +}
>> +
>> +static int
>> +cache_magic_matchlet_compare (XdgMimeCache *cache, 
>> +			      xdg_uint32_t  offset,
>> +			      const void   *data,
>> +			      size_t        len)
>> +{
>> +  xdg_uint32_t n_children = GET_UINT32 (cache->buffer, offset + 24);
>> +  xdg_uint32_t child_offset = GET_UINT32 (cache->buffer, offset + 28);
>> +
>> +  unsigned int i;
>> +  
>> +  if (cache_magic_matchlet_compare_to_data (cache, offset, data, len))
>> +    {
>> +      if (n_children == 0)
>> +	return TRUE;
>> +      
>> +      for (i = 0; i < n_children; i++)
>> +	{
>> +	  if (cache_magic_matchlet_compare (cache, child_offset + 32 * i,
>> +					    data, len))
>> +	    return TRUE;
>> +	}
>> +    }
>> +  
>> +  return FALSE;  
>> +}
>> +
>> +static const char *
>> +cache_magic_compare_to_data (XdgMimeCache *cache, 
>> +			     xdg_uint32_t  offset,
>> +			     const void   *data, 
>> +			     size_t        len, 
>> +			     int          *prio)
>> +{
>> +  xdg_uint32_t priority = GET_UINT32 (cache->buffer, offset);
>> +  xdg_uint32_t mimetype_offset = GET_UINT32 (cache->buffer, offset + 4);
>> +  xdg_uint32_t n_matchlets = GET_UINT32 (cache->buffer, offset + 8);
>> +  xdg_uint32_t matchlet_offset = GET_UINT32 (cache->buffer, offset + 12);
>> +
>> +  unsigned int i;
>> +
>> +  for (i = 0; i < n_matchlets; i++)
>> +    {
>> +      if (cache_magic_matchlet_compare (cache, matchlet_offset + i * 32, 
>> +					data, len))
>> +	{
>> +	  *prio = priority;
>> +	  
>> +	  return cache->buffer + mimetype_offset;
>> +	}
>> +    }
>> +
>> +  return NULL;
>> +}
>> +
>> +static const char *
>> +cache_magic_lookup_data (XdgMimeCache *cache, 
>> +			 const void   *data, 
>> +			 size_t        len, 
>> +			 int          *prio,
>> +			 const char   *mime_types[],
>> +			 int           n_mime_types)
>> +{
>> +  xdg_uint32_t list_offset;
>> +  xdg_uint32_t n_entries;
>> +  xdg_uint32_t offset;
>> +
>> +  unsigned int j;
>> +  int n;
>> +
>> +  *prio = 0;
>> +
>> +  list_offset = GET_UINT32 (cache->buffer, 24);
>> +  n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +  offset = GET_UINT32 (cache->buffer, list_offset + 8);
>> +  
>> +  for (j = 0; j < n_entries; j++)
>> +    {
>> +      const char *match;
>> +
>> +      match = cache_magic_compare_to_data (cache, offset + 16 * j, 
>> +					   data, len, prio);
>> +      if (match)
>> +	return match;
>> +      else
>> +	{
>> +	  xdg_uint32_t mimetype_offset;
>> +	  const char *non_match;
>> +	  
>> +	  mimetype_offset = GET_UINT32 (cache->buffer, offset + 16 * j + 4);
>> +	  non_match = cache->buffer + mimetype_offset;
>> +
>> +	  for (n = 0; n < n_mime_types; n++)
>> +	    {
>> +	      if (mime_types[n] && 
>> +		  xdg_mime_mime_type_equal (mime_types[n], non_match))
>> +		mime_types[n] = NULL;
>> +	    }
>> +	}
>> +    }
>> +
>> +  return NULL;
>> +}
>> +
>> +static const char *
>> +cache_alias_lookup (const char *alias)
>> +{
>> +  const char *ptr;
>> +  int i, min, max, mid, cmp;
>> +
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 4);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +      xdg_uint32_t offset;
>> +
>> +      min = 0; 
>> +      max = n_entries - 1;
>> +      while (max >= min) 
>> +	{
>> +	  mid = (min + max) / 2;
>> +
>> +	  offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * mid);
>> +	  ptr = cache->buffer + offset;
>> +	  cmp = strcmp (ptr, alias);
>> +	  
>> +	  if (cmp < 0)
>> +	    min = mid + 1;
>> +	  else if (cmp > 0)
>> +	    max = mid - 1;
>> +	  else
>> +	    {
>> +	      offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * mid + 4);
>> +	      return cache->buffer + offset;
>> +	    }
>> +	}
>> +    }
>> +
>> +  return NULL;
>> +}
>> +
>> +static int
>> +cache_glob_lookup_literal (const char *file_name,
>> +			   const char *mime_types[],
>> +			   int         n_mime_types)
>> +{
>> +  const char *ptr;
>> +  int i, min, max, mid, cmp;
>> +
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 12);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +      xdg_uint32_t offset;
>> +
>> +      min = 0; 
>> +      max = n_entries - 1;
>> +      while (max >= min) 
>> +	{
>> +	  mid = (min + max) / 2;
>> +
>> +	  offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * mid);
>> +	  ptr = cache->buffer + offset;
>> +	  cmp = strcmp (ptr, file_name);
>> +	  
>> +	  if (cmp < 0)
>> +	    min = mid + 1;
>> +	  else if (cmp > 0)
>> +	    max = mid - 1;
>> +	  else
>> +	    {
>> +	      offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * mid + 4);
>> +	      mime_types[0] = (const char *)(cache->buffer + offset);
>> +	      
>> +	      return 1;
>> +	    }
>> +	}
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +static int
>> +cache_glob_lookup_fnmatch (const char *file_name,
>> +			   const char *mime_types[],
>> +			   int         n_mime_types)
>> +{
>> +  const char *mime_type;
>> +  const char *ptr;
>> +
>> +  int i, n;
>> +  unsigned int j;
>> +
>> +  n = 0;
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 20);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +
>> +      for (j = 0; j < n_entries && n < n_mime_types; j++)
>> +	{
>> +	  xdg_uint32_t offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * j);
>> +	  xdg_uint32_t mimetype_offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * j + 4);
>> +	  ptr = cache->buffer + offset;
>> +	  mime_type = cache->buffer + mimetype_offset;
>> +
>> +	  /* FIXME: Not UTF-8 safe */
>> +	  if (fnmatch (ptr, file_name, 0) == 0)
>> +	    mime_types[n++] = mime_type;
>> +	}
>> +
>> +      if (n > 0)
>> +	return n;
>> +    }
>> +  
>> +  return 0;
>> +}
>> +
>> +static int
>> +cache_glob_node_lookup_suffix (XdgMimeCache *cache,
>> +			       xdg_uint32_t  n_entries,
>> +			       xdg_uint32_t  offset,
>> +			       const char   *suffix, 
>> +			       int           ignore_case,
>> +			       const char   *mime_types[],
>> +			       int           n_mime_types)
>> +{
>> +  xdg_unichar_t character;
>> +  xdg_unichar_t match_char;
>> +  xdg_uint32_t mimetype_offset;
>> +  xdg_uint32_t n_children;
>> +  xdg_uint32_t child_offset; 
>> +
>> +  int min, max, mid, n;
>> +  unsigned int i;
>> +
>> +  character = _xdg_utf8_to_ucs4 (suffix);
>> +  if (ignore_case)
>> +    character = _xdg_ucs4_to_lower (character);
>> +
>> +  min = 0;
>> +  max = n_entries - 1;
>> +  while (max >= min)
>> +    {
>> +      mid = (min + max) /  2;
>> +
>> +      match_char = GET_UINT32 (cache->buffer, offset + 16 * mid);
>> +
>> +      if (match_char < character)
>> +	min = mid + 1;
>> +      else if (match_char > character)
>> +	max = mid - 1;
>> +      else 
>> +	{
>> +	  suffix = _xdg_utf8_next_char (suffix);
>> +	  if (*suffix == '\0')
>> +	    {
>> +	      mimetype_offset = GET_UINT32 (cache->buffer, offset + 16 * mid + 4);
>> +	      n = 0;
>> +	      mime_types[n++] = cache->buffer + mimetype_offset;
>> +	      
>> +	      n_children = GET_UINT32 (cache->buffer, offset + 16 * mid + 8);
>> +	      child_offset = GET_UINT32 (cache->buffer, offset + 16 * mid + 12);
>> +	      i = 0;
>> +	      while (n < n_mime_types && i < n_children)
>> +		{
>> +		  match_char = GET_UINT32 (cache->buffer, child_offset + 16 * i);
>> +		  mimetype_offset = GET_UINT32 (cache->buffer, offset + 16 * i + 4);
>> +		  if (match_char != 0)
>> +		    break;
>> +
>> +		  mime_types[n++] = cache->buffer + mimetype_offset;
>> +		  i++;
>> +		}
>> +
>> +	      return n;
>> +	    }
>> +	  else
>> +	    {
>> +	      n_children = GET_UINT32 (cache->buffer, offset + 16 * mid + 8);
>> +	      child_offset = GET_UINT32 (cache->buffer, offset + 16 * mid + 12);
>> +      
>> +	      return cache_glob_node_lookup_suffix (cache, 
>> +						    n_children, child_offset,
>> +						    suffix, ignore_case,
>> +						    mime_types,
>> +						    n_mime_types);
>> +	    }
>> +	}
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +static int
>> +cache_glob_lookup_suffix (const char *suffix, 
>> +			  int         ignore_case,
>> +			  const char *mime_types[],
>> +			  int         n_mime_types)
>> +{
>> +  int i, n;
>> +
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 16);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +      xdg_uint32_t offset = GET_UINT32 (cache->buffer, list_offset + 4);
>> +
>> +      n = cache_glob_node_lookup_suffix (cache, 
>> +					 n_entries, offset, 
>> +					 suffix, ignore_case,
>> +					 mime_types,
>> +					 n_mime_types);
>> +      if (n > 0)
>> +	return n;
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +static void
>> +find_stopchars (char *stopchars)
>> +{
>> +  int i, k, l;
>> +  unsigned int j;
>> +
>> +  k = 0;
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 16);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +      xdg_uint32_t offset = GET_UINT32 (cache->buffer, list_offset + 4);
>> +
>> +      for (j = 0; j < n_entries; j++)
>> +	{
>> +	  xdg_uint32_t match_char = GET_UINT32 (cache->buffer, offset);
>> +	  
>> +	  if (match_char < 128)
>> +	    {
>> +	      for (l = 0; l < k; l++)
>> +		{
>> +		  xdg_uint32_t character;
>> +
>> +		  character = stopchars[l];
>> +
>> +		  if (character == match_char)
>> +		    break;
>> +		}
>> +
>> +	      if (l == k)
>> +		{
>> +		  stopchars[k] = (char) match_char;
>> +		  k++;
>> +		}
>> +	    }
>> +
>> +	  offset += 16;
>> +	}
>> +    }
>> +
>> +  stopchars[k] = '\0';
>> +}
>> +
>> +static int
>> +cache_glob_lookup_file_name (const char *file_name, 
>> +			     const char *mime_types[],
>> +			     int         n_mime_types)
>> +{
>> +  const char *ptr;
>> +  char stopchars[128];
>> +  int n;
>> +  
>> +  assert (file_name != NULL);
>> +
>> +  /* First, check the literals */
>> +  n = cache_glob_lookup_literal (file_name, mime_types, n_mime_types);
>> +  if (n > 0)
>> +    return n;
>> +
>> +  find_stopchars (stopchars);
>> +
>> +  /* Next, check suffixes */
>> +  ptr = strpbrk (file_name, stopchars);
>> +  while (ptr)
>> +    {
>> +      n = cache_glob_lookup_suffix (ptr, FALSE, mime_types, n_mime_types);
>> +      if (n > 0)
>> +	return n;
>> +      
>> +      n = cache_glob_lookup_suffix (ptr, TRUE, mime_types, n_mime_types);
>> +      if (n > 0)
>> +	return n;
>> +
>> +      ptr = strpbrk (ptr + 1, stopchars);
>> +    }
>> +  
>> +  /* Last, try fnmatch */
>> +  return cache_glob_lookup_fnmatch (file_name, mime_types, n_mime_types);
>> +}
>> +
>> +int
>> +_xdg_mime_cache_get_max_buffer_extents (void)
>> +{
>> +  xdg_uint32_t offset;
>> +  xdg_uint32_t max_extent;
>> +  int i;
>> +
>> +  max_extent = 0;
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +
>> +      offset = GET_UINT32 (cache->buffer, 24);
>> +      max_extent = MAX (max_extent, GET_UINT32 (cache->buffer, offset + 4));
>> +    }
>> +
>> +  return max_extent;
>> +}
>> +
>> +static const char *
>> +cache_get_mime_type_for_data (const void *data,
>> +			      size_t      len,
>> +			      const char *mime_types[],
>> +			      int         n_mime_types)
>> +{
>> +  const char *mime_type;
>> +  int i, n, priority;
>> +
>> +  priority = 0;
>> +  mime_type = NULL;
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +
>> +      int prio;
>> +      const char *match;
>> +
>> +      match = cache_magic_lookup_data (cache, data, len, &prio, 
>> +				       mime_types, n_mime_types);
>> +      if (prio > priority)
>> +	{
>> +	  priority = prio;
>> +	  mime_type = match;
>> +	}
>> +    }
>> +
>> +  if (priority > 0)
>> +    return mime_type;
>> +
>> +  for (n = 0; n < n_mime_types; n++)
>> +    {
>> +      if (mime_types[n])
>> +	return mime_types[n];
>> +    }
>> +
>> +  return XDG_MIME_TYPE_UNKNOWN;
>> +}
>> +
>> +const char *
>> +_xdg_mime_cache_get_mime_type_for_data (const void *data,
>> +					size_t      len)
>> +{
>> +  return cache_get_mime_type_for_data (data, len, NULL, 0);
>> +}
>> +
>> +const char *
>> +_xdg_mime_cache_get_mime_type_for_file (const char  *file_name,
>> +					struct stat *statbuf)
>> +{
>> +  const char *mime_type;
>> +  const char *mime_types[2];
>> +  FILE *file;
>> +  unsigned char *data;
>> +  int max_extent;
>> +  int bytes_read;
>> +  struct stat buf;
>> +  const char *base_name;
>> +  int n;
>> +
>> +  if (file_name == NULL)
>> +    return NULL;
>> +
>> +  if (! _xdg_utf8_validate (file_name))
>> +    return NULL;
>> +
>> +  base_name = _xdg_get_base_name (file_name);
>> +  n = cache_glob_lookup_file_name (base_name, mime_types, 2);
>> +
>> +  if (n == 1)
>> +    return mime_types[0];
>> +
>> +  if (!statbuf)
>> +    {
>> +      if (stat (file_name, &buf) != 0)
>> +	return XDG_MIME_TYPE_UNKNOWN;
>> +
>> +      statbuf = &buf;
>> +    }
>> +
>> +  if (!S_ISREG (statbuf->st_mode))
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +
>> +  /* FIXME: Need to make sure that max_extent isn't totally broken.  This could
>> +   * be large and need getting from a stream instead of just reading it all
>> +   * in. */
>> +  max_extent = _xdg_mime_cache_get_max_buffer_extents ();
>> +  data = malloc (max_extent);
>> +  if (data == NULL)
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +        
>> +  file = fopen (file_name, "r");
>> +  if (file == NULL)
>> +    {
>> +      free (data);
>> +      return XDG_MIME_TYPE_UNKNOWN;
>> +    }
>> +
>> +  bytes_read = fread (data, 1, max_extent, file);
>> +  if (ferror (file))
>> +    {
>> +      free (data);
>> +      fclose (file);
>> +      return XDG_MIME_TYPE_UNKNOWN;
>> +    }
>> +
>> +  mime_type = cache_get_mime_type_for_data (data, bytes_read,
>> +					    mime_types, n);
>> +
>> +  free (data);
>> +  fclose (file);
>> +
>> +  return mime_type;
>> +}
>> +
>> +const char *
>> +_xdg_mime_cache_get_mime_type_from_file_name (const char *file_name)
>> +{
>> +  const char *mime_types[2];
>> +
>> +  if (cache_glob_lookup_file_name (file_name, mime_types, 2) == 1)
>> +    return mime_types[0];
>> +  else
>> +    return XDG_MIME_TYPE_UNKNOWN;
>> +}
>> +
>> +#if 1
>> +static int
>> +is_super_type (const char *mime)
>> +{
>> +  int length;
>> +  const char *type;
>> +
>> +  length = strlen (mime);
>> +  type = &(mime[length - 2]);
>> +
>> +  if (strcmp (type, "/*") == 0)
>> +    return 1;
>> +
>> +  return 0;
>> +}
>> +#endif
>> +
>> +int
>> +_xdg_mime_cache_mime_type_subclass (const char *mime,
>> +				    const char *base)
>> +{
>> +  const char *umime, *ubase;
>> +
>> +  int i, min, max, med, cmp;
>> +  unsigned int j;
>> +
>> +  umime = _xdg_mime_cache_unalias_mime_type (mime);
>> +  ubase = _xdg_mime_cache_unalias_mime_type (base);
>> +
>> +  if (strcmp (umime, ubase) == 0)
>> +    return 1;
>> +
>> +  /* We really want to handle text/ * in GtkFileFilter, so we just
>> +   * turn on the supertype matching
>> +   */
>> +#if 1
>> +  /* Handle supertypes */
>> +  if (is_super_type (ubase) &&
>> +      xdg_mime_media_type_equal (umime, ubase))
>> +    return 1;
>> +#endif
>> +
>> +  /*  Handle special cases text/plain and application/octet-stream */
>> +  if (strcmp (ubase, "text/plain") == 0 && 
>> +      strncmp (umime, "text/", 5) == 0)
>> +    return 1;
>> +
>> +  if (strcmp (ubase, "application/octet-stream") == 0)
>> +    return 1;
>> + 
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +      
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 8);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +      xdg_uint32_t offset, n_parents, parent_offset;
>> +
>> +      min = 0; 
>> +      max = n_entries - 1;
>> +      while (max >= min)
>> +	{
>> +	  med = (min + max)/2;
>> +	  
>> +	  offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * med);
>> +	  cmp = strcmp (cache->buffer + offset, umime);
>> +	  if (cmp < 0)
>> +	    min = med + 1;
>> +	  else if (cmp > 0)
>> +	    max = med - 1;
>> +	  else
>> +	    {
>> +	      offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * med + 4);
>> +	      n_parents = GET_UINT32 (cache->buffer, offset);
>> +	      
>> +	      for (j = 0; j < n_parents; j++)
>> +		{
>> +		  parent_offset = GET_UINT32 (cache->buffer, offset + 4 + 4 * j);
>> +		  if (_xdg_mime_cache_mime_type_subclass (cache->buffer + parent_offset, ubase))
>> +		    return 1;
>> +		}
>> +
>> +	      break;
>> +	    }
>> +	}
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +const char *
>> +_xdg_mime_cache_unalias_mime_type (const char *mime)
>> +{
>> +  const char *lookup;
>> +  
>> +  lookup = cache_alias_lookup (mime);
>> +  
>> +  if (lookup)
>> +    return lookup;
>> +  
>> +  return mime;  
>> +}
>> +
>> +char **
>> +_xdg_mime_cache_list_mime_parents (const char *mime)
>> +{
>> +  int i, p;
>> +  unsigned int j;
>> +  char *all_parents[128]; /* we'll stop at 128 */ 
>> +  char **result;
>> +
>> +  p = 0;
>> +  for (i = 0; _caches[i]; i++)
>> +    {
>> +      XdgMimeCache *cache = _caches[i];
>> +  
>> +      xdg_uint32_t list_offset = GET_UINT32 (cache->buffer, 8);
>> +      xdg_uint32_t n_entries = GET_UINT32 (cache->buffer, list_offset);
>> +
>> +      for (j = 0; j < n_entries; j++)
>> +	{
>> +	  xdg_uint32_t mimetype_offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * i);
>> +	  xdg_uint32_t parents_offset = GET_UINT32 (cache->buffer, list_offset + 4 + 8 * i + 4);
>> +	  
>> +	  if (strcmp (cache->buffer + mimetype_offset, mime) == 0)
>> +	    {
>> +	      xdg_uint32_t n_parents = GET_UINT32 (cache->buffer, parents_offset);
>> +	      
>> +	      for (j = 0; j < n_parents; j++)
>> +		all_parents[p++] = cache->buffer + parents_offset + 4 + 4 * j;
>> +
>> +	      break;
>> +	    }
>> +	}
>> +    }
>> +  all_parents[p++] = 0;
>> +  
>> +  result = (char **) malloc (p * sizeof (char *));
>> +  memcpy (result, all_parents, p * sizeof (char *));
>> +
>> +  return result;
>> +}
>> +
>>
>> Added: liblicense/trunk/xdgmime/xdgmimecache.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimecache.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimecache.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,63 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimecache.h: Private file.  Datastructure for mmapped caches.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2005  Matthias Clasen <mclasen@redhat.com>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifndef __XDG_MIME_CACHE_H__
>> +#define __XDG_MIME_CACHE_H__
>> +
>> +#include "xdgmime.h"
>> +
>> +typedef struct _XdgMimeCache XdgMimeCache;
>> +
>> +#ifdef XDG_PREFIX
>> +#define _xdg_mime_cache_new_from_file        XDG_ENTRY(cache_new_from_file)
>> +#define _xdg_mime_cache_ref                  XDG_ENTRY(cache_ref)
>> +#define _xdg_mime_cache_unref                XDG_ENTRY(cache_unref)
>> +#endif
>> +
>> +extern XdgMimeCache **_caches;
>> +
>> +XdgMimeCache *_xdg_mime_cache_new_from_file (const char   *file_name);
>> +XdgMimeCache *_xdg_mime_cache_ref           (XdgMimeCache *cache);
>> +void          _xdg_mime_cache_unref         (XdgMimeCache *cache);
>> +
>> +
>> +const char  *_xdg_mime_cache_get_mime_type_for_data       (const void *data,
>> +		 				           size_t      len);
>> +const char  *_xdg_mime_cache_get_mime_type_for_file       (const char  *file_name,
>> +							   struct stat *statbuf);
>> +const char  *_xdg_mime_cache_get_mime_type_from_file_name (const char *file_name);
>> +int          _xdg_mime_cache_is_valid_mime_type           (const char *mime_type);
>> +int          _xdg_mime_cache_mime_type_equal              (const char *mime_a,
>> +						           const char *mime_b);
>> +int          _xdg_mime_cache_media_type_equal             (const char *mime_a,
>> +							   const char *mime_b);
>> +int          _xdg_mime_cache_mime_type_subclass           (const char *mime_a,
>> +							   const char *mime_b);
>> +char       **_xdg_mime_cache_list_mime_parents		  (const char *mime);
>> +const char  *_xdg_mime_cache_unalias_mime_type            (const char *mime);
>> +int          _xdg_mime_cache_get_max_buffer_extents       (void);
>> +
>> +#endif /* __XDG_MIME_CACHE_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimeglob.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimeglob.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimeglob.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,547 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimeglob.c: Private file.  Datastructure for storing the globs.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include "xdgmimeglob.h"
>> +#include "xdgmimeint.h"
>> +#include <stdlib.h>
>> +#include <stdio.h>
>> +#include <assert.h>
>> +#include <string.h>
>> +#include <fnmatch.h>
>> +
>> +#ifndef	FALSE
>> +#define	FALSE	(0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE	(!FALSE)
>> +#endif
>> +
>> +typedef struct XdgGlobHashNode XdgGlobHashNode;
>> +typedef struct XdgGlobList XdgGlobList;
>> +
>> +struct XdgGlobHashNode
>> +{
>> +  xdg_unichar_t character;
>> +  const char *mime_type;
>> +  XdgGlobHashNode *next;
>> +  XdgGlobHashNode *child;
>> +};
>> +struct XdgGlobList
>> +{
>> +  const char *data;
>> +  const char *mime_type;
>> +  XdgGlobList *next;
>> +};
>> +
>> +struct XdgGlobHash
>> +{
>> +  XdgGlobList *literal_list;
>> +  XdgGlobHashNode *simple_node;
>> +  XdgGlobList *full_list;
>> +};
>> +
>> +
>> +/* XdgGlobList
>> + */
>> +static XdgGlobList *
>> +_xdg_glob_list_new (void)
>> +{
>> +  XdgGlobList *new_element;
>> +
>> +  new_element = calloc (1, sizeof (XdgGlobList));
>> +
>> +  return new_element;
>> +}
>> +
>> +/* Frees glob_list and all of it's children */
>> +static void
>> +_xdg_glob_list_free (XdgGlobList *glob_list)
>> +{
>> +  XdgGlobList *ptr, *next;
>> +
>> +  ptr = glob_list;
>> +
>> +  while (ptr != NULL)
>> +    {
>> +      next = ptr->next;
>> +
>> +      if (ptr->data)
>> +	free ((void *) ptr->data);
>> +      if (ptr->mime_type)
>> +	free ((void *) ptr->mime_type);
>> +      free (ptr);
>> +
>> +      ptr = next;
>> +    }
>> +}
>> +
>> +static XdgGlobList *
>> +_xdg_glob_list_append (XdgGlobList *glob_list,
>> +		       void        *data,
>> +		       const char  *mime_type)
>> +{
>> +  XdgGlobList *new_element;
>> +  XdgGlobList *tmp_element;
>> +
>> +  new_element = _xdg_glob_list_new ();
>> +  new_element->data = data;
>> +  new_element->mime_type = mime_type;
>> +  if (glob_list == NULL)
>> +    return new_element;
>> +
>> +  tmp_element = glob_list;
>> +  while (tmp_element->next != NULL)
>> +    tmp_element = tmp_element->next;
>> +
>> +  tmp_element->next = new_element;
>> +
>> +  return glob_list;
>> +}
>> +
>> +#if 0
>> +static XdgGlobList *
>> +_xdg_glob_list_prepend (XdgGlobList *glob_list,
>> +			void        *data,
>> +			const char  *mime_type)
>> +{
>> +  XdgGlobList *new_element;
>> +
>> +  new_element = _xdg_glob_list_new ();
>> +  new_element->data = data;
>> +  new_element->next = glob_list;
>> +  new_element->mime_type = mime_type;
>> +
>> +  return new_element;
>> +}
>> +#endif
>> +
>> +/* XdgGlobHashNode
>> + */
>> +
>> +static XdgGlobHashNode *
>> +_xdg_glob_hash_node_new (void)
>> +{
>> +  XdgGlobHashNode *glob_hash_node;
>> +
>> +  glob_hash_node = calloc (1, sizeof (XdgGlobHashNode));
>> +
>> +  return glob_hash_node;
>> +}
>> +
>> +static void
>> +_xdg_glob_hash_node_dump (XdgGlobHashNode *glob_hash_node,
>> +			  int depth)
>> +{
>> +  int i;
>> +  for (i = 0; i < depth; i++)
>> +    printf (" ");
>> +
>> +  printf ("%c", (char)glob_hash_node->character);
>> +  if (glob_hash_node->mime_type)
>> +    printf (" - %s\n", glob_hash_node->mime_type);
>> +  else
>> +    printf ("\n");
>> +  if (glob_hash_node->child)
>> +    _xdg_glob_hash_node_dump (glob_hash_node->child, depth + 1);
>> +  if (glob_hash_node->next)
>> +    _xdg_glob_hash_node_dump (glob_hash_node->next, depth);
>> +}
>> +
>> +static XdgGlobHashNode *
>> +_xdg_glob_hash_insert_text (XdgGlobHashNode *glob_hash_node,
>> +			    const char      *text,
>> +			    const char      *mime_type)
>> +{
>> +  XdgGlobHashNode *node;
>> +  xdg_unichar_t character;
>> +
>> +  character = _xdg_utf8_to_ucs4 (text);
>> +
>> +  if ((glob_hash_node == NULL) ||
>> +      (character < glob_hash_node->character))
>> +    {
>> +      node = _xdg_glob_hash_node_new ();
>> +      node->character = character;
>> +      node->next = glob_hash_node;
>> +      glob_hash_node = node;
>> +    }
>> +  else if (character == glob_hash_node->character)
>> +    {
>> +      node = glob_hash_node;
>> +    }
>> +  else
>> +    {
>> +      XdgGlobHashNode *prev_node;
>> +      int found_node = FALSE;
>> +
>> +      /* Look for the first character of text in glob_hash_node, and insert it if we
>> +       * have to.*/
>> +      prev_node = glob_hash_node;
>> +      node = prev_node->next;
>> +
>> +      while (node != NULL)
>> +	{
>> +	  if (character < node->character)
>> +	    {
>> +	      node = _xdg_glob_hash_node_new ();
>> +	      node->character = character;
>> +	      node->next = prev_node->next;
>> +	      prev_node->next = node;
>> +
>> +	      found_node = TRUE;
>> +	      break;
>> +	    }
>> +	  else if (character == node->character)
>> +	    {
>> +	      found_node = TRUE;
>> +	      break;
>> +	    }
>> +	  prev_node = node;
>> +	  node = node->next;
>> +	}
>> +
>> +      if (! found_node)
>> +	{
>> +	  node = _xdg_glob_hash_node_new ();
>> +	  node->character = character;
>> +	  node->next = prev_node->next;
>> +	  prev_node->next = node;
>> +	}
>> +    }
>> +
>> +  text = _xdg_utf8_next_char (text);
>> +  if (*text == '\000')
>> +    {
>> +      if (node->mime_type)
>> +	{
>> +	  if (strcmp (node->mime_type, mime_type))
>> +	    {
>> +	      XdgGlobHashNode *child;
>> +	      int found_node = FALSE;
>> +	      
>> +	      child = node->child;
>> +	      while (child && child->character == '\0')
>> +		{
>> +		  if (strcmp (child->mime_type, mime_type) == 0)
>> +		    {
>> +		      found_node = TRUE;
>> +		      break;
>> +		    }
>> +		  child = child->next;
>> +		}
>> +
>> +	      if (!found_node)
>> +		{
>> +		  child = _xdg_glob_hash_node_new ();
>> +		  child->character = '\000';
>> +		  child->mime_type = strdup (mime_type);
>> +		  child->child = NULL;
>> +		  child->next = node->child;
>> +		  node->child = child;
>> +		}
>> +	    }
>> +	}
>> +      else
>> +	{
>> +	  node->mime_type = strdup (mime_type);
>> +	}
>> +    }
>> +  else
>> +    {
>> +      node->child = _xdg_glob_hash_insert_text (node->child, text, mime_type);
>> +    }
>> +  return glob_hash_node;
>> +}
>> +
>> +static int
>> +_xdg_glob_hash_node_lookup_file_name (XdgGlobHashNode *glob_hash_node,
>> +				      const char      *file_name,
>> +				      int              ignore_case,
>> +				      const char      *mime_types[],
>> +				      int              n_mime_types)
>> +{
>> +  int n;
>> +  XdgGlobHashNode *node;
>> +  xdg_unichar_t character;
>> +
>> +  if (glob_hash_node == NULL)
>> +    return 0;
>> +
>> +  character = _xdg_utf8_to_ucs4 (file_name);
>> +  if (ignore_case)
>> +    character = _xdg_ucs4_to_lower(character);
>> +
>> +  for (node = glob_hash_node; node && character >= node->character; node = node->next)
>> +    {
>> +      if (character == node->character)
>> +	{
>> +	  file_name = _xdg_utf8_next_char (file_name);
>> +	  if (*file_name == '\000')
>> +	    {
>> +	      n = 0;
>> +	      if (node->mime_type)
>> +	        mime_types[n++] = node->mime_type;
>> +	      node = node->child;
>> +	      while (n < n_mime_types && node && node->character == 0)
>> +		{
>> +		  if (node->mime_type)
>> +		    mime_types[n++] = node->mime_type;
>> +		  node = node->next;
>> +		}
>> +	    }
>> +	  else
>> +	    {
>> +	      n = _xdg_glob_hash_node_lookup_file_name (node->child,
>> +							file_name,
>> +							ignore_case,
>> +							mime_types,
>> +							n_mime_types);
>> +	    }
>> +	  return n;
>> +	}
>> +    }
>> +
>> +  return 0;
>> +}
>> +
>> +int
>> +_xdg_glob_hash_lookup_file_name (XdgGlobHash *glob_hash,
>> +				 const char  *file_name,
>> +				 const char  *mime_types[],
>> +				 int          n_mime_types)
>> +{
>> +  XdgGlobList *list;
>> +  const char *ptr;
>> +  char stopchars[128];
>> +  int i, n;
>> +  XdgGlobHashNode *node;
>> +
>> +  /* First, check the literals */
>> +
>> +  assert (file_name != NULL && n_mime_types > 0);
>> +
>> +  for (list = glob_hash->literal_list; list; list = list->next)
>> +    {
>> +      if (strcmp ((const char *)list->data, file_name) == 0)
>> +	{
>> +	  mime_types[0] = list->mime_type;
>> +	  return 1;
>> +	}
>> +    }
>> +
>> +  i = 0;
>> +  for (node = glob_hash->simple_node; node; node = node->next)
>> +    {
>> +      if (node->character < 128)
>> + 	stopchars[i++] = (char)node->character;
>> +    }
>> +  stopchars[i] = '\0';
>> + 
>> +  ptr = strpbrk (file_name, stopchars);
>> +  while (ptr)
>> +    {
>> +      n = _xdg_glob_hash_node_lookup_file_name (glob_hash->simple_node, ptr, FALSE,
>> +						mime_types, n_mime_types);
>> +      if (n > 0)
>> +	return n;
>> +      
>> +      n = _xdg_glob_hash_node_lookup_file_name (glob_hash->simple_node, ptr, TRUE,
>> +						mime_types, n_mime_types);
>> +      if (n > 0)
>> +	return n;
>> +      
>> +      ptr = strpbrk (ptr + 1, stopchars);
>> +    }
>> +
>> +  /* FIXME: Not UTF-8 safe */
>> +  n = 0;
>> +  for (list = glob_hash->full_list; list && n < n_mime_types; list = list->next)
>> +    {
>> +      if (fnmatch ((const char *)list->data, file_name, 0) == 0)
>> +	mime_types[n++] = list->mime_type;
>> +    }
>> +
>> +  return n;
>> +}
>> +
>> +
>> +
>> +/* XdgGlobHash
>> + */
>> +
>> +XdgGlobHash *
>> +_xdg_glob_hash_new (void)
>> +{
>> +  XdgGlobHash *glob_hash;
>> +
>> +  glob_hash = calloc (1, sizeof (XdgGlobHash));
>> +
>> +  return glob_hash;
>> +}
>> +
>> +
>> +static void
>> +_xdg_glob_hash_free_nodes (XdgGlobHashNode *node)
>> +{
>> +  if (node)
>> +    {
>> +      if (node->child)
>> +       _xdg_glob_hash_free_nodes (node->child);
>> +      if (node->next)
>> +       _xdg_glob_hash_free_nodes (node->next);
>> +      if (node->mime_type)
>> +	free ((void *) node->mime_type);
>> +      free (node);
>> +    }
>> +}
>> +
>> +void
>> +_xdg_glob_hash_free (XdgGlobHash *glob_hash)
>> +{
>> +  _xdg_glob_list_free (glob_hash->literal_list);
>> +  _xdg_glob_list_free (glob_hash->full_list);
>> +  _xdg_glob_hash_free_nodes (glob_hash->simple_node);
>> +  free (glob_hash);
>> +}
>> +
>> +XdgGlobType
>> +_xdg_glob_determine_type (const char *glob)
>> +{
>> +  const char *ptr;
>> +  int maybe_in_simple_glob = FALSE;
>> +  int first_char = TRUE;
>> +
>> +  ptr = glob;
>> +
>> +  while (*ptr != '\000')
>> +    {
>> +      if (*ptr == '*' && first_char)
>> +	maybe_in_simple_glob = TRUE;
>> +      else if (*ptr == '\\' || *ptr == '[' || *ptr == '?' || *ptr == '*')
>> +	  return XDG_GLOB_FULL;
>> +
>> +      first_char = FALSE;
>> +      ptr = _xdg_utf8_next_char (ptr);
>> +    }
>> +  if (maybe_in_simple_glob)
>> +    return XDG_GLOB_SIMPLE;
>> +  else
>> +    return XDG_GLOB_LITERAL;
>> +}
>> +
>> +/* glob must be valid UTF-8 */
>> +void
>> +_xdg_glob_hash_append_glob (XdgGlobHash *glob_hash,
>> +			    const char  *glob,
>> +			    const char  *mime_type)
>> +{
>> +  XdgGlobType type;
>> +
>> +  assert (glob_hash != NULL);
>> +  assert (glob != NULL);
>> +
>> +  type = _xdg_glob_determine_type (glob);
>> +
>> +  switch (type)
>> +    {
>> +    case XDG_GLOB_LITERAL:
>> +      glob_hash->literal_list = _xdg_glob_list_append (glob_hash->literal_list, strdup (glob), strdup (mime_type));
>> +      break;
>> +    case XDG_GLOB_SIMPLE:
>> +      glob_hash->simple_node = _xdg_glob_hash_insert_text (glob_hash->simple_node, glob + 1, mime_type);
>> +      break;
>> +    case XDG_GLOB_FULL:
>> +      glob_hash->full_list = _xdg_glob_list_append (glob_hash->full_list, strdup (glob), strdup (mime_type));
>> +      break;
>> +    }
>> +}
>> +
>> +void
>> +_xdg_glob_hash_dump (XdgGlobHash *glob_hash)
>> +{
>> +  XdgGlobList *list;
>> +  printf ("LITERAL STRINGS\n");
>> +  if (glob_hash->literal_list == NULL)
>> +    {
>> +      printf ("    None\n");
>> +    }
>> +  else
>> +    {
>> +      for (list = glob_hash->literal_list; list; list = list->next)
>> +	printf ("    %s - %s\n", (char *)list->data, list->mime_type);
>> +    }
>> +  printf ("\nSIMPLE GLOBS\n");
>> +  _xdg_glob_hash_node_dump (glob_hash->simple_node, 4);
>> +
>> +  printf ("\nFULL GLOBS\n");
>> +  if (glob_hash->full_list == NULL)
>> +    {
>> +      printf ("    None\n");
>> +    }
>> +  else
>> +    {
>> +      for (list = glob_hash->full_list; list; list = list->next)
>> +	printf ("    %s - %s\n", (char *)list->data, list->mime_type);
>> +    }
>> +}
>> +
>> +
>> +void
>> +_xdg_mime_glob_read_from_file (XdgGlobHash *glob_hash,
>> +			       const char  *file_name)
>> +{
>> +  FILE *glob_file;
>> +  char line[255];
>> +
>> +  glob_file = fopen (file_name, "r");
>> +
>> +  if (glob_file == NULL)
>> +    return;
>> +
>> +  /* FIXME: Not UTF-8 safe.  Doesn't work if lines are greater than 255 chars.
>> +   * Blah */
>> +  while (fgets (line, 255, glob_file) != NULL)
>> +    {
>> +      char *colon;
>> +      if (line[0] == '#')
>> +	continue;
>> +
>> +      colon = strchr (line, ':');
>> +      if (colon == NULL)
>> +	continue;
>> +      *(colon++) = '\000';
>> +      colon[strlen (colon) -1] = '\000';
>> +      _xdg_glob_hash_append_glob (glob_hash, colon, line);
>> +    }
>> +
>> +  fclose (glob_file);
>> +}
>>
>> Added: liblicense/trunk/xdgmime/xdgmimeglob.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimeglob.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimeglob.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,67 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimeglob.h: Private file.  Datastructure for storing the globs.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifndef __XDG_MIME_GLOB_H__
>> +#define __XDG_MIME_GLOB_H__
>> +
>> +#include "xdgmime.h"
>> +
>> +typedef struct XdgGlobHash XdgGlobHash;
>> +
>> +typedef enum
>> +{
>> +  XDG_GLOB_LITERAL, /* Makefile */
>> +  XDG_GLOB_SIMPLE,  /* *.gif */
>> +  XDG_GLOB_FULL     /* x*.[ch] */
>> +} XdgGlobType;
>> +
>> +  
>> +#ifdef XDG_PREFIX
>> +#define _xdg_mime_glob_read_from_file         XDG_ENTRY(glob_read_from_file)
>> +#define _xdg_glob_hash_new                    XDG_ENTRY(hash_new)
>> +#define _xdg_glob_hash_free                   XDG_ENTRY(hash_free)
>> +#define _xdg_glob_hash_lookup_file_name       XDG_ENTRY(hash_lookup_file_name)
>> +#define _xdg_glob_hash_append_glob            XDG_ENTRY(hash_append_glob)
>> +#define _xdg_glob_determine_type              XDG_ENTRY(determine_type)
>> +#define _xdg_glob_hash_dump                   XDG_ENTRY(hash_dump)
>> +#endif
>> +
>> +void         _xdg_mime_glob_read_from_file   (XdgGlobHash *glob_hash,
>> +					      const char  *file_name);
>> +XdgGlobHash *_xdg_glob_hash_new              (void);
>> +void         _xdg_glob_hash_free             (XdgGlobHash *glob_hash);
>> +int          _xdg_glob_hash_lookup_file_name (XdgGlobHash *glob_hash,
>> +					      const char  *text,
>> +					      const char  *mime_types[],
>> +					      int          n_mime_types);
>> +void         _xdg_glob_hash_append_glob      (XdgGlobHash *glob_hash,
>> +					      const char  *glob,
>> +					      const char  *mime_type);
>> +XdgGlobType  _xdg_glob_determine_type        (const char  *glob);
>> +void         _xdg_glob_hash_dump             (XdgGlobHash *glob_hash);
>> +
>> +#endif /* __XDG_MIME_GLOB_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimeint.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimeint.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimeint.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,154 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimeint.c: Internal defines and functions.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include "xdgmimeint.h"
>> +#include <ctype.h>
>> +#include <string.h>
>> +
>> +#ifndef	FALSE
>> +#define	FALSE	(0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE	(!FALSE)
>> +#endif
>> +
>> +static const char _xdg_utf8_skip_data[256] = {
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
>> +  2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
>> +  3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,4,4,4,4,4,4,4,4,5,5,5,5,6,6,1,1
>> +};
>> +
>> +const char * const _xdg_utf8_skip = _xdg_utf8_skip_data;
>> +
>> +
>> +
>> +/* Returns the number of unprocessed characters. */
>> +xdg_unichar_t
>> +_xdg_utf8_to_ucs4(const char *source)
>> +{
>> +  xdg_unichar_t ucs32;
>> +  if( ! ( *source & 0x80 ) )
>> +    {
>> +      ucs32 = *source;
>> +    }
>> +  else
>> +    {
>> +      int bytelength = 0;
>> +      xdg_unichar_t result;
>> +      if ( ! (*source & 0x40) )
>> +	{
>> +	  ucs32 = *source;
>> +	}
>> +      else
>> +	{
>> +	  if ( ! (*source & 0x20) )
>> +	    {
>> +	      result = *source++ & 0x1F;
>> +	      bytelength = 2;
>> +	    }
>> +	  else if ( ! (*source & 0x10) )
>> +	    {
>> +	      result = *source++ & 0x0F;
>> +	      bytelength = 3;
>> +	    }
>> +	  else if ( ! (*source & 0x08) )
>> +	    {
>> +	      result = *source++ & 0x07;
>> +	      bytelength = 4;
>> +	    }
>> +	  else if ( ! (*source & 0x04) )
>> +	    {
>> +	      result = *source++ & 0x03;
>> +	      bytelength = 5;
>> +	    }
>> +	  else if ( ! (*source & 0x02) )
>> +	    {
>> +	      result = *source++ & 0x01;
>> +	      bytelength = 6;
>> +	    }
>> +	  else
>> +	    {
>> +	      result = *source++;
>> +	      bytelength = 1;
>> +	    }
>> +
>> +	  for ( bytelength --; bytelength > 0; bytelength -- )
>> +	    {
>> +	      result <<= 6;
>> +	      result |= *source++ & 0x3F;
>> +	    }
>> +	  ucs32 = result;
>> +	}
>> +    }
>> +  return ucs32;
>> +}
>> +
>> +
>> +/* hullo.  this is great code.  don't rewrite it */
>> +
>> +xdg_unichar_t
>> +_xdg_ucs4_to_lower (xdg_unichar_t source)
>> +{
>> +  /* FIXME: Do a real to_upper sometime */
>> +  /* CaseFolding-3.2.0.txt has a table of rules. */
>> +  if ((source & 0xFF) == source)
>> +    return (xdg_unichar_t) tolower ((unsigned char) source);
>> +  return source;
>> +}
>> +
>> +int
>> +_xdg_utf8_validate (const char *source)
>> +{
>> +  /* FIXME: actually write */
>> +  return TRUE;
>> +}
>> +
>> +const char *
>> +_xdg_get_base_name (const char *file_name)
>> +{
>> +  const char *base_name;
>> +
>> +  if (file_name == NULL)
>> +    return NULL;
>> +
>> +  base_name = strrchr (file_name, '/');
>> +
>> +  if (base_name == NULL)
>> +    return file_name;
>> +  else
>> +    return base_name + 1;
>> +}
>>
>> Added: liblicense/trunk/xdgmime/xdgmimeint.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimeint.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimeint.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,73 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimeint.h: Internal defines and functions.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifndef __XDG_MIME_INT_H__
>> +#define __XDG_MIME_INT_H__
>> +
>> +#include "xdgmime.h"
>> +
>> +
>> +#ifndef	FALSE
>> +#define	FALSE (0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE (!FALSE)
>> +#endif
>> +
>> +/* FIXME: Needs to be configure check */
>> +typedef unsigned int   xdg_unichar_t;
>> +typedef unsigned char  xdg_uchar8_t;
>> +typedef unsigned short xdg_uint16_t;
>> +typedef unsigned int   xdg_uint32_t;
>> +
>> +#ifdef XDG_PREFIX
>> +#define _xdg_utf8_skip   XDG_ENTRY(utf8_skip)
>> +#define _xdg_utf8_to_ucs4   XDG_ENTRY(utf8_to_ucs4)
>> +#define _xdg_ucs4_to_lower   XDG_ENTRY(ucs4_to_lower)
>> +#define _xdg_utf8_validate   XDG_ENTRY(utf8_validate)
>> +#define _xdg_get_base_name   XDG_ENTRY(get_ase_name)
>> +#endif
>> +
>> +#define SWAP_BE16_TO_LE16(val) (xdg_uint16_t)(((xdg_uint16_t)(val) << 8)|((xdg_uint16_t)(val) >> 8))
>> +
>> +#define SWAP_BE32_TO_LE32(val) (xdg_uint32_t)((((xdg_uint32_t)(val) & 0xFF000000U) >> 24) |	\
>> +					      (((xdg_uint32_t)(val) & 0x00FF0000U) >> 8) |	\
>> +					      (((xdg_uint32_t)(val) & 0x0000FF00U) << 8) |	\
>> +					      (((xdg_uint32_t)(val) & 0x000000FFU) << 24))
>> +/* UTF-8 utils
>> + */
>> +extern const char *const _xdg_utf8_skip;
>> +#define _xdg_utf8_next_char(p) (char *)((p) + _xdg_utf8_skip[*(unsigned char *)(p)])
>> +#define _xdg_utf8_char_size(p) (int) (_xdg_utf8_skip[*(unsigned char *)(p)])
>> +
>> +xdg_unichar_t  _xdg_utf8_to_ucs4  (const char    *source);
>> +xdg_unichar_t  _xdg_ucs4_to_lower (xdg_unichar_t  source);
>> +int            _xdg_utf8_validate (const char    *source);
>> +const char    *_xdg_get_base_name (const char    *file_name);
>> +
>> +#endif /* __XDG_MIME_INT_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimemagic.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimemagic.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimemagic.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,824 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimemagic.: Private file.  Datastructure for storing magic files.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifdef HAVE_CONFIG_H
>> +#include <config.h>
>> +#endif
>> +
>> +#include <assert.h>
>> +#include "xdgmimemagic.h"
>> +#include "xdgmimeint.h"
>> +#include <stdio.h>
>> +#include <stdlib.h>
>> +#include <string.h>
>> +#include <ctype.h>
>> +#include <errno.h>
>> +#include <limits.h>
>> +
>> +#ifndef	FALSE
>> +#define	FALSE	(0)
>> +#endif
>> +
>> +#ifndef	TRUE
>> +#define	TRUE	(!FALSE)
>> +#endif
>> +
>> +extern int errno;
>> +
>> +typedef struct XdgMimeMagicMatch XdgMimeMagicMatch;
>> +typedef struct XdgMimeMagicMatchlet XdgMimeMagicMatchlet;
>> +
>> +typedef enum
>> +{
>> +  XDG_MIME_MAGIC_SECTION,
>> +  XDG_MIME_MAGIC_MAGIC,
>> +  XDG_MIME_MAGIC_ERROR,
>> +  XDG_MIME_MAGIC_EOF
>> +} XdgMimeMagicState;
>> +
>> +struct XdgMimeMagicMatch
>> +{
>> +  const char *mime_type;
>> +  int priority;
>> +  XdgMimeMagicMatchlet *matchlet;
>> +  XdgMimeMagicMatch *next;
>> +};
>> +
>> +
>> +struct XdgMimeMagicMatchlet
>> +{
>> +  int indent;
>> +  int offset;
>> +  unsigned int value_length;
>> +  unsigned char *value;
>> +  unsigned char *mask;
>> +  unsigned int range_length;
>> +  unsigned int word_size;
>> +  XdgMimeMagicMatchlet *next;
>> +};
>> +
>> +
>> +struct XdgMimeMagic
>> +{
>> +  XdgMimeMagicMatch *match_list;
>> +  int max_extent;
>> +};
>> +
>> +static XdgMimeMagicMatch *
>> +_xdg_mime_magic_match_new (void)
>> +{
>> +  return calloc (1, sizeof (XdgMimeMagicMatch));
>> +}
>> +
>> +
>> +static XdgMimeMagicMatchlet *
>> +_xdg_mime_magic_matchlet_new (void)
>> +{
>> +  XdgMimeMagicMatchlet *matchlet;
>> +
>> +  matchlet = malloc (sizeof (XdgMimeMagicMatchlet));
>> +
>> +  matchlet->indent = 0;
>> +  matchlet->offset = 0;
>> +  matchlet->value_length = 0;
>> +  matchlet->value = NULL;
>> +  matchlet->mask = NULL;
>> +  matchlet->range_length = 1;
>> +  matchlet->word_size = 1;
>> +  matchlet->next = NULL;
>> +
>> +  return matchlet;
>> +}
>> +
>> +
>> +static void
>> +_xdg_mime_magic_matchlet_free (XdgMimeMagicMatchlet *mime_magic_matchlet)
>> +{
>> +  if (mime_magic_matchlet)
>> +    {
>> +      if (mime_magic_matchlet->next)
>> +	_xdg_mime_magic_matchlet_free (mime_magic_matchlet->next);
>> +      if (mime_magic_matchlet->value)
>> +	free (mime_magic_matchlet->value);
>> +      if (mime_magic_matchlet->mask)
>> +	free (mime_magic_matchlet->mask);
>> +      free (mime_magic_matchlet);
>> +    }
>> +}
>> +
>> +
>> +/* Frees mime_magic_match and the remainder of its list
>> + */
>> +static void
>> +_xdg_mime_magic_match_free (XdgMimeMagicMatch *mime_magic_match)
>> +{
>> +  XdgMimeMagicMatch *ptr, *next;
>> +
>> +  ptr = mime_magic_match;
>> +  while (ptr)
>> +    {
>> +      next = ptr->next;
>> +
>> +      if (ptr->mime_type)
>> +	free ((void *) ptr->mime_type);
>> +      if (ptr->matchlet)
>> +	_xdg_mime_magic_matchlet_free (ptr->matchlet);
>> +      free (ptr);
>> +
>> +      ptr = next;
>> +    }
>> +}
>> +
>> +/* Reads in a hunk of data until a newline character or a '\000' is hit.  The
>> + * returned string is null terminated, and doesn't include the newline.
>> + */
>> +static unsigned char *
>> +_xdg_mime_magic_read_to_newline (FILE *magic_file,
>> +				 int  *end_of_file)
>> +{
>> +  unsigned char *retval;
>> +  int c;
>> +  int len, pos;
>> +
>> +  len = 128;
>> +  pos = 0;
>> +  retval = malloc (len);
>> +  *end_of_file = FALSE;
>> +
>> +  while (TRUE)
>> +    {
>> +      c = getc_unlocked (magic_file);
>> +      if (c == EOF)
>> +	{
>> +	  *end_of_file = TRUE;
>> +	  break;
>> +	}
>> +      if (c == '\n' || c == '\000')
>> +	break;
>> +      retval[pos++] = (unsigned char) c;
>> +      if (pos % 128 == 127)
>> +	{
>> +	  len = len + 128;
>> +	  retval = realloc (retval, len);
>> +	}
>> +    }
>> +
>> +  retval[pos] = '\000';
>> +  return retval;
>> +}
>> +
>> +/* Returns the number read from the file, or -1 if no number could be read.
>> + */
>> +static int
>> +_xdg_mime_magic_read_a_number (FILE *magic_file,
>> +			       int  *end_of_file)
>> +{
>> +  /* LONG_MAX is about 20 characters on my system */
>> +#define MAX_NUMBER_SIZE 30
>> +  char number_string[MAX_NUMBER_SIZE + 1];
>> +  int pos = 0;
>> +  int c;
>> +  long retval = -1;
>> +
>> +  while (TRUE)
>> +    {
>> +      c = getc_unlocked (magic_file);
>> +
>> +      if (c == EOF)
>> +	{
>> +	  *end_of_file = TRUE;
>> +	  break;
>> +	}
>> +      if (! isdigit (c))
>> +	{
>> +	  ungetc (c, magic_file);
>> +	  break;
>> +	}
>> +      number_string[pos] = (char) c;
>> +      pos++;
>> +      if (pos == MAX_NUMBER_SIZE)
>> +	break;
>> +    }
>> +  if (pos > 0)
>> +    {
>> +      number_string[pos] = '\000';
>> +      errno = 0;
>> +      retval = strtol (number_string, NULL, 10);
>> +
>> +      if ((retval < INT_MIN) || (retval > INT_MAX) || (errno != 0))
>> +	return -1;
>> +    }
>> +
>> +  return retval;
>> +}
>> +
>> +/* Headers are of the format:
>> + * [<priority>:<mime-type>]
>> + */
>> +static XdgMimeMagicState
>> +_xdg_mime_magic_parse_header (FILE *magic_file, XdgMimeMagicMatch *match)
>> +{
>> +  int c;
>> +  char *buffer;
>> +  char *end_ptr;
>> +  int end_of_file = 0;
>> +
>> +  assert (magic_file != NULL);
>> +  assert (match != NULL);
>> +
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    return XDG_MIME_MAGIC_EOF;
>> +  if (c != '[')
>> +    return XDG_MIME_MAGIC_ERROR;
>> +
>> +  match->priority = _xdg_mime_magic_read_a_number (magic_file, &end_of_file);
>> +  if (end_of_file)
>> +    return XDG_MIME_MAGIC_EOF;
>> +  if (match->priority == -1)
>> +    return XDG_MIME_MAGIC_ERROR;
>> +
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    return XDG_MIME_MAGIC_EOF;
>> +  if (c != ':')
>> +    return XDG_MIME_MAGIC_ERROR;
>> +
>> +  buffer = (char *)_xdg_mime_magic_read_to_newline (magic_file, &end_of_file);
>> +  if (end_of_file)
>> +    return XDG_MIME_MAGIC_EOF;
>> +
>> +  end_ptr = buffer;
>> +  while (*end_ptr != ']' && *end_ptr != '\000' && *end_ptr != '\n')
>> +    end_ptr++;
>> +  if (*end_ptr != ']')
>> +    {
>> +      free (buffer);
>> +      return XDG_MIME_MAGIC_ERROR;
>> +    }
>> +  *end_ptr = '\000';
>> +
>> +  match->mime_type = strdup (buffer);
>> +  free (buffer);
>> +
>> +  return XDG_MIME_MAGIC_MAGIC;
>> +}
>> +
>> +static XdgMimeMagicState
>> +_xdg_mime_magic_parse_error (FILE *magic_file)
>> +{
>> +  int c;
>> +
>> +  while (1)
>> +    {
>> +      c = getc_unlocked (magic_file);
>> +      if (c == EOF)
>> +	return XDG_MIME_MAGIC_EOF;
>> +      if (c == '\n')
>> +	return XDG_MIME_MAGIC_SECTION;
>> +    }
>> +}
>> +
>> +/* Headers are of the format:
>> + * [ indent ] ">" start-offset "=" value
>> + * [ "&" mask ] [ "~" word-size ] [ "+" range-length ] "\n"
>> + */
>> +static XdgMimeMagicState
>> +_xdg_mime_magic_parse_magic_line (FILE              *magic_file,
>> +				  XdgMimeMagicMatch *match)
>> +{
>> +  XdgMimeMagicMatchlet *matchlet;
>> +  int c;
>> +  int end_of_file;
>> +  int indent = 0;
>> +  unsigned int bytes_read;
>> +
>> +  assert (magic_file != NULL);
>> +
>> +  /* Sniff the buffer to make sure it's a valid line */
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    return XDG_MIME_MAGIC_EOF;
>> +  else if (c == '[')
>> +    {
>> +      ungetc (c, magic_file);
>> +      return XDG_MIME_MAGIC_SECTION;
>> +    }
>> +  else if (c == '\n')
>> +    return XDG_MIME_MAGIC_MAGIC;
>> +
>> +  /* At this point, it must be a digit or a '>' */
>> +  end_of_file = FALSE;
>> +  if (isdigit (c))
>> +    {
>> +      ungetc (c, magic_file);
>> +      indent = _xdg_mime_magic_read_a_number (magic_file, &end_of_file);
>> +      if (end_of_file)
>> +	return XDG_MIME_MAGIC_EOF;
>> +      if (indent == -1)
>> +	return XDG_MIME_MAGIC_ERROR;
>> +      c = getc_unlocked (magic_file);
>> +      if (c == EOF)
>> +	return XDG_MIME_MAGIC_EOF;
>> +    }
>> +
>> +  if (c != '>')
>> +    return XDG_MIME_MAGIC_ERROR;
>> +
>> +  matchlet = _xdg_mime_magic_matchlet_new ();
>> +  matchlet->indent = indent;
>> +  matchlet->offset = _xdg_mime_magic_read_a_number (magic_file, &end_of_file);
>> +  if (end_of_file)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_EOF;
>> +    }
>> +  if (matchlet->offset == -1)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_ERROR;
>> +    }
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_EOF;
>> +    }
>> +  else if (c != '=')
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_ERROR;
>> +    }
>> +
>> +  /* Next two bytes determine how long the value is */
>> +  matchlet->value_length = 0;
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_EOF;
>> +    }
>> +  matchlet->value_length = c & 0xFF;
>> +  matchlet->value_length = matchlet->value_length << 8;
>> +
>> +  c = getc_unlocked (magic_file);
>> +  if (c == EOF)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_EOF;
>> +    }
>> +  matchlet->value_length = matchlet->value_length + (c & 0xFF);
>> +
>> +  matchlet->value = malloc (matchlet->value_length);
>> +
>> +  /* OOM */
>> +  if (matchlet->value == NULL)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      return XDG_MIME_MAGIC_ERROR;
>> +    }
>> +  bytes_read = fread (matchlet->value, 1, matchlet->value_length, magic_file);
>> +  if (bytes_read != matchlet->value_length)
>> +    {
>> +      _xdg_mime_magic_matchlet_free (matchlet);
>> +      if (feof (magic_file))
>> +	return XDG_MIME_MAGIC_EOF;
>> +      else
>> +	return XDG_MIME_MAGIC_ERROR;
>> +    }
>> +
>> +  c = getc_unlocked (magic_file);
>> +  if (c == '&')
>> +    {
>> +      matchlet->mask = malloc (matchlet->value_length);
>> +      /* OOM */
>> +      if (matchlet->mask == NULL)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  return XDG_MIME_MAGIC_ERROR;
>> +	}
>> +      bytes_read = fread (matchlet->mask, 1, matchlet->value_length, magic_file);
>> +      if (bytes_read != matchlet->value_length)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  if (feof (magic_file))
>> +	    return XDG_MIME_MAGIC_EOF;
>> +	  else
>> +	    return XDG_MIME_MAGIC_ERROR;
>> +	}
>> +      c = getc_unlocked (magic_file);
>> +    }
>> +
>> +  if (c == '~')
>> +    {
>> +      matchlet->word_size = _xdg_mime_magic_read_a_number (magic_file, &end_of_file);
>> +      if (end_of_file)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  return XDG_MIME_MAGIC_EOF;
>> +	}
>> +      if (matchlet->word_size != 0 &&
>> +	  matchlet->word_size != 1 &&
>> +	  matchlet->word_size != 2 &&
>> +	  matchlet->word_size != 4)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  return XDG_MIME_MAGIC_ERROR;
>> +	}
>> +      c = getc_unlocked (magic_file);
>> +    }
>> +
>> +  if (c == '+')
>> +    {
>> +      int range_length;
>> +
>> +      range_length = _xdg_mime_magic_read_a_number (magic_file, &end_of_file);
>> +      if (end_of_file)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  return XDG_MIME_MAGIC_EOF;
>> +	}
>> +      if (range_length == -1)
>> +	{
>> +	  _xdg_mime_magic_matchlet_free (matchlet);
>> +	  return XDG_MIME_MAGIC_ERROR;
>> +	}
>> +      /* now we are sure that range_length is positive */
>> +      matchlet->range_length = (unsigned int) range_length;
>> +      c = getc_unlocked (magic_file);
>> +    }
>> +
>> +
>> +  if (c == '\n')
>> +    {
>> +      /* We clean up the matchlet, byte swapping if needed */
>> +      if (matchlet->word_size > 1)
>> +	{
>> +#if LITTLE_ENDIAN
>> +	  unsigned int i;
>> +#endif
>> +	  if (matchlet->value_length % matchlet->word_size != 0)
>> +	    {
>> +	      _xdg_mime_magic_matchlet_free (matchlet);
>> +	      return XDG_MIME_MAGIC_ERROR;
>> +	    }
>> +	  /* FIXME: need to get this defined in a <config.h> style file */
>> +#if LITTLE_ENDIAN
>> +	  for (i = 0; i < matchlet->value_length; i = i + matchlet->word_size)
>> +	    {
>> +	      if (matchlet->word_size == 2)
>> +		*((xdg_uint16_t *) matchlet->value + i) = SWAP_BE16_TO_LE16 (*((xdg_uint16_t *) (matchlet->value + i)));
>> +	      else if (matchlet->word_size == 4)
>> +		*((xdg_uint32_t *) matchlet->value + i) = SWAP_BE32_TO_LE32 (*((xdg_uint32_t *) (matchlet->value + i)));
>> +	      if (matchlet->mask)
>> +		{
>> +		  if (matchlet->word_size == 2)
>> +		    *((xdg_uint16_t *) matchlet->mask + i) = SWAP_BE16_TO_LE16 (*((xdg_uint16_t *) (matchlet->mask + i)));
>> +		  else if (matchlet->word_size == 4)
>> +		    *((xdg_uint32_t *) matchlet->mask + i) = SWAP_BE32_TO_LE32 (*((xdg_uint32_t *) (matchlet->mask + i)));
>> +
>> +		}
>> +	    }
>> +#endif
>> +	}
>> +
>> +      matchlet->next = match->matchlet;
>> +      match->matchlet = matchlet;
>> +
>> +
>> +      return XDG_MIME_MAGIC_MAGIC;
>> +    }
>> +
>> +  _xdg_mime_magic_matchlet_free (matchlet);
>> +  if (c == EOF)
>> +    return XDG_MIME_MAGIC_EOF;
>> +
>> +  return XDG_MIME_MAGIC_ERROR;
>> +}
>> +
>> +static int
>> +_xdg_mime_magic_matchlet_compare_to_data (XdgMimeMagicMatchlet *matchlet,
>> +					  const void           *data,
>> +					  size_t                len)
>> +{
>> +  unsigned int i, j;
>> +  for (i = matchlet->offset; i < matchlet->offset + matchlet->range_length; i++)
>> +    {
>> +      int valid_matchlet = TRUE;
>> +
>> +      if (i + matchlet->value_length > len)
>> +	return FALSE;
>> +
>> +      if (matchlet->mask)
>> +	{
>> +	  for (j = 0; j < matchlet->value_length; j++)
>> +	    {
>> +	      if ((matchlet->value[j] & matchlet->mask[j]) !=
>> +		  ((((unsigned char *) data)[j + i]) & matchlet->mask[j]))
>> +		{
>> +		  valid_matchlet = FALSE;
>> +		  break;
>> +		}
>> +	    }
>> +	}
>> +      else
>> +	{
>> +	  for (j = 0; j <  matchlet->value_length; j++)
>> +	    {
>> +	      if (matchlet->value[j] != ((unsigned char *) data)[j + i])
>> +		{
>> +		  valid_matchlet = FALSE;
>> +		  break;
>> +		}
>> +	    }
>> +	}
>> +      if (valid_matchlet)
>> +	return TRUE;
>> +    }
>> +  return FALSE;
>> +}
>> +
>> +static int
>> +_xdg_mime_magic_matchlet_compare_level (XdgMimeMagicMatchlet *matchlet,
>> +					const void           *data,
>> +					size_t                len,
>> +					int                   indent)
>> +{
>> +  while ((matchlet != NULL) && (matchlet->indent == indent))
>> +    {
>> +      if (_xdg_mime_magic_matchlet_compare_to_data (matchlet, data, len))
>> +	{
>> +	  if ((matchlet->next == NULL) ||
>> +	      (matchlet->next->indent <= indent))
>> +	    return TRUE;
>> +
>> +	  if (_xdg_mime_magic_matchlet_compare_level (matchlet->next,
>> +						      data,
>> +						      len,
>> +						      indent + 1))
>> +	    return TRUE;
>> +	}
>> +
>> +      do
>> +	{
>> +	  matchlet = matchlet->next;
>> +	}
>> +      while (matchlet && matchlet->indent > indent);
>> +    }
>> +
>> +  return FALSE;
>> +}
>> +
>> +static int
>> +_xdg_mime_magic_match_compare_to_data (XdgMimeMagicMatch *match,
>> +				       const void        *data,
>> +				       size_t             len)
>> +{
>> +  return _xdg_mime_magic_matchlet_compare_level (match->matchlet, data, len, 0);
>> +}
>> +
>> +static void
>> +_xdg_mime_magic_insert_match (XdgMimeMagic      *mime_magic,
>> +			      XdgMimeMagicMatch *match)
>> +{
>> +  XdgMimeMagicMatch *list;
>> +
>> +  if (mime_magic->match_list == NULL)
>> +    {
>> +      mime_magic->match_list = match;
>> +      return;
>> +    }
>> +
>> +  if (match->priority > mime_magic->match_list->priority)
>> +    {
>> +      match->next = mime_magic->match_list;
>> +      mime_magic->match_list = match;
>> +      return;
>> +    }
>> +
>> +  list = mime_magic->match_list;
>> +  while (list->next != NULL)
>> +    {
>> +      if (list->next->priority < match->priority)
>> +	{
>> +	  match->next = list->next;
>> +	  list->next = match;
>> +	  return;
>> +	}
>> +      list = list->next;
>> +    }
>> +  list->next = match;
>> +  match->next = NULL;
>> +}
>> +
>> +XdgMimeMagic *
>> +_xdg_mime_magic_new (void)
>> +{
>> +  return calloc (1, sizeof (XdgMimeMagic));
>> +}
>> +
>> +void
>> +_xdg_mime_magic_free (XdgMimeMagic *mime_magic)
>> +{
>> +  if (mime_magic) {
>> +    _xdg_mime_magic_match_free (mime_magic->match_list);
>> +    free (mime_magic);
>> +  }
>> +}
>> +
>> +int
>> +_xdg_mime_magic_get_buffer_extents (XdgMimeMagic *mime_magic)
>> +{
>> +  return mime_magic->max_extent;
>> +}
>> +
>> +const char *
>> +_xdg_mime_magic_lookup_data (XdgMimeMagic *mime_magic,
>> +			     const void   *data,
>> +			     size_t        len,
>> +                             const char   *mime_types[],
>> +                             int           n_mime_types)
>> +{
>> +  XdgMimeMagicMatch *match;
>> +  const char *mime_type;
>> +  int n;
>> +  int priority;
>> +  int had_match;
>> +
>> +  mime_type = NULL;
>> +  priority = 0;
>> +  had_match = 0;
>> +  for (match = mime_magic->match_list; match; match = match->next)
>> +    {
>> +      if (_xdg_mime_magic_match_compare_to_data (match, data, len))
>> +	{
>> +	  if (!had_match || match->priority > priority ||
>> +	      (mime_type != NULL && _xdg_mime_mime_type_subclass (match->mime_type, mime_type)))
>> +	    {
>> +	      mime_type = match->mime_type;
>> +	      priority = match->priority;
>> +	    }
>> +	  else if (had_match && match->priority == priority)
>> +	    /* multiple unrelated patterns with the same priority matched,
>> +	     * so we can't tell what type this is. */
>> +	    mime_type = NULL;
>> +
>> +	  had_match = 1;
>> +	}
>> +      else 
>> +	{
>> +	  for (n = 0; n < n_mime_types; n++)
>> +	    {
>> +	      if (mime_types[n] && 
>> +		  _xdg_mime_mime_type_equal (mime_types[n], match->mime_type))
>> +		mime_types[n] = NULL;
>> +	    }
>> +	}
>> +    }
>> +
>> +  if (mime_type == NULL)
>> +    {
>> +      for (n = 0; n < n_mime_types; n++)
>> +	{
>> +	  if (mime_types[n])
>> +	    mime_type = mime_types[n];
>> +	}
>> +    }
>> +
>> +  return mime_type;
>> +}
>> +
>> +static void
>> +_xdg_mime_update_mime_magic_extents (XdgMimeMagic *mime_magic)
>> +{
>> +  XdgMimeMagicMatch *match;
>> +  int max_extent = 0;
>> +
>> +  for (match = mime_magic->match_list; match; match = match->next)
>> +    {
>> +      XdgMimeMagicMatchlet *matchlet;
>> +
>> +      for (matchlet = match->matchlet; matchlet; matchlet = matchlet->next)
>> +	{
>> +	  int extent;
>> +
>> +	  extent = matchlet->value_length + matchlet->offset + matchlet->range_length;
>> +	  if (max_extent < extent)
>> +	    max_extent = extent;
>> +	}
>> +    }
>> +
>> +  mime_magic->max_extent = max_extent;
>> +}
>> +
>> +static XdgMimeMagicMatchlet *
>> +_xdg_mime_magic_matchlet_mirror (XdgMimeMagicMatchlet *matchlets)
>> +{
>> +  XdgMimeMagicMatchlet *new_list;
>> +  XdgMimeMagicMatchlet *tmp;
>> +
>> +  if ((matchlets == NULL) || (matchlets->next == NULL))
>> +    return matchlets;
>> +
>> +  new_list = NULL;
>> +  tmp = matchlets;
>> +  while (tmp != NULL)
>> +    {
>> +      XdgMimeMagicMatchlet *matchlet;
>> +
>> +      matchlet = tmp;
>> +      tmp = tmp->next;
>> +      matchlet->next = new_list;
>> +      new_list = matchlet;
>> +    }
>> +
>> +  return new_list;
>> +
>> +}
>> +
>> +static void
>> +_xdg_mime_magic_read_magic_file (XdgMimeMagic *mime_magic,
>> +				 FILE         *magic_file)
>> +{
>> +  XdgMimeMagicState state;
>> +  XdgMimeMagicMatch *match = NULL; /* Quiet compiler */
>> +
>> +  state = XDG_MIME_MAGIC_SECTION;
>> +
>> +  while (state != XDG_MIME_MAGIC_EOF)
>> +    {
>> +      switch (state)
>> +	{
>> +	case XDG_MIME_MAGIC_SECTION:
>> +	  match = _xdg_mime_magic_match_new ();
>> +	  state = _xdg_mime_magic_parse_header (magic_file, match);
>> +	  if (state == XDG_MIME_MAGIC_EOF || state == XDG_MIME_MAGIC_ERROR)
>> +	    _xdg_mime_magic_match_free (match);
>> +	  break;
>> +	case XDG_MIME_MAGIC_MAGIC:
>> +	  state = _xdg_mime_magic_parse_magic_line (magic_file, match);
>> +	  if (state == XDG_MIME_MAGIC_SECTION ||
>> +	      (state == XDG_MIME_MAGIC_EOF && match->mime_type))
>> +	    {
>> +	      match->matchlet = _xdg_mime_magic_matchlet_mirror (match->matchlet);
>> +	      _xdg_mime_magic_insert_match (mime_magic, match);
>> +	    }
>> +	  else if (state == XDG_MIME_MAGIC_EOF || state == XDG_MIME_MAGIC_ERROR)
>> +	    _xdg_mime_magic_match_free (match);
>> +	  break;
>> +	case XDG_MIME_MAGIC_ERROR:
>> +	  state = _xdg_mime_magic_parse_error (magic_file);
>> +	  break;
>> +	case XDG_MIME_MAGIC_EOF:
>> +	default:
>> +	  /* Make the compiler happy */
>> +	  assert (0);
>> +	}
>> +    }
>> +  _xdg_mime_update_mime_magic_extents (mime_magic);
>> +}
>> +
>> +void
>> +_xdg_mime_magic_read_from_file (XdgMimeMagic *mime_magic,
>> +				const char   *file_name)
>> +{
>> +  FILE *magic_file;
>> +  char header[12];
>> +
>> +  magic_file = fopen (file_name, "r");
>> +
>> +  if (magic_file == NULL)
>> +    return;
>> +
>> +  if (fread (header, 1, 12, magic_file) == 12)
>> +    {
>> +      if (memcmp ("MIME-Magic\0\n", header, 12) == 0)
>> +        _xdg_mime_magic_read_magic_file (mime_magic, magic_file);
>> +    }
>> +
>> +  fclose (magic_file);
>> +}
>>
>> Added: liblicense/trunk/xdgmime/xdgmimemagic.h
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimemagic.h	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimemagic.h	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,56 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimemagic.h: Private file.  Datastructure for storing the magic files.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2003  Red Hat, Inc.
>> + * Copyright (C) 2003  Jonathan Blandford <jrb@alum.mit.edu>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>> + *
>> + * This library is distributed in the hope that it will be useful,
>> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
>> + * Lesser General Public License for more details.
>> + *
>> + * You should have received a copy of the GNU Lesser General Public
>> + * License along with this library; if not, write to the
>> + * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
>> + * Boston, MA 02111-1307, USA.
>> + */
>> +
>> +#ifndef __XDG_MIME_MAGIC_H__
>> +#define __XDG_MIME_MAGIC_H__
>> +
>> +#include <unistd.h>
>> +#include "xdgmime.h"
>> +typedef struct XdgMimeMagic XdgMimeMagic;
>> +
>> +#ifdef XDG_PREFIX
>> +#define _xdg_mime_glob_read_from_file             XDG_ENTRY(glob_read_from_file)
>> +#define _xdg_mime_magic_new                       XDG_ENTRY(magic_new)
>> +#define _xdg_mime_magic_read_from_file            XDG_ENTRY(magic_read_from_file)
>> +#define _xdg_mime_magic_free                      XDG_ENTRY(magic_free)
>> +#define _xdg_mime_magic_get_buffer_extents        XDG_ENTRY(magic_get_buffer_extents)
>> +#define _xdg_mime_magic_lookup_data               XDG_ENTRY(magic_lookup_data)
>> +#endif
>> +
>> +
>> +XdgMimeMagic *_xdg_mime_magic_new                (void);
>> +void          _xdg_mime_magic_read_from_file     (XdgMimeMagic *mime_magic,
>> +						  const char   *file_name);
>> +void          _xdg_mime_magic_free               (XdgMimeMagic *mime_magic);
>> +int           _xdg_mime_magic_get_buffer_extents (XdgMimeMagic *mime_magic);
>> +const char   *_xdg_mime_magic_lookup_data        (XdgMimeMagic *mime_magic,
>> +						  const void   *data,
>> +						  size_t        len,
>> +						  const char   *mime_types[],
>> +						  int           n_mime_types);
>> +
>> +#endif /* __XDG_MIME_MAGIC_H__ */
>>
>> Added: liblicense/trunk/xdgmime/xdgmimeparent.c
>> ===================================================================
>> --- liblicense/trunk/xdgmime/xdgmimeparent.c	                        (rev 0)
>> +++ liblicense/trunk/xdgmime/xdgmimeparent.c	2007-06-29 19:16:02 UTC (rev 6089)
>> @@ -0,0 +1,219 @@
>> +/* -*- mode: C; c-file-style: "gnu" -*- */
>> +/* xdgmimealias.c: Private file.  Datastructure for storing the hierarchy.
>> + *
>> + * More info can be found at http://www.freedesktop.org/standards/
>> + *
>> + * Copyright (C) 2004  Red Hat, Inc.
>> + * Copyright (C) 2004  Matthias Clasen <mclasen@redhat.com>
>> + *
>> + * Licensed under the Academic Free License version 2.0
>> + * Or under the following terms:
>> + *
>> + * This library is free software; you can redistribute it and/or
>> + * modify it under the terms of the GNU Lesser General Public
>> + * License as published by the Free Software Foundation; either
>> + * version 2 of the License, or (at your option) any later version.
>>
>> @@ Diff output truncated at 100000 characters. @@
>>
>> This was sent by the SourceForge.net collaborative development platform, the world's largest Open Source development site.
>>
>> -------------------------------------------------------------------------
>> This SF.net email is sponsored by DB2 Express
>> Download DB2 Express C - the FREE version of DB2 express and take
>> control of your XML. No limits. Just data. Click to get it now.
>> http://sourceforge.net/powerbar/db2/
>> _______________________________________________
>> Cctools-cvs mailing list
>> Cctools-cvs@lists.sourceforge.net
>> https://lists.sourceforge.net/lists/listinfo/cctools-cvs
>>     

_______________________________________________
cc-devel mailing list
cc-devel@lists.ibiblio.org
http://lists.ibiblio.org/mailman/listinfo/cc-devel

  

-R B>zt=ed=.n c6