From beginners-return-92663-ktwarwic=speedy.uwaterloo.ca@perl.org  Fri Jun 22 09:15:57 2007
Return-Path: <beginners-return-92663-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5MDFuL9006611
	for <ktwarwic@flax9.uwaterloo.ca>; Fri, 22 Jun 2007 09:15:57 -0400
Received: (qmail 26547 invoked by uid 514); 22 Jun 2007 13:15:50 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 20228 invoked from network); 22 Jun 2007 10:29:02 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of almatirkey@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Fri Jun 22 10:28:47 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 216.168.1.22 is neither permitted nor denied by domain of news@google.com)
From: Alma <almatirkey@gmail.com>
Subject: Database connection using cfg file
Date: Fri, 22 Jun 2007 03:28:26 -0700
Organization: http://groups.google.com
Lines: 76
Message-ID: <1182508106.794084.238770@z28g2000prd.googlegroups.com>
NNTP-Posting-Host: 121.246.231.221
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
X-Trace: posting.google.com 1182508107 4788 127.0.0.1 (22 Jun 2007 10:28:27 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Fri, 22 Jun 2007 10:28:27 +0000 (UTC)
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.2) Gecko/20070412 Firefox/2.0.0.2,gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: z28g2000prd.googlegroups.com; posting-host=121.246.231.221;
   posting-account=L0DpxA0AAACGFIt6bbVaqcLEK6K2SZFe
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

Hi All,

I wanted to make a database connection using the values provided
in .cfg file

my.cfg
***********

dbname=xyz
user=abc
passwd=abc123

***********

my perl package which need to read the my.cfg file & make the
connection

mypackage
************
sub new(){
my @arr=();

        readcfg();

        #foreach  (@arr) {
        #print "$_ \n";
        #print "for loop";
        #}

       $dbname=@arr[0];
       $usr = @arr[1];
       $pwd ||= @arr[2];
#       ($self) = {};
#       bless($self);
       $databasehandle = DBI->connect("DBI:Pg:dbname=$dbname",$usr,
$pwd,{PrintError =>1});

       if (!$databasehandle){
               print "Database connection is not estabilished";
               exit;
       }



        sub readcfg {

               # $cfgpath = shift;
                open(FH,"<my.cfg")or die "Can't open file";
                while (my $line=<FH>) {
                        chomp $line;
                         next if ($line =~ /^\s*#/);
                         next if ($line =~ /^\s*$/);
                        $line =~ s/#.*$//;
                }

($Key,$Val) = ($line =~ /^\s*(\S+)\s*=\s*(.*\S)\s*$/);
                 push @arr,$Val;
                return @arr;
}

return($self);
}


---------

I am getting an error

(DBI:connect ' ' ) failed .Fatal database 'root' doesn't exist.

Can any one suggest me how can we read the values from conf file & get
the database connection .
& i need to call the database handle to call the subroutine.

Thanks in advance.


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

6>n2�ws7oD stP