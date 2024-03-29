From beginners-return-93036-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jul  4 10:48:34 2007
Return-Path: <beginners-return-93036-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l64EmVL9011804
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 4 Jul 2007 10:48:33 -0400
Received: (qmail 12837 invoked by uid 514); 4 Jul 2007 14:48:22 -0000
Mailing-List: contact beginners-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:beginners@perl.org>
List-Help: <mailto:beginners-help@perl.org>
List-Unsubscribe: <mailto:beginners-unsubscribe@perl.org>
List-Subscribe: <mailto:beginners-subscribe@perl.org>
List-Id: <beginners.perl.org>
Delivered-To: mailing list beginners@perl.org
Received: (qmail 12804 invoked from network); 4 Jul 2007 14:48:21 -0000
Received: from x1a.develooper.com (HELO x1.develooper.com) (216.52.237.111)
  by lists.develooper.com with SMTP; 4 Jul 2007 14:48:21 -0000
Received: (qmail 26321 invoked by uid 225); 4 Jul 2007 14:48:21 -0000
Delivered-To: beginners@perl.org
Received: (qmail 26299 invoked by alias); 4 Jul 2007 14:48:18 -0000
X-Spam-Status: No, hits=0.4 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,DK_POLICY_TESTING,FORGED_YAHOO_RCVD,SPF_NEUTRAL
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: neutral (x1.develooper.com: local policy)
Received: from mailx.servervault.com (HELO mailx.servervault.com) (216.12.128.138)
    by la.mx.develooper.com (qpsmtpd/0.28) with ESMTP; Wed, 04 Jul 2007 07:48:16 -0700
Received: from [192.168.4.118] ([192.168.4.118]) by mailx.servervault.com with Microsoft SMTPSVC(6.0.3790.1830);
	 Wed, 4 Jul 2007 10:48:10 -0400
Message-ID: <468BB32A.3080802@yahoo.com>
Date: Wed, 04 Jul 2007 10:48:10 -0400
From: Mathew Snyder <theillien@yahoo.com>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: Tom Phoenix <tom@stonehenge.com>
CC: Perl Beginners <beginners@perl.org>
Subject: Re: Problem with runaway format
References: <4687767F.9070206@yahoo.com>	 <31086b240707021010v47bd2f86k87b23476cbe7dfd7@mail.gmail.com>	 <46893D27.90002@yahoo.com> <31086b240707021141g19d758a5qa5e4e7339d552236@mail.gmail.com>
In-Reply-To: <31086b240707021141g19d758a5qa5e4e7339d552236@mail.gmail.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
X-OriginalArrivalTime: 04 Jul 2007 14:48:10.0694 (UTC) FILETIME=[576C9660:01C7BE4A]

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
> Good luck with it!
> 
> --Tom Phoenix
> Stonehenge Perl Training
> 

Tom,

Thanks.  Your suggestion to place the hashes in new references not only solved
the problem with the runaway format but also another problem that was causing
the subjects of the tickets to be printed only sporadically.

Mathew
-- 
Keep up with me and what I'm up to: http://theillien.blogspot.com

-- 
To unsubscribe, e-mail: beginners-unsubscribe@perl.org
For additional commands, e-mail: beginners-help@perl.org
http://learn.perl.org/


      

i�so.dcp1J ve e