From beginners-return-92365-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 13 14:09:35 2007
Return-Path: <beginners-return-92365-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5DI9YL9010802
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 13 Jun 2007 14:09:34 -0400
Received: (qmail 21754 invoked by uid 514); 13 Jun 2007 18:08:55 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Delivered-To: moderator for beginners@perl.org
Received: (qmail 12996 invoked from network); 13 Jun 2007 17:10:02 -0000
Delivered-To: beginners@perl.org
X-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: 63.251.223.186 is neither permitted nor denied by domain of northstardomus@gmail.com)
To: beginners@perl.org
MBOX-Line: From news@google.com Wed Jun 13 17:09:45 2007
Delivered-To: colobus-nntpmod@lists.develooper.com
Delivered-To: news-moderator-perl.beginners@perl.org
Received-SPF: neutral (x1.develooper.com: 130.59.1.10 is neither permitted nor denied by domain of news@google.com)
From: Northstardomus <northstardomus@gmail.com>
Subject: Re: Database insertion, escape issue
Date: Wed, 13 Jun 2007 17:09:32 -0000
Organization: http://groups.google.com
Lines: 79
Message-ID: <1181754572.366590.122800@o11g2000prd.googlegroups.com>
References: <1181605976.566716.57440@g4g2000hsf.googlegroups.com>
   <466E87DF.3000500@earthlink.net>
   <466EC053.23788.1092561@Jenda.Krynicky.cz>
   <1181666033.860047.209590@g37g2000prf.googlegroups.com>
   <58ce48dc0706121634p4ada2d51i676dd5aa29b412e6@mail.gmail.com>
NNTP-Posting-Host: 207.109.1.73
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
X-Trace: posting.google.com 1181754573 31733 127.0.0.1 (13 Jun 2007 17:09:33 GMT)
X-Complaints-To: groups-abuse@google.com
NNTP-Posting-Date: Wed, 13 Jun 2007 17:09:33 +0000 (UTC)
In-Reply-To: <58ce48dc0706121634p4ada2d51i676dd5aa29b412e6@mail.gmail.com>
User-Agent: G2/1.0
X-HTTP-UserAgent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727),gzip(gfe),gzip(gfe)
Complaints-To: groups-abuse@google.com
Injection-Info: o11g2000prd.googlegroups.com; posting-host=207.109.1.73;
   posting-account=sNFuog0AAAB-uOxC49iR-T4MUn-Sq9e0
X-Posted-By: 63.251.223.186
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-1.9 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL

On Jun 12, 6:34 pm, chas.ow...@gmail.com (Chas Owens) wrote:
> On 6/12/07, Northstardomus <northstardo...@gmail.com> wrote:
> snip>         $dbh->prepare('INSERT INTO area_status (areaID, survey_date,
> > update_time, status ) VALUES (?,?,?,?)');
> >         $dbh->execute('$values[0]', '$values[1]', '$values[2]',
> > '$values[3]');
>
> snip
>
> You are getting an error because $dbh->prepare returns a statement
> handle that can be executed.  The code should be written like this:
>
> my $sth = $dbh->prepare('
>     INSERT INTO area_status (areaID, survey_date, update_time, status )
>         VALUES (?,?,?,?)
> ');
> $sth->execute(@values[0 .. 3]);
>
> Also, connecting to the database every time you want to do something
> is expensive.  You should connect once near the beginning of the
> script and use that connection for the rest of the script.  The
> statement handle may also be reused, so you might want to name it with
> a better name than $sth* like this:
>
> my $dbh = DBI->connect(...);
>
> my $insert_area_status_sth = $dbh->prepare(...);
>
> while (<DATA>) {
>     my @rec = split /,/;
>     $insert_area_status_sth->execute(@rec) if $rec[0] eq 'Y';
>
> }
>
> * for handles that have a limited scope $sth is perfectly fine

Chas, thank you, I don't think I would have found that error any time
soon.  I really appreciate it.  Also, thanks for the advice on how I'm
using the database, I think it is spot on and I am going to impliment
your suggestions.

For reference here is what I ended up with, I had to do the
placeholders in the select statement as well.

Replaced the comment code with the uncommented code:
    #$sql = "SELECT * FROM area_status WHERE areaID='$values[0]' AND
survey_date='$values[1]' AND status='$values[3]'";
    #$sth = $dbh->prepare($sql);
    $sql = "SELECT * FROM area_status WHERE areaID=? AND survey_date=?
AND status=?";
    $sth = $dbh->prepare($sql);
    $sth->execute($values[0], $values[1], $values[3]) or die $dbh-
>errstr;;

and

#    if ($OK2INSERT) {
#        $dbh = DBI->connect("DBI:SQLite:dbname=C:/Lanosrep/beW/Perl/
HelpPage/area.db", "", "", {'RaiseError' => 1});
#        print "<br/>Inserting into Database , @values.";
#        $dbh->do("INSERT INTO area_status (areaID, survey_date,
update_time, status ) VALUES ('$values[0]', '$values[1]',
'$values[2]', '$values[3]')");
#        $dbh->disconnect();
#    }
    if ($OK2INSERT) {
        #$dbh = DBI->connect("DBI:SQLite:dbname=C:/Lanosrep/beW/Perl/
HelpPage/area.db", "", "", {'RaiseError' => 1});
        print "<br/>Inserting into Database , @values.";
        my $sth = $dbh->prepare('INSERT INTO area_status (areaID,
survey_date, update_time, status ) VALUES (?,?,?,?)');
        $sth->execute($values[0], $values[1], $values[2], $values[3])
or die $dbh->errstr;
        $sth->finish;
        $dbh->disconnect();
    }

NSD


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


         

A$gouMin
M>