<HTML>
<HEAD>
<title>RFM Bugs</title>
<LINK TYPE="text/css" REL="stylesheet" HREF="./sum/rfm.css">
</HEAD>
<BODY>
<h1 class=bar>RFM v4 Bugs</h1>
Report any bugs to <a
href=mailto:dudhia@atm.ox.ac.uk>dudhia@atm.ox.ac.uk</a>
<p>
Bug-Finder Hall of Fame
(excluding myself since I have an unfair advantage)
<ol>
<li> Victoria Jay (8)
<li> Alison Waterfall (3) 
<LI> Alastair Burgess (3)
<li> Jolyon Reburn (3)
<LI> Chiara Piccolo (2)
<LI> Vivienne Payne (2)
<li> Igor Ptashnik (2)
<li> Richard Siddans (2)
<li> Steve Bass (2) 
<LI> Niels Bormann (2)
<LI> Luis Millan-Valle (1)
<LI> Owen Embury (1)
<LI> Damien Weidmann (1)
<LI> Aleks Milyakov (1)
<LI> Randall Skelton (1)
<LI> Tim Nightingale (1)
<li> Clive Rodgers (1)
<li> James Watts (1) 
<li> Joanna Haigh (1)
<li> Bob Wells (1)
</ol>
<hr>
<dl>

<P>
<a name=bug62>
<dt><b>Bug#62</b>
<dd><b>Reported</b>: 28-MAR-07  (Luis Millan-Valle)
<dd><b>Affects</b>: All versions up to and including v4.27
<dd><b>Symptom</b>: Fails to skip empty record in *JAC section of
driver table (and probably other sections as well) - resulting in a fatal
error message
<dd><b>Reason</b>: Under Linux, subroutine <b>nxtrec.for</b>, 
which should skip blank
records, interprets &lt;CR&gt; as a non-blank character, hence
assumes that there is something readable in the record
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v428>v4.28</a>

<P>
<a name=bug61>
<dt><b>Bug#61</b>
<dd><b>Reported</b>: 03-APR-06  (Owen Embury, Edinburgh)
<dd><b>Affects</b>: Versions v4.25 & v4.26
<dd><b>Symptom</b>: Unpredictable results when using
<a href=./sum/levflg.html>LEV</A> flag with F77 compilations which do not
automatically save variables inside subroutines.
<dd><b>Reason</b>: Variables <TT>IJAC1, IJAC2</TT> in subroutine
<b>levupd.for</b> sometimes assume previous values are saved.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v427>v4.27</a>

<P>
<a name=bug60>
<dt><b>Bug#60</b>
<dd><b>Reported</b>: 12-OCT-05  (Damien Weidmann, RAL)
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
Incorrect Brightness Temperature Jacobians (combination
of <a href=./sum/bbtflg.html>BBT</a> and <a href=./sum/jacflg.html>JAC</A>
flags. 
<dd><b>Reason</b>: RFM was calculating brightness temperature of difference
in radiance between perturbed and unperturbed atmospheres, instead of the 
difference in the brightness temperatures.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug59>
<dt><b>Bug#59</b>
<dd><b>Reported</b>: 19-JUL-05  (Alison Waterfall, RAL)
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
Unpredictable results in regions of line-mixing when
using <a href=./sum/mixflg.html>MIX</a>
flag and gases in addition to CO2.
<dd><b>Reason</b>: Line-mixing lineshape routine (MIXSHP) called for
all gases although one of the line-mixing parameters (YMXADJ) 
is only set for CO2,
so other gases inherit last set value of YMXADJ instead of 0.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug58>
<dt><b>Bug#58</b>
<dd><b>Reported</b>: 10-JUN-05  (Alison Waterfall, RAL)
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
Failure to read ASCII LUT files created with <a href=./sum/tabflg.html>TAB</a>
option where number of wavenumber points is GE 1E6.
<dd><b>Reason</b>: Format field in output (opntab.for) only allows I6 so,
when read free-format on input, field becomes indistinguishable from previous
field (which is "0").
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug57>
<dt><b>Bug#57</b>
<dd><b>Reported</b>: 05-MAY-05  (Alastair Burgess)
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
Use of wildcard "<B>*</b>" in <B><a href=./sum/gassec.html>*GAS</a></b> section
produces no absorbers
<dd><b>Reason</b>: Variable <B>IMIN</B> in subroutine <B>GASALL</B> not 
SAVEd (this is the threshold level for deciding which absorbers to use
which should be 0 by default).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug56>
<dt><b>Bug#56</b>
<dd><b>Reported</b>: 03-MAY-05  (Alastair Burgess)
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
Fails with "Segmentation Fault" when using heavy molecule
cross-section (<a href=./sum/xscsec.html>.xsc</a>) files
<dd><b>Reason</b>: Variable <B>NTRI</B> in subroutine <B>TRIANG</B> not 
SAVEd (this is the triangulation of the cross-section data in (p,T)
coordinates).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug55>
<dt><b>Bug#55</b>
<dd><b>Reported</b>: 08-MAR-05 
<dd><b>Affects</b>: All versions up to and including v4.25
<dd><b>Symptom</b>: 
`Not a Number' or similar error message
<dd><b>Reason</b>: Ray tracing for cases where tangent point is very close
to the top of a layer can occasionally result in a negative absorber amount
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug54>
<dt><b>Bug#54</b>
<dd><b>Reported</b>: 04-FEB-05 
<dd><b>Affects</b>: RFM v4.23-v4.25
<dd><b>Symptom</b>: 
Occasional failure in ray-tracing with `floating point invalid' type
message (taking square root of negative number) during Jacobian calculations
(<a href=./sum/jacflg.html>JAC</a> flag) for temperature or pressure.
<dd><b>Reason</b>: density scale height was being calculated from
refractivity scale height before refractivity profile was updated
(subroutine <b>atmaux.for</b>)
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug53>
<dt><b>Bug#53</b>
<dd><b>Reported</b>: 11-JAN-05 
<dd><b>Affects</b>: All versions of the RFM up to and including v4.25
<dd><b>Symptom</b>: 
<a href=./sum/mixflg.html>MIX</a> (line mixing) flag has no effect when
using special versions of HITRAN-format file 
developed for MIPAS.
<dd><b>Reason</b>: Additional rotational quantum numbers inserted into
the HITRAN records where blank characters are expected (subroutine 
<b>ymix.for</b> searches for matches of these fields with its list of
transitions for which line mixing effects are included).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v426>v4.26</a>

<P>
<a name=bug52>
<dt><b>Bug#52</b>
<dd><b>Reported</b>: 01-JUN-04 
<dd><b>Affects</b>: RFM v4.22-v4.24
<dd><b>Symptom</b>: occasionally incorrect spectral calculations when using
combination of <a href=./sum/ilsflg.html>ILS</a> and <a
href=./sum/grdflg.html>GRD</a> flags.
<dd><b>Reason</b>: The direct interpolation from irregular grid to
ILS-convolved output grid introduced in v4.22 can lead to uninitialised
array elements being included in the summation.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v425>v4.25</a>

<P>
<a name=bug51>
<dt><b>Bug#51</b>
<dd><b>Reported</b>: 22-MAR-04 
<dd><b>Affects</b>: RFM v4.23, v4.24
<dd><b>Symptom</b>: rfm.runlog file contains incorrect spectral range 
information in message
<PRE>
I-SPCCHK: Label= ...
</PRE>
and may lead to array bound error.
<dd><b>Reason</b>: Incorrect spectral range index (true value - 1) used
in constructing message text
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v425>v4.25</a>

<P>
<a name=bug50>
<dt><b>Bug#50</b>
<dd><b>Reported</b>: 12-MAR-04 (Vivienne Payne)
<dd><b>Affects</b>: All versions of the RFM using combination of
<a href=./sum/ctmflg.html>CTM</a> flag and different H2O isotopic profiles
<dd><b>Symptom</b>: Incorrect handling of subtraction of 25cm-1 offset for
combination with continuum for isotopic profiles
<dd><b>Reason</b>: Variable isotopes handled as separate species but 
continuum flag only set for default profile
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v425>v4.25</a>

<P>
<a name=bug49>
<dt><b>Bug#49</b>
<dd><b>Reported</b>: 25-OCT-03 (Anu Dudhia)
<dd><b>Affects</b>: All versions of the RFM using combination of
<a href=./sum/obsflg.html>OBS</a> and 
<a href=./sum/jacflg.html>JAC</a> flags
<dd><b>Symptom</b>: Jacobians incorrect if 
<a href=./sum/jacsec.html>*JAC</a> section specified in driver table before the
<a href=./sum/obssec.html>*OBS</a> AND the observer altitude is not an internal
profile level AND jacobians are defined for levels at or above the observer height
<dd><b>Reason</b>: Subroutine OBSATM which inserts extra atmospheric
level for the observer height does not allow for change in level numbering
in definition of perturbed levels for Jacobians.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v424>v4.24</a>

<P>
<a name=bug48>
<dt><b>Bug#48</b>
<dd><b>Reported</b>: 21-OCT-03 (Vivienne Payne, Oxford)
<dd><b>Affects</b>: RFM v4.22,4.23 using combination of
<a href=./sum/obsflg.html>OBS</a> and 
<a href=./sum/jacflg.html>JAC</a> flags
<dd><b>Symptom</b>: Jacobians sometimes incorrect
<dd><b>Reason</b>: Ray-tracing RFMRAY contains a short cut to prevent
repeated calculations for Jacobians through
atmospheric layers which are unchanged, but this
short cut is only valid for observervations outside the atmosphere.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v424>v4.24</a>

<P>
<a name=bug47>
<dt><b>Bug#47</b>
<dd><b>Reported</b>: 30-APR-03 (Aleks Milyakov, Russia)
<dd><b>Affects</b>: All versions of the RFM 
<dd><b>Symptom</b>: Lines falling exactly on upper boundary of widemesh 
interval N are counted twice in interval N-2:N-1 (eg a line exactly at 1000cm-1
is counted as two lines in the interval 998-999cm-1).
<dd><b>Reason</b>: Test on lines in finemesh calculation
uses .LE. instead of .LT. when deciding whether the upper boundary should be
included
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v423>v4.23</a>

<P>
<a name=bug46>
<dt><b>Bug#46</b>
<dd><b>Reported</b>: 30-APR-03 (Chiara Piccolo, Oxford)
<dd><b>Affects</b>: All versions of the RFM using some Linux systems
<dd><b>Symptom</b>: Carriage return character <CR> appears at end of
2nd header record of output spectra (the user-supplied comment record
entered in the <a href=./sum/hdrsec.html>*HDR</a> section of the driver table)
<dd><b>Reason</b>: Carriage Return characters handled differently in Linux
and Unix (see also <a href=#bug40>Bug#40</a>)
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v423>v4.23</a>

<P>
<a name=bug45>
<dt><b>Bug#45</b>
<dd><b>Reported</b>: 28-APR-03 (Anu Dudhia)
<dd><b>Affects</b>: RFM v4.10 onwards using 
<a href=./sum/pthflg.html>PTH</a> flag (path diagnostics) plus
<a href=./sum/obsflg.html>OBS</a> flag (observer within atmosphere) plus
<dd><b>Symptom</b>: Extra atmospheric layer included in path diagnostics
<dd><b>Reason</b>: Starting integration at layer above observer
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v423>v4.23</a>

<P>
<a name=bug44>
<dt><b>Bug#44</b>
<dd><b>Reported</b>: 10-MAR-03 (Anu Dudhia)
<dd><b>Affects</b>: RFM v4.12 onwards using 
<a href=./sum/flxflg.html>FLX</a> flag, flux calculations.
<dd><b>Symptom</b>: floating zero divide in second widemesh interval
<dd><b>Reason</b>: Resetting pi factor=0.0 in rfmflx.for after first widemesh
interval - should be either be 3.14...etc  or 
1.0 (using <a href=./sum/vrtflg.html>VRT</a> flag)
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug43>
<dt><b>Bug#43</b>
<dd><b>Reported</b>: 20-FEB-03 (Niels Bormann, ECMWF)
<dd><b>Affects</b>: RFM using a combination of 
<a href=./sum/grdflg.html>GRD</a> and <a href=./sum/tabflg.html>TAB</A> flags,
generating direct look-up tables on an irregular grid
<dd><b>Symptom</b>: generated grid files displaced by one or two 
spectral points
<dd><b>Reason</b>: Not allowing for RFM adding internal grid points at
wide mesh boundaries
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug42>
<dt><b>Bug#42</b>
<dd><b>Reported</b>: 13-FEB-03 (Niels Bormann, ECMWF)
<dd><b>Affects</b>: RFM using a combination of 
<a href=./sum/graflg.html>GRA</a> and <a href=./sum/jacflg.html>JAC</A> flags,
ie creating Jacobians from a two-dimensional atmosphere
<dd><b>Symptom</b>: Program stops with error message printed to terminal
<PRE>
STOP F-RFMPTB: Logical Error#3
</PRE>
<dd><b>Reason</b>: Unforeseen error when deciding which Jacobian path
segments
can be derived from simple mass-scaling of other path segments.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug41>
<dt><b>Bug#41</b>
<dd><b>Reported</b>: 18-JAN-03 (Anu Dudhia)
<dd><b>Affects</b>: All versions of the RFM using a combination of 
spectral ranges some with valid <a href=./sum/lutsec.html>LUTs</a> 
and some without
<dd><b>Symptom</b>: no fine mesh calculation for spectral ranges without
LUTs
<dd><b>Reason</b>: When a spectral range is calculated using a Look-Up Table
this flags the HITRAN database reading routine REACYC as having reached the
end of the database file, so subsequent spectral ranges which may require
HITRAN data if no LUT data available do not read any line information.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug40>
<dt><b>Bug#40</b>
<dd><b>Reported</b>: 13-JAN-03 (Anu Dudhia)
<dd><b>Affects</b>: All versions of the RFM using some Linux systems
<dd><b>Symptom</b>: Garbled <tt>rfm.runlog</tt> files and occasionally
unable to read driver table entries
<dd><b>Reason</b>: Carriage Return character not handled properly
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug39>
<dt><b>Bug#39</b>
<dd><b>Reported</b>: 13-JAN-03 (Anu Dudhia)
<dd><b>Affects</b>: All versions of the RFM using
<a href=./sum/grdflg.html>GRD</a> flag but with no valid files in the 
<a href=./sum/grdsec.html>*GRD</a> section
<dd><b>Symptom</b>: Fatal error message:
<PRE>
 F-FINCHK: fine mesh resolution inconsistent with irregular grid resolution
</PRE> 
<dd><b>Reason</b>: FINCHK checks that the internal fine mesh resolution 
(e.g. 0.0005cm-1) is compatible with the resolution of the irregular grid
data supplied in the *GRD section, however if no valid GRD files have been
found (ie not overlapping any required output spectral range) the grid file
resolution is not set (so, for example, may be zero), so the two numbers
being compared will not agree.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>

<P>
<a name=bug38>
<dt><b>Bug#38</b>
<dd><b>Reported</b>: 01-DEC-02 (Anu Dudhia)
<dd><b>Affects</b>: <A HREF=rfm_upgrades.html#v421>v4.21</a> 
using molecules with HITRAN index > 14 at wavenumbers near zero
<dd><b>Symptom</b>: Fatal error message:
<PRE>
 F-INIHFL: Failed to read HITRAN file, rec#:          0. IOSTAT=         25
</PRE> (number 25 is machine dependent) 
<dd><b>Reason</b>: failing to set forward pointers for molecules ID#15 onwards
when winding back from initial wavenumber if within 25cm-1 of start of HITRAN
file so attempts to access record#0 of the HITRAN file instead.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v422>v4.22</a>
<p>
<a name=bug37>
<dt><b>Bug#37</b>
<dd><b>Reported</b>: 18-JUL-02 (Randall Skelton, Oxford)
<dd><b>Affects</b>: <A HREF=rfm_upgrades_v3.html#v3.90>v3.90</a> onwards
using  <a href=./sum/lunflg.html>LUN</a> flag (re-use LUNs for output spectra)
with different types of spectra, e.g. output both 
radiance (<a href=./sum/radflg.html>RAD</a> flag) and 
transmittance (<a href=./sum/traflg.html>TRA</a> flag) spectra.
<dd><b>Symptom</b>: All files correctly opened but all types of spectra 
written to only one type of file.
<dd><b>Reason</b>: Incorrect logic in subroutine <tt>opnout.for/wrtout.for</tt>
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v421>v4.21</a>
<p>
<a name=bug36>
<dt><b>Bug#36</b>
<dd><b>Reported</b>: 29-MAY-02 (Anu Dudhia)
<dd><b>Affects</b>: <A HREF=rfm_upgrades.html#v410>v4.10</a> onwards
using  <a href=./sum/pthflg.html>PTH</a> flag (path diagnostics) 
plus <a href=./sum/graflg.html>GRA</a> flag (2D atmosphere) with more
than one absorber
<dd><b>Symptom</b>: Only writes path diagnostics for upward path for
second and subsequent absorbers
<dd><b>Reason</b>: Incorrect logic in subroutine <tt>rfmpth.for</tt>
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v421>v4.21</a>
<p>
<a name=bug35>
<dt><b>Bug#35</b>
<dd><b>Reported</b>: 23-JAN-02 (Tim Nightingale, RAL)
<dd><b>Affects</b>: <A HREF=rfm_upgrades.html#v410>v4.10</a> onwards
using  <a href=./sum/cooflg.html>COO</a> flag (cooling rates) 
<dd><b>Symptom</b>: Cooling rates too high by a factor of about 1000
<dd><b>Reason</b>: Incorrect value of molar heat capacity of air CPMOL
in phycon.inc (1005/28.964 was used, should have been 1005*28.964).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug34>
<dt><b>Bug#34</b>
<dd><b>Reported</b>: 04-JAN-02 (Victoria Jay, RAL)
<dd><b>Affects</b>: <A HREF=rfm_upgrades.html#v410>v4.10</a> onwards
using  <a href=./sum/jacflg.html>JAC</a> flag (Jacobians) 
<dd><b>Symptom</b>: Occasional array bound error, or incorrect Jacobian
element
<dd><b>Reason</b>: When looking for similar CG paths to save additional
computations for Jacobian elements, RFMPTB fail to account
for the (rare) situation when the similar path used is itself scaled 
to another similar path (don't worry - I understand what that means).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug33>
<dt><b>Bug#33</b>
<dd><b>Reported</b>: 17-DEC-01 (Anu Dudhia)
<dd><b>Affects</b>: <A HREF=rfm_upgrades.html#v410>v4.10</a> onwards
using combination of 
<a href=./sum/tabflg.html>TAB</a> +
<a href=./sum/grdflg.html>GRD</a> (creating look-up tables with irregularly
spaced wavenumber axes) for more than one absorber.
<dd><b>Symptom</b>: Irregular grid data only written into table of the
last absorber 
<dd><b>Reason</b>: Failure to write irregular grid data to all absorber
tables.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug32>
<dt><b>Bug#32</b>
<dd><b>Reported</b>: 13-DEC-01 (Anu Dudhia)
<dd><b>Affects</b>: all previous versions calculating
Pressure and Temperature Jacobians
<dd><b>Symptom</b>: Small discrepancy between independently differenced
spectra 
<dd><b>Reason</b>: Failure to allow for perturbed refractive index when
perturbing pressure or temperature.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug31>
<dt><b>Bug#31</b>
<dd><b>Reported</b>: 13-DEC-01 (Victoria Jay, Oxford/RAL)
<dd><b>Affects</b>: all previous versions calculating
Pressure and Temperature Jacobians with non-zero aerosol extinction
<dd><b>Symptom</b>: Discrepancy between independently differenced
spectra 
<dd><b>Reason</b>: Code kept original value of (extinction/density) when
multiplying by perturbed density, effectively treating extinction/density as
the conserved quantity. Correct approach is to maintain extinction constant
so that for pure aerosol absorption, density variations have no Jacobian
signal.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug29>
<dt><b>Bug#29</b>
<dd><b>Reported</b>: 12-DEC-01 (Anu Dudhia)
<dd><b>Affects</b>: all previous versions run under certain compilers
(eg Linux g77) 
<dd><b>Symptom</b>: Various discrepancies in results
<dd><b>Reason</b>: Failure to save variables in subroutines
(With most compilers all subroutine variables are
automatically saved between calls, but not with g77).
NB: there are probably several more bugs of this type which haven't yet been
iedentified - users of the g77 compiler be warned 
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug28>
<dt><b>Bug#28</b>
<dd><b>Reported</b>: 04-DEC-01 (Clive Rodgers, Oxford)
<dd><b>Affects</b>: all previous versions run under certain compilers
(eg Linux g77) when using spectral convolutions 
(either the <a href=./sum/ilsflg.html>ILS</a> or 
<a href=./sum/avgflg.html>AVG</a>
flags)
<dd><b>Symptom</b>: Output spectra severely distorted 
<dd><b>Reason</b>: Failure to save variable <tt>IDXBUF</tt> in subroutine
<tt>RFMILS.FOR</TT> (With most compilers all subroutine variables are
automatically saved between calls, but not with g77).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug27>
<dt><b>Bug#27</b>
<dd><b>Reported</b>: 28-NOV-01 (Alison Waterfall, Oxford)
<dd><b>Affects</b>: all previous versions when
using line-mixing (<a href=./sum/mixflg.html>MIX</a> flag)
<dd><b>Symptom</b>: Output spectra sometimes displaced by 1 or 2 complete
wavenumbers
<dd><b>Reason</b>: When including line mixing it is necessary to include
complete CO2 bands within the +/-25cm margins for the widemesh calculation.
Where the -25cm-1 lower limit intersected
a band (12 bands, 2-3cm-1 wide - see SPCWID.FOR), instead of just 
stretching the margins for the widemesh calculation 
the RFM was also adding a 1 or 2cm-1 offset to the output spectrum.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug26>
<dt><b>Bug#26</b>
<dd><b>Reported</b>: 28-NOV-01 (Igor Ptashnik, Reading)
<dd><b>Affects</b>: all previous versions when
using limb viewing paths
<dd><b>Symptom</b>: Floating zero divide (or large error)
<dd><b>Reason</b>: When performing the ray-tracing each atmospheric
layer is subdivided into 10 or more path segments for the Curtis-Godson
integrations. There is a small probability that the final segment within
a layer is large enough to be non-zero but too small to evaluate the
Curtis-Godson integrations reliably.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug25>
<dt><b>Bug#25</b>
<dd><b>Reported</b>: 04-NOV-01 (Anu Dudhia)
<dd><b>Affects</b>: v4.10 and v4.11 when using <a href=./sum/flxflg.html>FLX</a>
flags without <a href=./sum/zenflg.html>ZEN</a> flag or <a
href=./sum/sfcflg.html>SFC</a> flag
<dd><b>Symptom</b>: If <a href=./sum/sfcflg.html>SFC</a> flag not enabled,
the surface treated as zero emission/reflection in flux
calculations 
<dd><b>Reason</b>: No check that the user has enabled
<a href=./sum/sfcflg.html>SFC</a> flag if 
<a href=./sum/flxflg.html>FLX</a> is enabled without 
<A href=./sum/zenflg.html>ZEN</a> flag.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug24>
<dt><b>Bug#24</b>
<dd><b>Reported</b>: 31-OCT-01 (Igor Ptashnik, Reading)
<dd><b>Affects</b>: All previous versions using <a href=./sum/zenflg.html>ZEN</a>
flag
<dd><b>Symptom</b>: Slow calculation compared to using limb-type calculations
with elevation angle (<a href=./sum/tansec.html>*ELE</a>) set to 90deg.
<dd><b>Reason</b>: Line-by-line calculations performed for entire atmosphere
not just layers above the observer
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug23>
<dt><b>Bug#23</b>
<dd><b>Reported</b>: 31-OCT-01 (Anu Dudhia)
<dd><b>Affects</b>: v4.10 and v4.11 when using <A href=./sum/flxflg.html>FLX</a>
flag (flux calculations) with <a href=./sum/nadflg.html>NAD</a> flag
(downward-looking hemisphere only) above a reflecting surface 
<dd><b>Symptom</b>: Incorrect radiance fluxes and cooling rates
<dd><b>Reason</b>: Downward path contribution to net flux is not removed
(so <a href=./sum/nadflg.html>NAD</a> flag has no effect)
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v412>v4.12</a>
<p>
<a name=bug22>
<dt><b>Bug#22</b>
<dd><b>Reported</b>: 15-AUG-01 (Anu Dudhia)
<dd><b>Affects</b>: All versions when using <A href=./sum/linflg.html>LIN</a>
flag (Linear interpolation of VMR with height) with anything other
than limb-viewing.
<dd><b>Symptom</b>: Identical to LIN flag disabled (ie log(VMR) interpolation)
<dd><b>Reason</b>: No special treatment for linear interpolation when
calculating Curtis-Godson parameters for plane parallel atmosphere
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug21>
<dt><b>Bug#21</b>
<dd><b>Reported</b>: 23-MAY-01 (James Watts, Oxford)
<dd><b>Affects</b>: v4.10 onwards when using <A href=./sum/graflg.html>GRA</a>
flag (Horizontal gradients) with <a href=./sum/atmsec.html>psi angles</a> 
less than minimum value used
for profiles (ie raypaths extending beyond specified profiles on the
side away from the observer)
<dd><b>Symptom</b>: Incorrect atmospheric paths
<dd><b>Reason</b>: Atmosphere beyond low-psi limit is being extrapolated
from last two specified profiles rather than assumed constant (as for the
high-psi case)
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug20>
<dt><b>Bug#20</b>
<dd><b>Reported</b>: 04-MAY-01 (Victoria Jay, Oxford)
<dd><b>Affects</b>: v3.82 onwards when using <A href=./sum/jacflg.html>JAC</a>
flag (Jacobians) in combination with <A href=./sum/grdflg.html>GRD</a> 
(irregular grids).
<dd><b>Symptom</b>: Incorrect Jacobians calculated with irregular grids.
<dd><b>Reason</b>: Interpolation from irregular to fine grid only looping
over nominal tangent paths, not additional paths required for Jacobians.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug19>
<dt><b>Bug#19</b>
<dd><b>Reported</b>: 22-MAR-01 (Jolyon Reburn, RAL)
<dd><b>Affects</b>: v4.10 when using <A href=./sum/graflg.html>GRA</a> flag
(horizontal gradients).
<dd><b>Symptom</b>: Program sometimes
hangs during ray-tracing (after driver table read
in, but before start of line-by-line calculations)
<dd><b>Reason</b>: 2D ray-tracing numerical integration doesn't converge
in situations where zero path length is required
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug18>
<dt><b>Bug#18</b>
<dd><b>Reported</b>: 20-MAR-01 (Anu Dudhia)
<dd><b>Affects</b>: versions v3.50-v4.10 when
using an Irregular Grid (<a href=./sum/grdflg.html>GRD</a> flag)
which is not on the same resolution as the fine mesh calculation.
<dd><b>Symptom</b>: Incorrect fine grid interpolation
<dd><b>Reason</b>: Irregular grids can only be used for one particular fine
grid spacing, no checks were performed to ensure this was the case.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug17>
<dt><b>Bug#17</b>
<dd><b>Reported</b>: 20-MAR-01 (Victoria Jay, Oxford)
<dd><b>Affects</b>: all versions up to v4.10 
using combination of different spectral ranges (multiple records in
the <a href=./sum/spcsec.html>*SPC</a> section) plus 
range-specific ILS functions (<a href=./sum/ils>ILS</a> flag)
where one of the ranges has no defined
ILS function plus no default ILS function (bit of an obscure combination,
really).
<dd><b>Symptom</b>: Unpredictable.
<dd><b>Reason</b>: RFM checks that each spectral range has a defined
ILS function, but fails to exit and report error in the case when it doesn't.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug16>
<dt><b>Bug#16</b>
<dd><b>Reported</b>: 16-MAR-01 (Richard Siddans, RAL)
<dd><b>Affects</b>: all versions up to v4.10 when
using combination of <a href=./sum/crvflg.html>CRV</a> flag
and FOV or geometric tangent heights (specified using 
*GEO or *ELE marker for the <a href=./sum/tansec.html>*TAN</a> section).
<dd><b>Symptom</b>: User-specified radius of curvature not used in calculating
refracted (actual) tangent heights.
<dd><b>Reason</b>: Refracted tangent heights are calculated with the
 default radius of curvature (<tt>REARTH</TT> in <tt>phycon.inc</tt>),
but ray-tracing, using these tangent heights
is performed with the user-specified radius.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug15>
<dt><b>Bug#15</b>
<dd><b>Reported</b>: 26-FEB-01 (Jolyon Reburn, RAL)
<dd><b>Affects</b>: all versions up to v4.10 when
`unusual` spectral resolutions are specified in the <A
href=./sum/spcsec.html>*SPC</a> section (e.g., '0.0001999999' )
<dd><b>Symptom</b>: Discrepancy between number of spectral points indicated
in header of output spectra and number of points actually written
<dd><b>Reason</b>: Algorithm for calculating number of widemesh intervals
occasionally underestimates number required to cover full output spectrum
due to truncation errors.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug14>
<dt><b>Bug#14</b>
<dd><b>Reported</b>: 26-JAN-01 (Jolyon Reburn, RAL)
<dd><b>Affects</b>: all versions up to v4.10 when
no gases are specified in the <A href=./sum/gassec.html>*GAS</a> section
(e.g. by using <tt> *(20) </tt> with the wild-card parameter set too high)
<dd><b>Symptom</b>: Floating zero divide
<dd><b>Reason</b>: Diagnostic message produced by <tt>RFMSCA.FOR</TT> doesn't
allow for zero paths when calculating fraction of paths that will be
scaled.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug13>
<dt><b>Bug#13</b>
<dd><b>Reported</b>: 26-JAN-01 (Richard Siddans, RAL)
<dd><b>Affects</b>: v4.10 using both
<a href=./sum/graflg.html>GRA</a> and 
<a href=./sum/geoflg.html>GEO</a> flags together.
<dd><b>Symptom</b>: Floating zero divide
<dd><b>Reason</b>: Setting Refractive Index=0 rather than 1 in
subroutine <tt>GRADVS.FOR</tt> when performing 2-dimensional ray-trace
with refraction switched off.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug12>
<dt><b>Bug#12</b>
<dd><b>Reported</b>: 26-JAN-01 (Victoria Jay, Oxford)
<dd><b>Affects</b>: all versions up to v4.10 with 
<a href=./sum/ilsflg.html>ILS</a> or
<a href=./sum/avgflg.html>AVG</a> flags and at an output resolution
finer than 0.0005 cm-1.
<dd><b>Symptom</b>: Floating zero divide
<dd><b>Reason</b>: ILS/AVG convolutions had assumed that the output resolution
would always be coarser than the default internal fine grid (0.0005cm-1).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v411>v4.11</a>
<p>
<a name=bug11>
<dt><b>Bug#11</b>
<dd><b>Reported</b>: 20-DEC-00 (Steve Bass, Oxford)
<dd><b>Affects</b>: all versions up to v4.09 with 
<a href=./sum/homflg.html>HOM</a> flag and at least two files describing
homogeneous path in
the <a href=./sum/atmsec.html>*ATM</a> section, and 
with a replacement pressure value in the second or subsequent file
<dd><b>Symptom</b>: Floating overflow 
<dd><b>Reason</b>: Replacement pressure profiles are usually extrapolated
(as log(pressure)) 
to fit original altitude grid, but with only one "altitude", the 
extrapolation routine breaks down. Other species, and temperature, are not
extrapolated so should be OK anyway.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v410>v4.10</a>
<p>
<a name=bug10>
<dt><b>Bug#10</b>
<dd><b>Reported</b>: 07-NOV-00 (Anu Dudhia)
<dd><b>Affects</b>: v4.04 - v4.09 with 
<a href=./sum/sfcflg.html>SFC</a> flag and reflective surfaces
<dd><b>Symptom</b>: Floating overflow or logarithm of 0
<dd><b>Reason</b>: At surface, transmittance is scaled by surface reflectivity
r as tau*r, 
and optical depth is reevaluated as -log(tau). However, if the atmospheric
transmittance is already zero at the surface, this leads to an error.
Solution is to evaluate increase in optical depth directly as
-ln(r).
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v410>v4.10</a>
<p>
<a name=bug9>
<dt><b>Bug#9</b>
<dd><b>Reported</b>: 20-SEP-00 (Victoria Jay, Oxford)
<dd><b>Affects</b>: All previous versions with
<a href=./sum/fovflg.html>FOV</a> plus <a href=./sum/clcflg.html>CLC</a> flags both
enabled and multiple tangent paths.
<dd><b>Symptom</b>: Slight variations in radiance according to number of
different tangent heights calculated in single run
<dd><b>Reason</b>: CLC flag only forced separate paths to be used for each
tangent ray constituting the FOV, but did not prevent closely spaced 
tangent paths from overlapping FOVs to be regarded as the same if the 
spearation was less than 10% of the FOV spacing.
This tolerance has now been reduced to 1%, and 0% if CLC flag is enabled.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v410>v4.10</a>
<p>
<a name=bug8>
<dt><b>Bug#8</b>
<dd><b>Reported</b>: 06-AUG-00 (Steve Bass, Oxford)
<dd><b>Affects</b>: v3.82 onwards with
<a href=./sum/jacflg.html>JAC</a> plus  <a href=./sum/homflg.html>HOM</a> 
flags both enabled.
<dd><b>Symptom</b>: Creates zero Jacobian spectra for homogeneous path case
<dd><b>Reason</b>: HOMPTH resetting number of paths so perturbed paths are
ignored
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v410>v4.10</a>
<p>
<a name=bug7>
<dt><b>Bug#7</b>
<dd><b>Reported</b>: 26-APR-00 (Anu Dudhia)
<dd><b>Affects</b>: All versions up to v4.04 using wavenumbers near 0.0</a>
<dd><b>Symptom</b>: Program crashes with floating overflow in subroutine VOISHP
<dd><b>Reason</b>: VOISHP doesn't allow for v.small Doppler widths associated
with O2 line at 1e-5 cm-1.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v410>v4.10</a>
<p>
<a name=bug6>
<dt><b>Bug#6</b>
<dd><b>Reported</b>: 14-APR-00 (Joanna Haigh, Imperial)
<dd><b>Affects</b>: v3.82 - v4.03 using <a href=./sum/sfcflg.html>SFC</a>
flag AND surface emissivities < 1.
<dd><b>Symptom</b>: Incorrect reflected radiance contribution.
<dd><b>Reason</b>: Transmittance term for contributions of reflected ray
failed to allow for reduction in transmittance upon surface reflection, 
so reflected atmospheric contribution to radiances is overestimated.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v404>v4.04</a>
<p>
<a name=bug5>
<dt><b>Bug#5</b>
<dd><b>Reported</b>: 13-APR-00 (Anu Dudhia)
<dd><b>Affects</b>: All versions up to and including
<a href=rfm_upgrades.html#v403>v4.03</a> when using
<a href=./sum/widflg.html>WID</a> flag (widemesh diagnostics) AND
more than one spectral range in <a href=./sum/spcsec.html>*SPC</a> section.
<dd><b>Symptom</b>: Incorrect line counts for second and subsequent
spectral ranges in widemesh diagnostic output.
<dd><b>Reason</b>: Failing to reinitialise line counts at start of each
new spectral range.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v404>v4.04</a>
<p>
<a name=bug4>
<dt><b>Bug#4</b>
<dd><b>Reported</b>: 08-DEC-99 (Victoria Jay, Oxford)
<dd><b>Affects</b>: All versions up to and including
<a href=rfm_upgrades.html#v402>v4.02</a> when compiled with the
Fujitsu Linux compiler with switch -Xf7
(and probably some other compilers too).
<dd><b>Symptom</b>: Slightly random output filenames (confusing, but not fatal).
<dd><b>Reason</b>: Filenames were constructed from templates
by inserting tangent height etc information using a non-standard FORTRAN77
construction of the typical form 
<br>
<TT>      FILNAM = FILNAM(1:10)//TANHGT(1:5)//FILNAM(11:20)</TT><br>
On most machines this is interpreted as intended, i.e., with the
<tt>TANHGT</tt> substring inserted at character positions 11 in 
<TT>FILNAM</TT>, and the remaining <tt>FILNAM</tt> characters appended.
However, the Fujitsu compiler appears to assign
<TT>TANHGT</TT> to <tt>FILNAM(11:15)</tt> before determining <tt>FILNAM(11:20)</tt>.
In `correct' FORTRAN77 usage the same part of
a character string should not appear on both the left and right sides of an 
assignment statement, as it does above. (NB The above assignment <i>is</i>
valid under FORTRAN 95).

<dd><b>Fix</b>: <a href=rfm_upgrades.html#v403>v4.03</a>
<p>
<a name=bug3>
<dt><b>Bug#3</b>
<dd><b>Reported</b>: 04-NOV-99 (Bob Wells, Oxford)
<dd><b>Affects</b>: <a href=rfm_upgrades_v3.html#v343>v3.43</a> onwards,
when using <a href=./sum/ctmflg.html>CTM</a> flag and 
<TT><a href=./sum/gassec.html>NOCTM</a></TT> qualifier
with <tt>H2O</tt> 
<dd><b>Symptom</b>: Incorrectly calculated H2O lines 
<dd><b>Reason</b>: CTM flag should switch on continuum calculations for all
species (ie CO2, H2O, O2 and N2), but NOCTM qualifier after species name should
switch it off again for a particular species. However, for water vapour, 
the NOCTM only switched off part of the continuum calculation: the application
of the continuum itself, it did not switch off the truncation of the H2O lines
at their +/- 25cm-1 values.
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v402>v4.02</a>
<p>
<a name=bug2>
<dt><b>Bug#2</b>
<dd><b>Reported</b>: 04-NOV-99 (Victoria Jay, Oxford)
<dd><B>Affects</b>: <a href=rfm_upgrades_v3.html#v37>v3.7</a> onwards,
when tangent heights (<a href=./sum/tansec.html>*TAN</a> section) 
are expressed as ELEvation angles or GEOmetric heights
<DD><B>Symptom</b>: Very occasionally, a fatal error condition arises
with the message: 
<tt>F-TANCNV: Failed to converge</tt>
<dd><b>Reason</b>: For a given geometric tangent height, the actual refracted
tangent height is determined by an iterative procedure which usually converges
to 1m accuracy within 3 iterations. However, occasionally the solution appears
to oscillate, in which case the maximum allowed number of iterations (10) was
exceeded and a fatal error condition was set. Now when this happens, it is 
assumed that the refracted tangent height can be taken as 
the mean of the last two iterative values, although a warning message is 
still printed to the terminal: 
<tt>W-TANCNV: Failed to converge</tt>
<DD><B>Fix</b>: <a href=rfm_upgrades.html#v402>v4.02</a>
<p>
<a name=bug1>
<dt><b>Bug#1</b>
<dd><b>Reported</b>: 12-OCT-99 (Anu Dudhia)
<dd><b>Affects</b>: <a href=./sum/sfcflg.html>SFC</a> Flag used with limb-viewing
<dd><b>Symptom</b>: If SFC flag is switched on, <i>all</I> limb viewing
tangent heights are treated as intersecting the surface, even if the tangent
height is above the surface.
<dd><b>Reason</b>: Routine <TT>RFMRAD.FOR</TT> only checked status of
<a href=./sum/sfcflg.html>SFC</a> before deciding whether or not to insert
the surface calculation at the lowest point on the ray path, it didn't check
to see if ray actually intersected the surface
<dd><b>Fix</b>: <a href=rfm_upgrades.html#v401>v4.01</a>


</dl><hr>

<ul>
<li> <a href=index.html>RFM home page</a>
<li> <a href=./sum/index.html>RFM Software User's Manual</a>
<li> <a href=rfm_upgrades.html>RFM Updates</a>
</ul>
</BODY>
</HTML>

	tamit,G|vaAre