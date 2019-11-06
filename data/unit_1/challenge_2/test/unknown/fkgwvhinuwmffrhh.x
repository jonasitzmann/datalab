From perl6-all-return-82133-ktwarwic=speedy.uwaterloo.ca@perl.org  Wed Jun 20 08:06:25 2007
Return-Path: <perl6-all-return-82133-ktwarwic=speedy.uwaterloo.ca@perl.org>
Received: from lists.develooper.com (x6.develooper.com [63.251.223.186])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with SMTP id l5KC6NL9009615
	for <ktwarwic@flax9.uwaterloo.ca>; Wed, 20 Jun 2007 08:06:24 -0400
Received: (qmail 11398 invoked by uid 514); 20 Jun 2007 12:06:20 -0000
Mailing-List: contact perl6-all-help@perl.org; run by ezmlm
Precedence: bulk
List-Post: <mailto:perl6-all@perl.org>
List-Help: <mailto:perl6-all-help@perl.org>
List-Unsubscribe: <mailto:perl6-all-unsubscribe@perl.org>
List-Subscribe: <mailto:perl6-all-subscribe@perl.org>
List-Id: <perl6-all.perl.org>
Delivered-To: mailing list perl6-all@perl.org
Received: (qmail 11382 invoked from network); 20 Jun 2007 12:06:20 -0000
Delivered-To: perl6-all-poster@perl.org
X-Spam-Status: No, hits=-2.6 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,SPF_PASS
X-Spam-Check-By: la.mx.develooper.com
Received-SPF: pass (x1.develooper.com: local policy)
X-Mailing-List: contact perl6-language-help@perl.org; run by ezmlm
X-Mailing-List-Name: perl6-language
List-Id: <perl6-language.perl.org>
Delivered-To: mailing list perl6-language@perl.org
Delivered-To: perl6-language@perl.org
Received-SPF: pass (x1.develooper.com: local policy)
Message-ID: <46791805.9080400@comquest.co.jp>
Date: Wed, 20 Jun 2007 21:05:25 +0900
From: cdumont <cdumont@comquest.co.jp>
Reply-To: cdumont@comquest.co.jp
User-Agent: Mozilla Thunderbird 1.0.7 (Macintosh/20050923)
X-Accept-Language: ja, en-us, en
MIME-Version: 1.0
To: perl6-language@perl.org
Subject: Re: Perl6 new features
References: <4676D013.6020708@perl.org> <46771F91.6060303@casella.verplant.org> <7C4DDCB0-71CC-4700-96C4-35384AE25AA6@fsck.com> <4678B29B.20201@comquest.co.jp> <4678FDED.6090200@casella.verplant.org>
In-Reply-To: <4678FDED.6090200@casella.verplant.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Old-Spam-Check-By: la.mx.develooper.com
X-Old-Spam-Status: No, hits=-2.5 required=8.0
	tests=BAYES_00,DKIM_POLICY_SIGNSOME,DK_POLICY_SIGNSOME,RDNS_NONE,SPF_PASS

Thank you for your kind reply !

Perl 6 is not yet finished, so the the list of core modules is not yet
specified.


I know that it is somehow not the subject,
but I think the actual 5.8 doc should be changed to some extents.
It could be nice if we could browse each core functions,
having the function parameters, flags (not that much used right?), and
the return value of the function, followed by exampleS
AND so that it could be a lot richer, allow people to "comment"...
I know this is not the point but it could be nice to do so for perl6 !
(I was thinking to create a kind of site like that for the actual perl,
but my programming competences are,well... )

Perl 6 does. See for example ext/Set/ in the pugs repository.


Glad to hear that !


You could help by contributing some suggestions to what the new "Web"
module should be able to do, and how so. Web is hopefully "CGI done
right", and still in its early planning stage.


Web module is a good name.

Is there a place where we can add suggestions ? apart from the first one in...
2003 ? 4 years ago ?


Moritz Lenz wrote:

>cdumont wrote:
>  
>
>>I know that perl doesn't only focus on web apps and my question might 
>>seem irrelevant
>>but I've been searching the web in order to find the new features of 
>>perl6 regarding
>>new functions, core module lists (not perl grammar itself) but couldn't 
>>find any thing...
>>    
>>
>
>Perl 6 is not yet finished, so the the list of core modules is not yet
>specified.
>
>  
>
>>I would like to develop web apps with perl too but having to download 
>>modules from CPAN
>>every time makes me feel these apps will never be able to evoluate in 
>>different environments.
>>(environments you don't have control of)
>>    
>>
>
>That's a general problem with libraries, not only Perl ones. And you
>can't solve this by putting everything into core - it just blows up the
>distribution.
>
>  
>
>>I am a bit amazing to see that perl doesn't include a bunch a set theory 
>>functions too.
>>    
>>
>
>Perl 6 does. See for example ext/Set/ in the pugs repository.
>And so does Perl 5:
>http://search.cpan.org/~samv/Set-Object-1.21/lib/Set/Object.pm
>
>
>  
>
>>I am not blaming perl but only hopes that perl6 will allow to make 
>>things easy for the programmer.
>>    
>>
>
>That's one of the most important design goals ;-)
>
>  
>
>>as for the web, maintaining state thru server side cookies and DBI are 
>>the very minimum I would recommend.
>>more hash and array functions a minimum too.
>>if there are such things in perl6, I'll be very happy to work with this 
>>language !
>>    
>>
>
>You could help by contributing some suggestions to what the new "Web"
>module should be able to do, and how so. Web is hopefully "CGI done
>right", and still in its early planning stage.
>
>Cheers,
>Moritz
>
>  
>


-- 
シリル・デュモン（Cyrille Dumont）
cdumont@comquest.co.jp
our work is the portrait of ourselves
tel: 03-5690-0230 fax: 03-5690-7366
http://www.comquest.co.j


   

Kt2s9Pn8;e