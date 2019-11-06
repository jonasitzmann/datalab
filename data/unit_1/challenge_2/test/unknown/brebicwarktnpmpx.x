From r-help-bounces@stat.math.ethz.ch  Tue Jun 26 15:14:02 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5QJE0L9016570
	for <ktwarwic@flax9.uwaterloo.ca>; Tue, 26 Jun 2007 15:14:01 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QJCsUB027106;
	Tue, 26 Jun 2007 21:13:26 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=AWL, BAYES_50,
	DKIM_POLICY_SIGNSOME,
	SARE_SPEC_PROLEO_M2 autolearn=no version=3.2.0
Received: from vscane-b.ucl.ac.uk (vscane-b.ucl.ac.uk [144.82.108.141])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5QJ2NEe022515
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <r-help@stat.math.ethz.ch>; Tue, 26 Jun 2007 21:02:23 +0200
Received: from 85-210-155-179.dsl.pipex.com ([85.210.155.179]
	helo=dhcppc2.my.nat.localnet)
	by vscane-b.ucl.ac.uk with esmtpsa (TLSv1:RC4-MD5:128) (Exim 4.60)
	(envelope-from <gavin.simpson@ucl.ac.uk>)
	id 1I3GIv-0004Cy-1i; Tue, 26 Jun 2007 20:02:21 +0100
From: Gavin Simpson <gavin.simpson@ucl.ac.uk>
To: antonio rodriguez <antonio.raju@gmail.com>
In-Reply-To: <46815687.2050603@gmail.com>
References: <46815687.2050603@gmail.com>
Organization: ECRC, UCL Geography
Date: Tue, 26 Jun 2007 20:02:20 +0100
Message-Id: <1182884540.3047.10.camel@dhcppc2.my.nat.localnet>
Mime-Version: 1.0
X-Mailer: Evolution 2.2.3 (2.2.3-4.fc4) 
X-UCL-MailScanner-Information: Please contact the UCL Helpdesk,
	helpdesk@ucl.ac.uk for more information
X-UCL-MailScanner: Found to be clean
X-UCL-MailScanner-From: gavin.simpson@ucl.ac.uk
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
Cc: R-Help <r-help@stat.math.ethz.ch>
Subject: Re: [R] aggregating daily values
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

On Tue, 2007-06-26 at 20:10 +0200, antonio rodriguez wrote:
> Hi,
> 
> I swear I have read almost all the posted messages about this issue, but 
> it's evident I couldn't find an answer (surely esay) to my problem. What 
> I want is the following:
> 
> Make  8 days aggregates from a daily series like this (dput output):

Is this what you want:

## nb: dat is your object
## this is the number of 8-day chunks we need to create
n.8day.chunks <- ceiling(nrow(dat)/8)
## this is a factor indicating which days need to aggregated
day8 <- as.factor(rep(1:n.8day.chunks, each = 8, length.out =
nrow(dat)))
## the mean of consecutive 8-day chunks of your data
aggregate(dat, day8, mean)

G

> 
> structure(c(6.91777181625366, 0.79051125049591, 9.00625133514404,
> 9.86966037750244, 14.4326181411743, 3.70155477523804, 9.67768573760986,
> 2.73402595520020, 2.43723011016846, 7.56268262863159, 6.3102331161499,
> 3.32162165641785, 9.16097259521484, 11.8666706085205, 12.2684621810913,
> 1.22998368740082, 13.7295694351196, 4.0566086769104, 8.93555355072021,
> 9.23514747619629, 14.38671875, 5.57814884185791, 5.67644691467285,
> 6.57168674468994, 3.1399450302124, 5.92884302139282, 2.9151554107666,
> 4.03280115127563, 6.27835083007812, 7.44268560409546, 5.48082637786865,
> 4.53351545333862, 1.73732578754425, 7.26089143753052, 10.5942621231079,
> 5.05707550048828, 5.22532558441162, 11.5783672332764, 11.3684358596802,
> 13.6496038436890, 9.5115213394165, 10.9072093963623, 7.86801719665527,
> 3.94157719612122, 7.77205228805542, 6.6718077659607, 6.39164304733276,
> 10.4837465286255, 2.79525756835938, 1.37960362434387, 6.3647027015686,
> 5.929940700531, 6.9293303489685, 6.74053525924683, 1.43103110790253,
> 2.05663347244263, 4.89251279830933, 3.92522406578064, 3.35525012016296,
> 9.12392044067383, 6.75488662719727, 6.25883436203003, 9.25640106201172,
> 8.42288589477539, 6.56508350372314, 8.37779998779297, 7.43927431106567,
> 10.185378074646, 9.71145248413086, 11.2066516876221, 8.71727466583252,
> 10.9019384384155, 13.1304092407227, 7.75358772277832, 8.39074516296387,
> 8.14743328094482, 7.23138332366943, 6.52082204818726, 6.90353965759277,
> 7.9786148071289, 2.74402141571045, 4.47335290908813, 2.75821256637573,
> 3.28433847427368, 1.42357420921326, 2.82095956802368, 8.0270709991455,
> 7.674973487854, 1.69974088668823, 3.49610543251038, 3.31802821159363,
> 3.33476138114929, 2.11547899246216, 8.19122409820557, 7.00930881500244,
> 6.9021201133728, 6.11513996124268, 9.37069034576416, 6.9347562789917,
> 8.47163581848145, 4.94003391265869, 0.301414221525192, 6.72133445739746,
> 8.76676940917969, 10.1682291030884, 3.84668922424316, 7.34706497192383,
> 4.56853246688843, 5.16461706161499, 6.48476696014404, 6.15084409713745,
> 1.76933193206787, 0.528673768043518, 8.61115646362305, 8.5723466873169,
> 5.61508989334106, 11.1853742599487, 5.04610252380371, 8.89399719238281,
> 10.4688892364502, 10.7483530044556, 5.63076829910278, 9.50668048858643,
> 5.47441911697388, 7.957528591156, 5.91077470779419, 2.91312527656555,
> 2.01168727874756, 2.74394679069519, 4.75178813934326, 4.93987512588501,
> 4.72155714035034, 3.37835741043091, 5.13053703308105, 9.08048439025879,
> 6.29858446121216, 5.58306503295898, 10.1094760894775, 12.978609085083,
> 12.8985652923584, 7.7596869468689, 12.7903356552124, 9.8348035812378,
> 5.68637895584106, 9.27114486694336, 8.27180290222168, 5.16222524642944,
> 6.46222257614136, 2.07000184059143, 3.08321070671082, 9.0461711883545,
> 6.15753412246704, 6.63184833526611, 8.59984111785889, 7.33605718612671,
> 3.02012157440186, 6.448965549469, 6.02573490142822, 7.87792730331421,
> 7.04826784133911, 1.02431178092957, 5.20297384262085, 6.64636945724487,
> 5.81104230880737, 4.90106821060181, 5.69662380218506, 7.51573324203491,
> 8.18294525146484, 6.11269092559814, 6.69754600524902, 5.6054277420044,
> 7.9188904762268, 5.51347351074219, 7.38122415542603, 6.92169857025146,
> 8.63118839263916, 6.9159483909607, 10.3055601119995, 6.9257755279541,
> 9.1276683807373, 5.51169300079346, 3.67073273658752, 2.84354925155640,
> 3.44134783744812, 2.87936210632324, 2.50833535194397, 6.63961029052734,
> 7.31760835647583, 5.54377555847168, 5.46550559997559, 3.04732036590576,
> 5.53518009185791, 4.90971279144287, 10.0030765533447, 10.7470664978027,
> 8.122633934021, 9.30413436889648, 11.5687465667725, 7.63134002685547,
> 7.48177337646484), .Dim = as.integer(c(100, 2)), index = structure(c(5480,
> 5481, 5482, 5483, 5484, 5485, 5486, 5487, 5488, 5489, 5490, 5491,
> 5492, 5493, 5494, 5495, 5496, 5497, 5498, 5499, 5500, 5501, 5502,
> 5503, 5504, 5505, 5506, 5507, 5508, 5509, 5510, 5511, 5512, 5513,
> 5514, 5515, 5516, 5517, 5518, 5519, 5520, 5521, 5522, 5523, 5524,
> 5525, 5526, 5527, 5528, 5529, 5530, 5531, 5532, 5533, 5534, 5535,
> 5536, 5537, 5538, 5539, 5540, 5541, 5542, 5543, 5544, 5545, 5546,
> 5547, 5548, 5549, 5550, 5551, 5552, 5553, 5554, 5555, 5556, 5557,
> 5558, 5559, 5560, 5561, 5562, 5563, 5564, 5565, 5566, 5567, 5568,
> 5569, 5570, 5571, 5572, 5573, 5574, 5575, 5576, 5577, 5578, 5579
> ), class = "Date"), class = "zoo")
> 
> TIA
> 
> Antonio
> 
> 
-- 
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%
Gavin Simpson                     [t] +44 (0)20 7679 0522
ECRC                              [f] +44 (0)20 7679 0565
UCL Department of Geography
Pearson Building                  [e] gavin.simpsonATNOSPAMucl.ac.uk
Gower Street
London, UK                        [w] http://www.ucl.ac.uk/~ucfagls/
WC1E 6BT                          [w] http://www.freshwaters.org.uk/
%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

     


htqD
0  