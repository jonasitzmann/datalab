From beginners-return-92338-ktwarwic=speedy.uwaterloo.ca@perl.org  Tue Jun 12 22:27:21 2007
Return-Path: <beginners-return-92338-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5D2RJL9002150
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 12 Jun 2007 22:27:20 -0400
Received: (qmail 5923 invoked by uid 514); 13 Jun 2007 02:27:14 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 5914 invoked from network); 13 Jun 2007 02:27:14 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 13 Jun 2007 02:27:14 -0000
Received: (qmail 13428 invoked by uid 225); 13 Jun 2007 02:27:13 -0000
Delivered-To: beginners@perl.org
Received: (qmail 13415 invoked by alias); 13 Jun 2007 02:27:13 -0000
X-Spam-Status: No, hits=-0.1 required=8.0
	tests=BAYES_20,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from ms-smtp-07.ohiordc.rr.com (HELO ms-smtp-07.ohiordc.rr.com) (65.24.5.141)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Tue, 12 Jun 2007 19:27:03 -0700
Received: from janus.tacocat.net (cpe-65-29-101-30.twmi.res.rr.com [65.29.101.30])
	by ms-smtp-07.ohiordc.rr.com (8.13.6/8.13.6) with ESMTP id l5D2QuX7023936;
	Tue, 12 Jun 2007 22:26:57 -0400 (EDT)
Received: from [192.168.1.247] (ws247.tacocat.net [192.168.1.247])
	by janus.tacocat.net (Postfix) with ESMTP id 9CEFC4C068;
	Tue, 12 Jun 2007 22:26:56 -0400 (EDT)
In-Reply-To: <1181669531.071570.64410@i38g2000prf.googlegroups.com>
References: <1181605976.566716.57440@g4g2000hsf.googlegroups.com>   <9F96B5DB-DAB6-44B4-95DA-21453804B8BA@tacocat.net> <1181669531.071570.64410@i38g2000prf.googlegroups.com>
Mime-Version: 1.0 (Apple Message framework v752.3)
Content-Type: text/plain; charset=US-ASCII; delsp=yes; format=flowed
Message-Id: <97C1932B-194E-4079-A5DF-0759854AD210@tacocat.net>
Cc: beginners@perl.org
Content-Transfer-Encoding: 7bit
From: Tom Allison <tom@tacocat.net>
Subject: Re: Database insertion, escape issue
Date: Tue, 12 Jun 2007 22:26:54 -0400
To: Northstardomus <northstardomus@gmail.com>
X-Mailer: Apple Mail (2.752.3)
X-Virus-Scanned: Symantec AntiVirus Scan Engine

$sth->execute()
and read up on DBI a little more.
the first page of the perldoc shows a synapsis of all the commands.

I frequently have to re-visit these pages to recall what the  
different functions are.

On Jun 12, 2007, at 1:32 PM, Northstardomus wrote:

>
> On Jun 12, 4:59 am, t...@tacocat.net (Tom Allison) wrote:
>> On Jun 11, 2007, at 7:52 PM, Northstardomus wrote:
>>
>>
>>
>>
>>
>>
>>
>>> I have a Perl script where I try to strip some data from a web page
>>> and insert it
>>
>>> into a database.  I'm having a problem where, it seems like the  
>>> method
>>> of quoting
>>
>>> the data for insertion don't seem to be working (as far as escaping
>>> the text) and
>>
>>> some of the text is ending up getting injected into the SQL command.
>>
>>> In this example, I am capturing the paragraphs of text and inserting
>>> each HTML
>>
>>> paragraph into a new record.  What seems to be hanging up the
>>> insertion is the "or
>>
>>> die" portion of the text.  It will also bomb if the text has a word
>>> like "don't".
>>
>>> I thought the insertion mechanism I'm using would properly escape
>>> these special
>>
>> There are two methods of doing a "safe" insertion that I'm familiar
>> with under the DBI module.
>> I've never had a problem with either of these.  But I've had many
>> problems when I don't use these.
>>
>> Option one:
>>
>> use the prepare statement
>>
>> my $sql = "insert into table(name, address, state) values (?,?,?)";
>> my $sth = $dbh->prepare($sql);
>>
>> ...
>>
>> $sth->execute($name,$address, $state);
>>
>> This will automatically do proper escaping of the strings you want to
>> insert.
>>
>> Option Two:
>>
>> If for some reason it's not practical or possible to use the prepare
>> statement then you can use the DBI quote().  However, this is
>> generally rare.
>>
>> my $sql = "insert into table(name) values (" . $dbh->quote 
>> ($name) . ")";
>> $dbh->do($sql);
>>
>> But option one is going to be your best bet.- Hide quoted text -
>>
>> - Show quoted text -
>
> Sorry if this is a repeat, I haven't seen my latest reply in a couple
> hours here:
>
> I replaced the commented code with the following:
>
> #    if ($OK2INSERT) {
> #        $dbh = DBI->connect("DBI:SQLite:dbname=C:/Lanosrep/beW/Perl/
> HelpPage/area.db", "", "", {'RaiseError' => 1});
> #        print "<br/>Inserting into Database , @values.";
> #        $dbh->do("INSERT INTO area_status (areaID, survey_date,
> update_time, status ) VALUES ('$values[0]', '$values[1]',
> '$values[2]', '$values[3]')");
> #        $dbh->disconnect();
> #    }
>     if ($OK2INSERT) {
>         $dbh = DBI->connect("DBI:SQLite:dbname=C:/Lanosrep/beW/Perl/
> HelpPage/area.db", "", "", {'RaiseError' => 1});
>         print "<br/>Inserting into Database , @values.";
>         $dbh->prepare('INSERT INTO area_status (areaID, survey_date,
> update_time, status ) VALUES (?,?,?,?)');
>         $dbh->execute('$values[0]', '$values[1]', '$values[2]',
> '$values[3]');
>         $dbh->disconnect();
>     }
>
> And I get this error:
>
> Can't locate object method "execute" via package "DBI::db" at
> test_script.pl
> 	line 182 (#1)
>     (F) You called a method correctly, and it correctly indicated a
> package
>     functioning as a class, but that package doesn't define that
> particular
>     method, nor does any of its base classes.  See perlobj.
>
> Uncaught exception from user code:
> 	Can't locate object method "execute" via package "DBI::db" at
> test_script.pl line 182.
>  at test_script.pl line 182
>
> I would think I would have this available just by using DBI???
>
>
> -- 
> To unsubscribe, e-mail: beginners-unsubscribe@perl.org
> For additional commands, e-mail: beginners-help@perl.org
> http://learn.perl.org/
>
>


-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


             


Xk
