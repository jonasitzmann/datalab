From r-help-bounces@stat.math.ethz.ch  Tue Jun 19 08:23:30 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5JCNSL9029281
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 19 Jun 2007 08:23:29 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCMdjv026053;
	Tue, 19 Jun 2007 14:23:01 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from vscani-e.ucl.ac.uk (vscani-e.ucl.ac.uk [144.82.108.33])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5JCMIwd025935
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 19 Jun 2007 14:22:29 +0200
Received: from gsimpson.geog.ucl.ac.uk ([128.40.33.76])
	by vscani-e.ucl.ac.uk with esmtp (Exim 4.60)
	(envelope-from <gavin.simpson@ucl.ac.uk>)
	id 1I0cir-0002U6-Tb; Tue, 19 Jun 2007 13:22:14 +0100
From: Gavin Simpson <gavin.simpson@ucl.ac.uk>
To: spime <sabya23@gmail.com>
In-Reply-To: <11193273.post@talk.nabble.com>
References: <11193273.post@talk.nabble.com>
Organization: Environmental Change Research Centre, UCL
Date: Tue, 19 Jun 2007 13:22:13 +0100
Message-Id: <1182255733.7247.26.camel@gsimpson.geog.ucl.ac.uk>
Mime-Version: 1.0
X-Mailer: Evolution 2.6.3 (2.6.3-2.fc5) 
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: gavin.simpson@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: r-help@stat.math.ethz.ch
Subject: Re: [R] BIC and Hosmer-Lemeshow statistic for logistic regression
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
Reply-To: gavin.simpson@ucl.ac.uk
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch

On Tue, 2007-06-19 at 04:59 -0700, spime wrote:
> 
> I haven't find any helpful thread. How can i calculate BIC and
> Hosmer-Lemeshow statistic for a logistic regression model. I have used glm
> for logistic fit.

Not sure about the Hosmer-Lemeshow, but AIC() with argument k = log(n),
where n is number of observations,  will get BIC. See ?AIC.

HTH

G
-- 
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
 Gavin Simpson                 [t] +44 (0)20 7679 0522
 ECRC, UCL Geography,          [f] +44 (0)20 7679 0565
 Pearson Building,             [e] gavin.simpsonATNOSPAMucl.ac.uk
 Gower Street, London          [w] http://www.ucl.ac.uk/~ucfagls/
 UK. WC1E 6BT.                 [w] http://www.freshwaters.org.uk
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

          

eOo pes'