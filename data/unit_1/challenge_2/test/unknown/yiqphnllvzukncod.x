From samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org  Fri Jun 22 05:44:59 2007
Return-Path: <samba-technical-bounces+ktwarwic=speedy.uwaterloo.ca@lists.samba.org>
Received: from lists.samba.org (mail.samba.org [66.70.73.150])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5M9ivL9004550
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 05:44:58 -0400
Received: from dp.samba.org (localhost [127.0.0.1])
	by lists.samba.org (Postfix) with ESMTP id A8A5816389D
	for <ktwarwic@speedy.uwaterloo.ca>; Fri, 22 Jun 2007 09:44:55 +0000 (GMT)
X-Spam-Checker-Version: SpamAssassin 3.1.7 (2006-10-05) on dp.samba.org
X-Spam-Level: 
X-Spam-Status: No, score=0.4 required=3.8 tests=BAYES_00,NO_MORE_FUNN,
	NO_REAL_NAME,RCVD_IN_DSBL autolearn=no version=3.1.7
X-Original-To: samba-technical@lists.samba.org
Delivered-To: samba-technical@lists.samba.org
X-Greylist: delayed 319 seconds by postgrey-1.24 at dp.samba.org;
	Fri, 22 Jun 2007 09:44:32 GMT
Received: from catv-50623499.catv.broadband.hu
	(catv-50639df7.catv.broadband.hu [80.99.157.247])
	by lists.samba.org (Postfix) with ESMTP id 832DC162B01
	for <samba-technical@lists.samba.org>;
	Fri, 22 Jun 2007 09:44:32 +0000 (GMT)
X-AV-Checked[2AB7]: Fri Jun 22 11:39:11 2007 @fw.edus.hu
X-AV-Updated[2AB7]: 2007-06-22 / 329276.
X-AV-Version[2AB7]: KAV 5.5.3/RELEASE.
Date: Fri, 22 Jun 2007 11:39:10 +0200
To: samba-technical@lists.samba.org
Message-ID: <20070622093910.GH14679@fw.edus.hu>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
User-Agent: Mutt/1.5.9i
From: varadi@mithrandir.hu
Subject: Patch for samba logging.
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I have made a modification for two samba versions (3.0.24, 3.0.25a). The
official version leaves only the last logfile, but we sometimes needed the
older logs also.

After apllying the patch, a new configuration option appears. If one
chooses the "new" format, then the rotated logfiles receive the
.YYYYmmdd_HHMMSS extension. With the "old" format, the rotated logfile
receive the .old extension, and the rotated log overwrite the previous
logfile.

Please, apply these patches, i think i am not the only one who find this
useful. Thanks.

-- 
    [Varadi Gabor]

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="patch-for-3.0.24.diff"

--- .samba-3.0.24.orig/source/lib/debug.c	2007-06-18 16:17:52.000000000 +0200
+++ .samba-3.0.24/source/lib/debug.c	2007-06-19 15:42:22.000000000 +0200
@@ -706,7 +706,7 @@
 		if( dbf && get_file_size( debugf ) > maxlog ) {
 			pstring name;
 
-			slprintf( name, sizeof(name)-1, "%s.old", debugf );
+			slprintf( name, sizeof(name)-1, "%s.%s", debugf, lp_newlog() ? timestring2() : "old" );
 			(void)rename( debugf, name );
       
 			if (!reopen_logs()) {
--- .samba-3.0.24.orig/source/lib/time.c	2007-06-18 16:17:40.000000000 +0200
+++ .samba-3.0.24/source/lib/time.c	2007-06-19 15:42:22.000000000 +0200
@@ -690,6 +690,28 @@
 	return(TimeBuf);
 }
 
+char *timestring2( void )
+{
+	static fstring TimeBuf;
+	struct timeval tp;
+	time_t t;
+	struct tm *tm;
+
+	GetTimeOfDay( &tp );
+	t = (time_t)tp.tv_sec;
+	tm = localtime( &t );
+	if (!tm) {
+		slprintf( TimeBuf, sizeof(TimeBuf)-1, "%ld", (long)tp.tv_sec );
+	} else {
+#ifdef HAVE_STRFTIME
+		strftime( TimeBuf, sizeof(TimeBuf)-1, "%Y%m%d_%H%M%S", tm );
+#else
+		slprintf( TimeBuf, sizeof(TimeBuf)-1, "%ld", (long)tp.tv_sec );
+#endif
+	}
+	return( TimeBuf );
+}
+
 /****************************************************************************
  Return the best approximation to a 'create time' under UNIX from a stat
  structure.
--- .samba-3.0.24.orig/source/param/loadparm.c	2007-06-19 11:00:05.000000000 +0200
+++ .samba-3.0.24/source/param/loadparm.c	2007-06-19 15:42:22.000000000 +0200
@@ -263,6 +263,7 @@
 	BOOL bWriteRaw;
 	BOOL bReadbmpx;
 	BOOL bSyslogOnly;
+	BOOL bNewlog;
 	BOOL bBrowseList;
 	BOOL bNISHomeMap;
 	BOOL bTimeServer;
@@ -940,6 +941,7 @@
 	{"debuglevel", P_STRING, P_GLOBAL, &Globals.szLogLevel, handle_debug_list, NULL, FLAG_HIDE}, 
 	{"syslog", P_INTEGER, P_GLOBAL, &Globals.syslog, NULL, NULL, FLAG_ADVANCED}, 
 	{"syslog only", P_BOOL, P_GLOBAL, &Globals.bSyslogOnly, NULL, NULL, FLAG_ADVANCED}, 
+	{"new log", P_BOOL, P_GLOBAL, &Globals.bNewlog, NULL, NULL, FLAG_ADVANCED}, 
 	{"log file", P_STRING, P_GLOBAL, &Globals.szLogFile, NULL, NULL, FLAG_ADVANCED}, 
 
 	{"max log size", P_INTEGER, P_GLOBAL, &Globals.max_log_size, NULL, NULL, FLAG_ADVANCED}, 
@@ -1501,6 +1503,7 @@
 	Globals.bObeyPamRestrictions = False;
 	Globals.syslog = 1;
 	Globals.bSyslogOnly = False;
+	Globals.bNewlog = False;
 	Globals.bTimestampLogs = True;
 	string_set(&Globals.szLogLevel, "0");
 	Globals.bDebugHiresTimestamp = False;
@@ -1873,6 +1876,7 @@
 FN_GLOBAL_INTEGER(lp_client_schannel, &Globals.clientSchannel)
 FN_GLOBAL_INTEGER(lp_server_schannel, &Globals.serverSchannel)
 FN_GLOBAL_BOOL(lp_syslog_only, &Globals.bSyslogOnly)
+FN_GLOBAL_BOOL(lp_newlog, &Globals.bNewlog)
 FN_GLOBAL_BOOL(lp_timestamp_logs, &Globals.bTimestampLogs)
 FN_GLOBAL_BOOL(lp_debug_hires_timestamp, &Globals.bDebugHiresTimestamp)
 FN_GLOBAL_BOOL(lp_debug_pid, &Globals.bDebugPid)

--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="patch-for-3.0.25a.diff"

--- .samba-3.0.25a.orig/source/lib/debug.c	2007-03-20 23:25:38.000000000 +0100
+++ .samba-3.0.25a/source/lib/debug.c	2007-06-19 13:36:44.000000000 +0200
@@ -706,7 +706,7 @@
 		if( dbf && get_file_size( debugf ) > maxlog ) {
 			pstring name;
 
-			slprintf( name, sizeof(name)-1, "%s.old", debugf );
+			slprintf( name, sizeof(name)-1, "%s.%s", debugf, lp_newlog() ? timestring2() : "old" );
 			(void)rename( debugf, name );
       
 			if (!reopen_logs()) {
--- .samba-3.0.25a.orig/source/lib/time.c	2007-05-23 17:29:16.000000000 +0200
+++ .samba-3.0.25a/source/lib/time.c	2007-06-19 13:36:22.000000000 +0200
@@ -822,6 +822,28 @@
 	put_long_date_timespec(p, ts);
 }
 
+char *timestring2( void )
+{
+	static fstring TimeBuf;
+	struct timeval tp;
+	time_t t;
+	struct tm *tm;
+
+	GetTimeOfDay( &tp );
+	t = (time_t)tp.tv_sec;
+	tm = localtime( &t );
+	if (!tm) {
+		slprintf( TimeBuf, sizeof(TimeBuf)-1, "%ld", (long)tp.tv_sec );
+	} else {
+#ifdef HAVE_STRFTIME
+		strftime( TimeBuf, sizeof(TimeBuf)-1, "%Y%m%d_%H%M%S", tm );
+#else
+		slprintf( TimeBuf, sizeof(TimeBuf)-1, "%ld", (long)tp.tv_sec );
+#endif
+	}
+	return( TimeBuf );
+}
+
 /****************************************************************************
  Return the best approximation to a 'create time' under UNIX from a stat
  structure.
--- .samba-3.0.25a.orig/source/param/loadparm.c	2007-06-19 10:27:00.000000000 +0200
+++ .samba-3.0.25a/source/param/loadparm.c	2007-06-19 13:36:22.000000000 +0200
@@ -266,6 +266,7 @@
 	BOOL bWriteRaw;
 	BOOL bReadbmpx;
 	BOOL bSyslogOnly;
+	BOOL bNewlog;
 	BOOL bBrowseList;
 	BOOL bNISHomeMap;
 	BOOL bTimeServer;
@@ -948,6 +949,7 @@
 	{"debuglevel", P_STRING, P_GLOBAL, &Globals.szLogLevel, handle_debug_list, NULL, FLAG_HIDE}, 
 	{"syslog", P_INTEGER, P_GLOBAL, &Globals.syslog, NULL, NULL, FLAG_ADVANCED}, 
 	{"syslog only", P_BOOL, P_GLOBAL, &Globals.bSyslogOnly, NULL, NULL, FLAG_ADVANCED}, 
+	{"new log", P_BOOL, P_GLOBAL, &Globals.bNewlog, NULL, NULL, FLAG_ADVANCED}, 
 	{"log file", P_STRING, P_GLOBAL, &Globals.szLogFile, NULL, NULL, FLAG_ADVANCED}, 
 
 	{"max log size", P_INTEGER, P_GLOBAL, &Globals.max_log_size, NULL, NULL, FLAG_ADVANCED}, 
@@ -1515,6 +1517,7 @@
 	Globals.bObeyPamRestrictions = False;
 	Globals.syslog = 1;
 	Globals.bSyslogOnly = False;
+	Globals.bNewlog = False;
 	Globals.bTimestampLogs = True;
 	string_set(&Globals.szLogLevel, "0");
 	Globals.bDebugPrefixTimestamp = False;
@@ -1944,6 +1947,7 @@
 FN_GLOBAL_INTEGER(lp_client_schannel, &Globals.clientSchannel)
 FN_GLOBAL_INTEGER(lp_server_schannel, &Globals.serverSchannel)
 FN_GLOBAL_BOOL(lp_syslog_only, &Globals.bSyslogOnly)
+FN_GLOBAL_BOOL(lp_newlog, &Globals.bNewlog)
 FN_GLOBAL_BOOL(lp_timestamp_logs, &Globals.bTimestampLogs)
 FN_GLOBAL_BOOL(lp_debug_prefix_timestamp, &Globals.bDebugPrefixTimestamp)
 FN_GLOBAL_BOOL(lp_debug_hires_timestamp, &Globals.bDebugHiresTimestamp)

--Q68bSM7Ycu6FN28Q--

          

l 70
awrrE