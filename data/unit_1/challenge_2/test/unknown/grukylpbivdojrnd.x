From r-help-bounces@stat.math.ethz.ch  Thu Jun 28 09:05:25 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l5SD5NL9010903
	for <ktwarwic@flax9.uwaterloo.ca>; Thu, 28 Jun 2007 09:05:24 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SD4Vfc017946;
	Thu, 28 Jun 2007 15:04:43 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=AWL, BAYES_50, DCC_CHECK,
	DKIM_POLICY_SIGNSOME autolearn=no version=3.2.0
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SC94Ym030212;
	Thu, 28 Jun 2007 14:16:00 +0200
Received: from slim.kubism.ku.dk (slim.kubism.ku.dk [192.38.18.21])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l5SBhvnq019554
	for <r-announce@lists.r-project.org>; Thu, 28 Jun 2007 13:43:57 +0200
Received: from [192.38.18.17] (viggo.kubism.ku.dk [192.38.18.17])
	by slim.kubism.ku.dk (Postfix) with ESMTP id A4F4B48B1F
	for <r-announce@lists.r-project.org>;
	Thu, 28 Jun 2007 13:43:56 +0200 (CEST)
Message-ID: <46839EFC.8070806@biostat.ku.dk>
Date: Thu, 28 Jun 2007 13:43:56 +0200
From: Peter Dalgaard <P.Dalgaard@biostat.ku.dk>
User-Agent: Thunderbird 1.5.0.12 (X11/20060911)
MIME-Version: 1.0
To: r-announce@stat.math.ethz.ch
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l5SBhvnq019554
X-BeenThere: r-announce@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
X-MIME-Autoconverted: from base64 to 8bit by hypatia.math.ethz.ch id
	l5SC94Ym030212
Subject: [R] R 2.5.1 is released
X-BeenThere: r-help@stat.math.ethz.ch
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from base64 to 8bit by flax9.uwaterloo.ca id l5SD5NL9010903

I've rolled up R-2.5.1.tar.gz a short while ago. This is a maintenancerelease and fixes a number of mostly minor bugs and platform issues. See the full list of changes below.
You can get it (in a short while) from
http://cran.r-project.org/src/base/R-2/R-2.5.1.tar.gz
or wait for it to be mirrored at a CRAN site nearer to you. Binariesfor various platforms will appear in due course.         For the R Core Team
        Peter Dalgaard
These are the md5sums for the freshly created files, in case you wishto check that they are uncorrupted:
a8efde35b940278de19730d326f58449  AUTHORSeb723b61539feef013de476e68b5c50a  COPYINGa6f89e2100d9b6cdffcea4f398e37343  COPYING.LIB24ad9647e525609bce11f6f6ff9eac2d  FAQ70447ae7f2c35233d3065b004aa4f331  INSTALLf04bdfaf8b021d046b8040c8d21dad41  NEWS88bbd6781faedc788a1cbd434194480c  ONEWS4f004de59e24a52d0f500063b4603bcb  OONEWS162f6d5a1bd7c60fd652145e050f3f3c  R-2.5.1.tar.gz162f6d5a1bd7c60fd652145e050f3f3c  R-latest.tar.gz433182754c05c2cf7a04ad0da474a1d0  README020479f381d5f9038dcb18708997f5da  RESOURCES4eaf8a3e428694523edc16feb0140206  THANKS

Here is the relevant bit of the NEWS file:
                CHANGES IN R VERSION 2.5.1
NEW FEATURES
    o   density(1:20, bw = "SJ") now works as bw.SJ() now tries a larger        search interval than the default (lower, upper) if it does not        find a solution within the latter.
    o   The output of library() (no arguments) is now sorted by library        trees in the order of .libPaths() and not alphabetically.
    o   R_LIBS_USER and R_LIBS_SITE feature possible expansion of        specifiers for R version specific information as part of the        startup process.
    o   C-level warning calls now print a more informative context,        as C-level errors have for a while.
    o   There is a new option "rl_word_breaks" to control the way the        input line is tokenized in the readline-based terminal        interface for object- and file-name completion.        This allows it to be tuned for people who use their space bar        vs those who do not.  The default now allows filename-completion        with +-* in the filenames.
    o   If the srcfile argument to parse() is not NULL, it will be added        to the result as a "srcfile" attribute.
    o   It is no longer possible to interrupt lazy-loading (which was        only at all likely when lazy-loading environments), which        would leave the object being loaded in an unusable state.        This is a temporary measure: error-recovery when evaluating        promises will be tackled more comprehensively in 2.6.0.
INSTALLATION
    o   'make check' will work with --without-iconv, to accommodate        building on AIX where the system iconv conflicts with        libiconv and is not compatible with R's requirements.
    o   There is support for 'DESTDIR': see the R-admin manual.
    o   The texinfo manuals are now converted to HTML with a style        sheet: in recent versions of makeinfo the markup such as @file        was being lost in the HTML rendering.
    o   The use of inlining has been tweaked to avoid warnings from        gcc >= 4.2.0 when compiling in C99 mode (which is the default        from configure).
BUG FIXES
    o   as.dendrogram() failed on objects of class "dendrogram".
    o   plot(type ="s") (or "S") with many (hundreds of thousands)        of points could overflow the stack.  (PR#9629)
    o   Coercing an S4 classed object to "matrix" (or other basic class)        failed to unset the S4 bit.
    o   The 'useS4' argument of print.default() had been broken by an        unrelated change prior to 2.4.1.  This allowed print() and        show() to bounce badly constructed S4 objects between        themselves indefinitely.
    o   Prediction of the seasonal component in HoltWinters() was one        step out at one point in the calculations.
        decompose() incorrectly computed the 'random' component for a        multiplicative fit.
    o   Wildcards work again in unlink() on Unix-alikes (they did not        in 2.5.0).
    o   When qr() used pivoting, the coefficient names in qr.coef() were        not pivoted to match.  (PR#9623)
    o   UseMethod() could crash R if the first argument was not a        character string.
    o   R and Rscript on Unix-alikes were not accepting spaces in -e        arguments (even if quoted).
    o   Hexadecimal integer constants (e.g. 0x10L) were not being parsed        correctly on platforms where the C function atof did not        accept hexadecimal prefixes (as required by C99, but not        implemented in MinGW as used by R on Windows).  (PR#9648)
    o   libRlapack.dylib on Mac OS X had no version information and        sometimes an invalid identification name.
    o   Rd conversion of \usage treated '\\' as a single backslash in        all but latex: it now acts consistently with the other        verbatim-like environments (it was never 'verbatim' despite        the documentation).
        \code{\.} is now rendered as '\.' in all formats, as        documented (it was not the case for latex conversion).
        codoc() (and checkDocStyle() and checkDocUsage()) now apply        the same transformations to \usage as Rd conversion does,        so {, % and \\ in strings in usages will now be related        correctly to the help files.
    o   rbind() failed if the only data frame had 0 rows. (PR#9657)
    o   <a data.frame>[i, j] could sometimes select the wrong column        when j is numeric if there are duplicate column names.
    o   sample(x, size, replace=TRUE, prob) had a memory leak if        10000 < size <= 100000.
    o   x <- cbind(1:2); rownames(x) <- factor(c("A",NA))  now longer        segfaults.
    o   R CMD BATCH no longer assumes Sys.unsetenv() is supported (it        is not on older Solaris systems).
    o   median() returned a logical result when it was 'NA': it now        returns an NA of appropriate type (e.g. integer or double).
    o   grep(fixed = TRUE, perl = TRUE) ignored 'fixed', although it        was documented to ignore 'perl'        Same for [g]regexpr and [g]sub.
    o   getNamespaceExports("base") works again.
    o   runmed(c(), 1) no longer segfaults.
    o   qr.coef(QR, b) failed for an LAPACK-produced QR if b was        integer or for an over-determined system.
        qr.solve() for an under-determined system produces a        solution with 0 and not NA for columns which are unused.
    o   segments() was not handling full transparency correctly in PDF.        (PR#9694)
        Nor was arrows().
    o   callGeneric() inside a method with extra arguments {and hence        currently defined via .local()} now works.
    o   [g]sub(fixed=TRUE, useBytes=FALSE) could substitute in the        wrong place in an MBCS locale.
        gregexpr() could give incorrect answers in MBCS locales for        perl = TRUE or fixed = TRUE (unless useBytes = TRUE).
    o   The legacy quartz() device no longer crashes in locator()        if the user attempts to close the window.
    o   "CGGStackRestore: gstack underflow" warning is no longer shown        in legacy quartz() device.
    o   formatC() now limits 'digits' to 50 to avoid problems in        C-level sprintf in some OSes.
    o   seq.int(x, y, by=z) gave 'x' (and not an error) if        0 > (y-x)/z > -1.
    o   promptClass() now lists methods, including those for generics in        other attached packages.
    o   Connection-related functions such as readBin() no longer crash        when supplied with a non-connection object.
    o   as.character.srcref() didn't handle bad srcref objects cleanly.
    o   predict.nls() no longer requires 'newdata' to contain exactly        the variable names needed to fit the model: variables used on        the LHS only are no longer required and further variables are        allowed.
    o   plot.hclust() had a 'out by one' error, and ignored the last        object when computing the window region (and could overrun        arrays).
    o   deriv() was creating results with double (and not integer) dims.
    o   The unserialize code (e.g. as called by load()) looked for a        function findPackageEnv() to set a saved package environment.        This was missing, but is now supplied.
    o   [cr]bind could segfault when creating a list matrix result.        (Reported by Martin Morgan.)
    o   besselI(x, nu, exp=TRUE) and besselY(x, nu) could give wrong        answers for nu < 0. (Reported by Hiroyuki Kawakatsu.)
    o   [g]sub could confuse a trailing byte '\' for a backreference        in MBCSs where '\' can occur as a trailing byte (not UTF-8 nor        EUC-JP, but SJIS and the CJK character sets used on Windows).        (PR#9751)


--    O__  ---- Peter Dalgaard             Øster Farimagsgade 5, Entr.B  c/ /'_ --- Dept. of Biostatistics     PO Box 2099, 1014 Cph. K (*) \(*) -- University of Copenhagen   Denmark          Ph:  (+45) 35327918~~~~~~~~~~ - (p.dalgaard@biostat.ku.dk)                  FAX: (+45) 35327907
_______________________________________________R-announce@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-announce
______________________________________________R-help@stat.math.ethz.ch mailing listhttps://stat.ethz.ch/mailman/listinfo/r-helpPLEASE do read the posting guide http://www.R-project.org/posting-guide.htmland provide commented, minimal, self-contained, reproducible code.

     

Qs5htiifQLNx