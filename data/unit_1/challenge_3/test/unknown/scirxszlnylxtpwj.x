<HTML>
<HEAD>
<title>RFM v4 Upgrades</title>
<LINK TYPE="text/css" REL="stylesheet" HREF="./sum/rfm.css">
</HEAD>
<BODY>
<h1 class=bar>RFM v4 Updates</h1>
<h2>Modifications since v4.00 (15-SEP-1999) </h2>
<hr>
<dl compact>

<a name=v427>
<DT><b>4.27</b> 
<DT><B>Date</b>:01-JAN-07 (official release date)
<dd><b>New Features</b>:
  <OL>
  <LI> Use MT_CKD_1.10 instead of MT_CKD_1.00 H2O continuum (modification to
      foreign broadening in range 100-600cm-1).
  <LI> Change uses of non-standard <B>DFLOAT</B> intrinsic function to 
        generic <B>DBLE</B> to avoid problems with some compilers (eg NAG)
  <LI> Change 'X' to '1X' in format strings in various places (also
       a NAG Compiler issue).
  </OL>
<dd><b>Bug Fixes</b>:
<ul> 
<li> <A HREF=rfm_bugs.html#bug61>Bug#61</a>
</ul>
<P>

<a name=v426>
<DT><b>4.26</b> 
<DT><B>Date</b>:01-JAN-06 (official release date)
<dd><b>New Features</b>:
  <UL>
  <LI> None
  </UL>
<dd><b>Bug Fixes</b>:
<ul> 
<li> <a href=rfm_bugs.html#bug53>Bug#53</a> -
<a href=rfm_bugs.html#bug60>Bug#60</a> 
</ul>

<P>
<a name=v425>
<DT><b>4.25</b> 
<DT><B>Date</b>:01-JAN-05 (official release date)
<dd><b>New Features</b>:
<ol>
<LI> Allow <a href=./sum/jacsec.html>Jacobians</a> to be specified at
arbitrary altitudes rather than on the internal profile levels
<LI> <a href=./sum/levflg.html>LEV</a> flag to allow
intermediate outputs along ray paths at various levels within the
atmosphere (effectively multiple settings of observer altitude)
<LI> Allow <a href=./sum/jacsec.html>Jacobians</a> 
to be calculated for specific
isotopes
<LI> <a href=./sum/prfflg.html>PRF</a> flag to write out the internal
atmospheric profile used for the RFM calculations.
<LI> New H2O Continuum: MT_CKD v1 replaces CKD v2.4
<LI> Write out absorption coefficients in
<a href=./sum/mtxflg.html>MTX</a> + <a href=./sum/traflg.html>TRA</a> flag
combinations (to allow Escape Functions to be evaluated).
<LI> Handling of rotational non-LTE in format of
<a href=./sum/ntefil.html>.nte</a> files.
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<li> <a href=rfm_bugs.html#bug50>Bug#50</a> -
<a href=rfm_bugs.html#bug52>Bug#52</a> 
</ul>


<P>
<a name=v424>
<DT><b>4.24</b> 
<DT><B>Date</b>:01-JAN-04 (official release date)
<dd><b>New Features</b>:
<ol>
<LI> Add extra SO2 isotopes #3 (628) and #4 (636).
<LI> Force aerosol profile always to be interpolated linearly to internal
     height grid (which allows
     for slightly negative extinction values) - subroutine <b>filprf.for</b>
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<li><a href=rfm_bugs.html#bug48>Bug#48</a> -
<a href=rfm_bugs.html#bug49>Bug#49</a> 
</ul>

<P>
<a name=v423>
<DT><b>4.23</b> 
<DT><B>Date</b>:22-SEP-03 (official release date) 
<dd><b>New Features</b>:
<ol>
<LI> Allow templates (using `*' character) to be specified
for input files in various driver table sections, rather than having
to list all input files explicitly.
<LI> Allow spectral range (<a href=./sum/spcsec.html>*SPC</a> section)
and output to be specified in GHz rather than wavenumber
- <a href=./sum/ghzflg.html>GHZ</a> flag.
<LI> Extra output option of Brightness Temperature spectra 
- <a href=./sum/bbtflg.html>BBT</a> flag.
<LI> Add Van Vleck-Weisskopf line shape as an option
- <a href=./sum/shpsec.html>*SHP</a> section 
or <a href=./sum/vvwflg.html>VVW</a>
  flag.
<LI> Add option to calculate <a href=./sum/jacsec.html>Jacobian spectra</a> for
surface temperature (SFCTEM) and 
emissivity (SFCEMS)
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<li><a href=rfm_bugs.html#bug45>Bug#45</a> -
<a href=rfm_bugs.html#bug47>Bug#47</a> 
</ul>
<p>
<a name=v422>
<DT><b>4.22</b> 
<DT><B>Date</b>:10-MAR-03 
<dd><b>New Features</b>:
<ol>
<LI> Allow direct interpolation from irregular grid 
(<a href=./sum/grdflg.html>GRD</a> option) to output grid without intermediate
interpolation to fine grid followed by convolution 
(<a href=./sum/ilsflg.html>ILS</a> or <a href=./sum/avgflg.html>AVG</a> flags).
<LI> Allow direct lookup of TIPS data from tabulated data
(<a href=./sum/tpsflg.html>TPS</a> flag)
<LI> Add BrO (ID=40), moving existing GeH4 from ID=40 to new ID=46
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<li><a href=rfm_bugs.html#bug38>Bug#38</a> -
<a href=rfm_bugs.html#bug44>Bug#44</a> 
</ul>
<p>
<a name=v421>
<DT><b>4.21</b> 
<DT><B>Date</b>:24-OCT-02 
<dd><b>New Features</b>:
<ol>
<LI> Updated Gamache non-lte Total Partition sums
<li> Modified handling of <a href=./sum/ilsfil.html>.ils</a> files
to allow multiple ILS shapes to be specified within a single file.
(<tt>ilsfil.for</tt>)
<LI> Insist that all .atm files used with 2D atmospheres
(<a href=./sum/graflg.html>GRA</a> flag) have an explicit Psi angle.
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<li><a href=rfm_bugs.html#bug36>Bug#36</a> 
<li><a href=rfm_bugs.html#bug37>Bug#37</a> 
</ul>
<p>
<a name=v420>
<DT><b>4.20</b> 
<DT><B>Date</b>:27-MAR-02 
(<a href=v42_release.html>Release Notes</a>)
<dd><b>New Features</b>:
<ol>
<li> Change H2O continuum from CKD 2.1 to CKD 2.41 (switch in subroutine
<tt>ctmh2o.for</tt> allows reversion to CKD 2.1 if required).
<LI> Allow HDO to be specified as a separate absorber (molecule#39) - if not
specified then it is included with H2O by default (as before).
<LI> Allow isotopes to be assigned separate profiles using 
<a href=./sum/atmfil.html><tt>.atm</tt></a> files (default is to assume all
isotope ratios remain constant, as before)
<LI> Enable use of SF6 cross-section data (molecule#64 - replaces X64).
This is now the default if "sf6" is specified. To revert to using
line data (molecule#30), either specify "sf6q" or "30" in the 
<a href=./sum/gassec.html>*GAS</a> section of the driver table
</ol>
<dd><b>Bug Fixes</b>:
<ul> 
<LI>none
</ul>
<p>
<a name=v412>
<dt><b>4.12</b>
<dd><b>Date</b>: 27-JAN-02 
<dd><b>New Features</b>:
<ol>
<li>Add <a href=./sum/vrtflg.html>VRT</a> flag to allow flux-type features
such as multiple output levels but without the solid-angle integration,
i.e. for a vertical ray-path in a plane-parallel atmosphere
<LI>Improve speed of limb calculations, especially with Jacobians
(no difference to results, just more efficient coding)
<LI>Updated values of some fundamental constants, max change 0.0005%
(see phycon.inc for details)
</ol>
<dd><b>Bug Fixes</b>:
<ol>
<li><a href=rfm_bugs.html#bug23>Bug#23</a> 
- <a href=rfm_bugs.html#bug35>Bug#35</a> 
</ol>
<p>
<a name=v411>
<dt><b>4.11</b>
<dd><b>Date</b>: 20-SEP-01
<dd><b>New Features</b>:
<ol>
<li>Modified HNO3 TIPS data (will affect all calculations including HNO3)
in subroutine <tt>QTFCT.FOR</tt> - old coefficients still there
but commented out
<li>Compatibility with HITRAN 2000 cross-section data, including new species,
assigned RFM indices 70-81 (<a
href=http://www.atm.ox.ac.uk/RFM/./sum/rfm_gaslist.html>Full List</a>).
See <a href=rfm_downloads.html>Downloads</a> web-page for cross-section data
reformatted RFM-format.
<li>Small modification to 
handling of <a href=./sum/ntesec.html>NTE</a> data so that VT profiles
no longer need to reach top of the atmosphere
<li>More computationally-efficient set-up procedure for Jacobian calculations
<LI>New <a href=./sum/losflg.html>LOS</a> flag for line-of-sight pointing 
Jacobians
<LI>Add H2O isotope#6 (172).
</ol>
<dd><b>Bug Fixes</b>:
<ol>
<li><a href=rfm_bugs.html#bug12>Bug#12</a> - 
<a href=rfm_bugs.html#bug22>Bug#22</a> 
</ol>
<p>
<a name=v410>
<dt><b>4.10</b>
<dd><b>Date</b>: 27-DEC-00. 
<dd><b>New features</b>:
<ol>
<li>Double precision output option for all spectra
(<a href=./sum/dblflg.html>DBL</a> flag)
<Li>Horizontal gradients (<a href=./sum/graflg.html>GRA</a> flag)
<li>Automatic spectral averaging (<a href=./sum/avgflg.html>AVG</a> flag)
<li>Flux Calculations (<a href=./sum/flxflg.html>FLX</a> flag)
<li>Cooling Rate Spectra (<a href=./sum/cooflg.html>COO</a> flag)
<li>Flux Matrices (<a href=./sum/mtxflg.html>MTX</a> flag)
<li>More efficient Jacobian calculation (<a href=./sum/jacflg.html>JAC</a>
flag)
<li>Numerically more accurate ray-tracing/CG Integration in normal limb-viewing
<li>Numerically more accurate radiative transfer calculation
<li>Allow LUTs to be expressed on irregular grids (<a
href=./sum/lutflg.html>LUT</a> flag)
<li>Allow TAB files to be generated on irregular grids
(combination of <a href=./sum/tabflg.html>TAB</a> + <a
href=./sum/grdflg.html>GRD</a> flags).
<LI>Additional species and isotopes from the GEISA 1997 dataset
</ol>
<dd><b>Bug Fixes</b>:
<ol>
<li><a href=rfm_bugs.html#bug7>Bug#7</a>
<li><a href=rfm_bugs.html#bug8>Bug#8</a>
<li><a href=rfm_bugs.html#bug9>Bug#9</a>
<li><a href=rfm_bugs.html#bug10>Bug#10</a>
<li><a href=rfm_bugs.html#bug11>Bug#11</a>
</ol>
<p>

<a name=v404>
<DT><b>4.04</b>
<DD><B>Date</b>: 14-APR-2000
<dd><B>Purpose</b>: 
<ol>
<LI>Fix <a href=rfm_bugs.html#bug5>Bug#5</a>
<LI>Fix <a href=rfm_bugs.html#bug6>Bug#6</a>
<LI>Add total line counts to <a href=./sum/widflg.html>WID</a> diagnostics
</ol>
<DD><b>Revised Modules</b>:
<tt><ol>
<li><tt>rfmspc.for </tt>
<LI><tt>radsfc.for </tt>
<LI><TT>widcom.inc, wrtwid.for, rfmwid.for </tt>
</ol></tt>
<DD><B>Effect</b>:
<ol>
<li>Corrected <a href=./sum/widfil.html>.wid</a> output files
<li>Corrected spectra with surface reflections
<li>Additional information in <a href=./sum/widfil.html>.wid</a> output files
</ol>
<p>
<a name=v403>
<DT><b>4.03</b>
<DD><B>Date</b>: 08-DEC-1999
<dd><B>Purpose</b>: 
<ol>
<LI>Fix <a href=rfm_bugs.html#bug4>Bug#4</a>
</ol>
<DD><b>Revised Modules</b>:
<tt><ol>
<li>MAKNAM.FOR, INPWID.FOR, JACNAM.FOR
</ol></tt>
<DD><B>Effect</b>:
<ol>
<li>No effect on calculated spectra
</ol>
<p>

<a name=v402>
<DT><b>4.02</b>
<DD><B>Date</b>: 05-NOV-1999
<dd><B>Purpose</b>: 
<ol>
<LI>Fix <a href=rfm_bugs.html#bug2>Bug#2</a>
<li>Fix <a href=rfm_bugs.html#bug3>Bug#3</a>
</ol>
<DD><b>Revised Modules</b>:
<tt><ol>
<li>FILPRF.FOR, RFMRAY.FOR, TANCNV.FOR
<li>RFMWID.FOR, RFMFIN.FOR
</ol></tt>
<DD><B>Effect</b>:
<ol>
<li>No effect
<li> Correct H2O lines calculated with combined <a href=./sum/ctmflg.html>CTM</a>
flag and <a href=./sum/gassec.html>(NOCTM)</a> qualifier 
</ol>
<p>

<a name=v401>
<DT><b>4.01</b>
<dd><b>Date</b> 12-OCT-1999
<dd><B>Purpose</b>: 
<oL>
<LI>Extend maximum ILS width to 1 widemesh interval (usually
1cm-1) - previously 0.5cm-1 maximum.
<LI> Fix <a href=rfm_bugs.html#bug1>Bug#1</a>
</ol>
<DD><b>Revised Modules</b>:
<oL>
<LI><tt>RFMSIZ.INC, RFMCON.INC, FILILS.FOR, ILSCHK.FOR, ILSINT.FOR,
RFMILS.FOR, FILXFL.FOR, SPCWID.FOR, SPCFIN.FOR </TT>
<LI><TT>RFMRAD.FOR</TT>
</oL>
<DD><B>Effect</b>:
<oL>
<LI>Allows wider ILS functions to be used
<li>Correct limb spectra calculated with <a href=./sum/sfcflg.html>SFC</a>
flag enabled which do not intersect surface.
</ol>
<p>
<a name=v400>
<dt><b>4.00</b>
<Dd><b>Date</b>: 15-SEP-1999
<DD><B>Purpose</b>: v4.00 Release. Identical to <a href=rfm_upgrades_v3.html>v3.98</a>.
<p>
</DL>

<HR>

<Dl>
<DT><a href=index.html>RFM home page</a>
<DT><a href=sum.html>RFM Software User's Manual</a>
<DT><a href=rfm_bugs.html>List of known bugs</a>
</Dl>

</BODY>
</HTML>


ae  >>"4