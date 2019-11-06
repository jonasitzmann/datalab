From beginners-return-92969-ktwarwic=speedy.uwaterloo.ca@perl.org  Mon Jul  2 16:25:42 2007
Return-Path: <beginners-return-92969-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l62KPdL9018591
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 2 Jul 2007 16:25:39 -0400
Received: (qmail 16320 invoked by uid 514); 2 Jul 2007 20:25:29 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 16311 invoked from network); 2 Jul 2007 20:25:28 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 2 Jul 2007 20:25:28 -0000
Received: (qmail 1966 invoked by uid 225); 2 Jul 2007 20:25:28 -0000
Delivered-To: beginners@perl.org
Received: (qmail 1961 invoked by alias); 2 Jul 2007 20:25:27 -0000
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_SIGNED,DKIM_VERIFIED,DK_POLICY_TESTING,DK_SIGNED,DK_VERIFIED,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
Received: from smtp106.plus.mail.re1.yahoo.com (HELO smtp106.plus.mail.re1.yahoo.com) (69.147.102.69)
    by la.mx.develooper.com (qpsmtpd/0.28) with SMTP; Mon, 02 Jul 2007 13:25:23 -0700
Received: (qmail 18325 invoked from network); 2 Jul 2007 20:25:18 -0000
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws;
  s=s1024; d=yahoo.com;
  h=Received:X-YMail-OSG:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
  b=5jJ8jIYUsQB0uoZoDmmcRGSt7fxoBj2BXFxe9BFfNMRkrT6IluYt81W+XPmHaTz/X84840t9wmvn4x703sFC70WGsu0bVWkp7KHUXRX4YW+nehhf7K/zQOOZa9BIJBHDhmwPgpypPOGSLdIG+aIt4I0k4TniRYKballnPigPm7Q=  ;
Received: from unknown (HELO ?127.0.0.1?) (theillien@76.21.182.124 with plain)
  by smtp106.plus.mail.re1.yahoo.com with SMTP; 2 Jul 2007 20:25:18 -0000
X-YMail-OSG: gaKFFfIVM1kSxTfQB0H.v2xfcmR9Ho9mmdSLt2TBNB4GjXsjG6H04TKouCYD69w52P337T31E8v8gvH1jpVNTiofzOkyZH5XhbhZn6S6bGfAu_bEng--
Message-ID: <46895E6A.4030805@yahoo.com>
Date: Mon, 02 Jul 2007 16:22:02 -0400
From: Mathew <theillien@yahoo.com>
User-Agent: Thunderbird 2.0.0.4 (Windows/20070604)
MIME-Version: 1.0
To: Tom Phoenix <tom@stonehenge.com>
CC: Perl Beginners <beginners@perl.org>
Subject: Re: Problem with runaway format
References: <4687767F.9070206@yahoo.com>	 <31086b240707021010v47bd2f86k87b23476cbe7dfd7@mail.gmail.com>	 <46893D27.90002@yahoo.com> <31086b240707021141g19d758a5qa5e4e7339d552236@mail.gmail.com>
In-Reply-To: <31086b240707021141g19d758a5qa5e4e7339d552236@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Tom Phoenix wrote:
> On 7/2/07, Mathew <theillien@yahoo.com> wrote:
> 
>> foreach my $date (@searchDate) {
>>         while (my $ticket = $tix->Next) {
> 
> Seeing this worries me. I don't know enough about what's going on to
> tell whether it's wrong or not, but it looks wrong. When the outer
> loop goes on to the second iteration, what does $tix->Next yield? (You
> could use the debugger to find out.)
> 

Yeah, I don't use the most optimal method of iterating through all of
this.  $tix is a reference to a hash of ticket objects.  The ->Next
method simply places each successive object into $ticket for further
processing by other methods.

>> # Format the time spent on each ticket as hh:mm
>> foreach my $user (keys %tickets) {
>>         foreach my $env (keys %{ $tickets{$user} }) {
>>                 foreach my $tikID (keys %{ $tickets{$user}{$env} }) {
>>                         foreach my $subject (keys %{
>> $tickets{$user}{$env}{$tikID} }) {
> 
> You're doing the same dereferencing, just getting deeper each time.
> You'll save some time if you make some of those into temporary
> variables. That fourth nested loop could look more like this, but
> possibly with better variable names:
> 
>        my $subjects_hash = $envs_hash->{$env};
>        foreach my $subject (keys %$subjects_hash) {
> 

I'll see what I can do with this.  It looks simple enough and as I'm now
working my way through Intermediate Perl ( ;) ) I might actually be able
to grasp it :)

>>                                 my @endTime;
>> #                               my $temp          =
>> $tickets{$user}{$env}{$tikID};
>>                                 my $temp          =
>> $tickets{$user}{$env}{$tikID}{$subject};
>>                                 my $temp2         = $temp / 60;
>>                                 my @temp          = split /\./, $temp2;
>>                                 $endTime[0]       = $temp[0];
>>                                 $endTime[1]       = $temp % 60;
>> #                               $tickets{$user}{$env}{$tikID} =
>> sprintf '%d:%02d', @endTime[0,1];
>>                                
>> $tickets{$user}{$env}{$tikID}{$subject} = sprintf '%d:%02d',
>> @endTime[0,1];
> 
> That looks like a difficult way to do it. Maybe something like this?
> 
>          $subjects_hash->{$subject} =
> time_format($subjects_hash->{$subject});
> 
> sub time_format {
>    my $arg = shift;
>    return sprintf '%d:%02d', int($arg / 60), $arg % 60;
> }
> 
> That code assumes, as did the original, that the number to be
> formatted is a non-negative integer of seconds or minutes.
> 

Good assumption :)

> Good luck with it!
> 
> --Tom Phoenix
> Stonehenge Perl Training
> 

Thanks

Mathew
Keep up with my goings on at http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


               

eu	t7