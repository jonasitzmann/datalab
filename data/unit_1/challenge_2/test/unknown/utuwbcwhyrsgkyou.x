From beginners-return-93114-ktwarwic=speedy.uwaterloo.ca@perl.org  Thu Jul  5 20:20:45 2007
Return-Path: <beginners-return-93114-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l660KiL9000816
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 5 Jul 2007 20:20:44 -0400
Received: (qmail 11476 invoked by uid 514); 6 Jul 2007 00:20:33 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 11874 invoked from network); 5 Jul 2007 21:05:49 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of olson.ray@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Thu Jul 05 21:05:33 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Ray <olson.ray@gmail.com>
Subject: GetOptions with dynamic set of options
Date: Thu, 05 Jul 2007 21:05:11 -0000
Organization: http://groups.google.com
Lines: 58
Message-ID: <1183669511.510741.136410@z28g2000prd.googlegroups.com>
NNTP-Posting-Host: 63.82.24.252
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1183669513 23870 127.0.0.1 (5 Jul 2007 21:05:13 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Thu, 5 Jul 2007 21:05:13 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: z28g2000prd.googlegroups.com; posting-host=63.82.24.252;
   posting-account=9bFUcw0AAAAwGqtOZDSWnzKogeRqdDZL
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi,
I'm trying to build a generic Parsing Arguments functions that would
be driven by an array of possible options that is defined by a
specific program. I'm trying to use this feature of GetOptions:

my %h = ();
GetOptions (\%h, 'length=i');       # will store in $h{length}

But what I would like to do is to not have to hard code the 'length=i'
option directly in the argument for GetOptions, but rather this be
based on some list. Here is what I would like to do (but the options
part is not working). Anyone have any suggestions or recommendations
(maybe I'm going at this all wrong)?


use Getopt::Long;
use Data::Dumper qw(Dumper);
our %MyArgs = ();
our %OptList = ();
sub ParseArgs {
	GetOptions(%OptList) or Getopt::Long::HelpMessage(2);
}


@GlobalSwitches = ("test","showlog");       # These will be available
to any program
@LocalSwitches = ("noadd", "noemail");     # These will be placed in
an ini file
@OptionList = ("strategy","country");          # These will be placed
in an ini file
# strategy option could contain: "LT" or "MT" or "ST" or "ALL"
# country option could contain a ISO country code, I would like to
support multiple values

@SwitchList = (@GlobalSwitches, @LocalSwitches);

foreach my $switch (@SwitchList) {$OptList{$switch} = \
$MyArgs{$switch}}
print "Available command line args \n" . Dumper(%MyArgs) ;

foreach my $option (@OptionList) {$OptList{$option} = \
$MyArgs{$option}}
print "Available command line args is now \n" . Dumper(%MyArgs) ;

ParseArgs;

# Switch Results
print "loading into DB is turned OFF\n" if $MyArgs{noadd};
print "E-mailing results is turned OFF\n" if $MyArgs{noemail};
print "Running in TEST Mode\n" if $MyArgs{test};
print "Running in SHOWLOG Mode\n" if $MyArgs{showlog};

#Option Results
print "Strategy is: $MyArgs{strategy} \n" if $MyArgs{strategy};
print "Country is: $MyArgs{country} \n" if $MyArgs{country};

exit;


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


            

ns qNne8