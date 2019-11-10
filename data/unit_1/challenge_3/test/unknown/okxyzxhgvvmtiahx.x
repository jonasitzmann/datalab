<HTML>
<HEAD>
<title>RFM User's Guide - Driver Table Sections</title>
<LINK TYPE="text/css" REL="stylesheet" HREF="rfm.css">
</HEAD>
<BODY>
<h1 class=bar>RFM Flags </h1>
<UL>
<LI><a href=#output>Output Selection</a>
<LI><a href=#special>Special Physics</a>
<LI><a href=#convolutions>Convolutions</a>
<LI><a href=#approximations>Approximations</a>
<LI><a href=#paths>Viewing Geometry</a>
</ul>
Index:
<a href=absflg.html><TT>ABS</TT></A>
<a href=avgflg.html><TT>AVG</TT></A>
<a href=bfxflg.html><TT>BFX</TT></A>
<a href=binflg.html><TT>BIN</TT></A>
<a href=bbtflg.html><TT>BBT</TT></A>
<a href=clcflg.html><TT>CLC</TT></A>
<a href=cooflg.html><TT>COO</TT></A>
<a href=crvflg.html><TT>CRV</TT></A>
<a href=ctmflg.html><TT>CTM</TT></A>
<a href=dblflg.html><TT>DBL</TT></A>
<a href=finflg.html><TT>FIN</TT></A>
<a href=flxflg.html><TT>FLX</TT></A>
<a href=fovflg.html><TT>FOV</TT></A>
<a href=fvzflg.html><TT>FVZ</TT></A>
<a href=geoflg.html><TT>GEO</TT></A>
<a href=ghzflg.html><TT>GHZ</TT></A>
<a href=graflg.html><TT>GRA</TT></A>
<a href=grdflg.html><TT>GRD</TT></A>
<a href=homflg.html><TT>HOM</TT></A>
<a href=ilsflg.html><TT>ILS</TT></A>
<a href=jacflg.html><TT>JAC</TT></A>
<a href=layflg.html><TT>LAY</TT></A>
<a href=levflg.html><TT>LEV</TT></A>
<a href=linflg.html><TT>LIN</TT></A>
<a href=losflg.html><TT>LOS</TT></A>
<a href=lunflg.html><TT>LUN</TT></A>
<a href=lutflg.html><TT>LUT</TT></A>
<a href=mixflg.html><TT>MIX</TT></A>
<a href=mtxflg.html><TT>MTX</TT></A>
<a href=nadflg.html><TT>NAD</TT></A>
<a href=newflg.html><TT>NEW</TT></A>
<a href=nteflg.html><TT>NTE</TT></A>
<a href=obsflg.html><TT>OBS</TT></A>
<a href=optflg.html><TT>OPT</TT></A>
<a href=prfflg.html><TT>PRF</TT></A>
<a href=pthflg.html><TT>PTH</TT></A>
<a href=qadflg.html><TT>QAD</TT></A>
<a href=radflg.html><TT>RAD</TT></A>
<a href=rejflg.html><TT>REJ</TT></A>
<a href=sfcflg.html><TT>SFC</TT></A>
<a href=shpflg.html><TT>SHP</TT></A>
<a href=tabflg.html><TT>TAB</TT></A>
<a href=tpsflg.html><TT>TPS</TT></A>
<a href=traflg.html><TT>TRA</TT></A>
<a href=vrtflg.html><TT>VRT</TT></A>
<a href=vvwflg.html><TT>VVW</TT></A>
<a href=widflg.html><TT>WID</TT></A>
<a href=wngflg.html><TT>WNG</TT></A>
<a href=zenflg.html><TT>ZEN</TT></A>

<h6>14SEP05</H6>
<HR>
Flags are 3-character codes entered in the 
<a href=flgsec.html><TT>*FLG</TT></A> section of the RFM
<a href=rfm_driver.html><TT>Driver Table</tt></a>. 
The presence of the Flag enables a particular option, its absence
disables it. See under each Flag for more details.

<a name=output>
<h2 class=bar>Output Selection</h2>
The following Flags control the RFM output files.

<TABLE cellpadding=2>
<TR><TH>Flag<TH align=left>Description
<TR><TD> <a href=absflg.html><tt>ABS</tt></a> <TD> Write Absorption spectra
<TR><TD> <a href=binflg.html><tt>BIN</tt></a> <TD> Write output spectra as binary files
<TR><TD> <a href=bbtflg.html><tt>BBT</tt></a> <TD> Write Brightness Temperature spectra
<TR><TD> <a href=cooflg.html><tt>COO</tt></a> <TD> Write Cooling Rate spectra
<TR><TD> <a href=dblflg.html><tt>DBL</tt></a> <TD> Write spectra with Double Precision 
<TR><TD> <a href=ghzflg.html><tt>GHZ</tt></a> <TD> Spectral units GHz rather than cm-1.
<TR><TD> <A href=jacflg.html><tt>JAC</tt></a> <TD> Write Jacobian spectra
<TR><TD> <A href=levflg.html><tt>LEV</tt></a> <TD> Intermediate outputs at specified levels
<TR><TD> <A href=losflg.html><tt>LOS</tt></a> <TD> Write Pointing Jacobian spectra
<TR><TD> <A href=lunflg.html><tt>LUN</tt></a> <TD> Re-use Logical Unit Numbers
for output spectra
<TR><TD> <A href=newflg.html><tt>NEW</tt></a> <TD> Open output files as 'NEW'
<TR><TD> <A href=optflg.html><tt>OPT</tt></a> <TD> Write Optical Depth spectra
<TR><TD> <A href=prfflg.html><tt>PRF</tt></a> <TD> Write out internal profile
<TR><TD> <A href=pthflg.html><tt>PTH</tt></a> <TD> Write Ray Path diagnostics
<TR><TD> <a href=radflg.html><tt>RAD</tt></a> <TD> Write Radiance spectra
<TR><TD> <a href=tabflg.html><tt>TAB</tt></a> <TD> Write tabulated absorption coefficients
<TR><TD> <a href=traflg.html><tt>TRA</tt></a> <TD> Write Transmission spectra
<TR><TD> <a href=widflg.html><tt>WID</tt></a> <TD> Write Widemesh diagnostics
</TABLE>

<a name=special>
<h2 class=bar>Special Physics</h2>
The following Flags apply non-standard physical processes

<TABLE cellpadding=2>
<TR><TH>Flag<TH align=left>Description
<TR><TD> <a href=ctmflg.html><tt>CTM</tt></a> <TD> Include Continuum absorption
<TR><TD> <a href=mixflg.html><tt>MIX</tt></a> <TD> Include Line-mixing
<TR><TD> <a href=mtxflg.html><tt>MTX</tt></a> <TD> Matrix output (with Flux calculations)
<TR><TD> <a href=nteflg.html><tt>NTE</tt></a> <TD> Use non-LTE calculations
<TR><TD> <a href=qadflg.html><tt>QAD</tt></a> <TD> Quadratic fit for line wings
<TR><TD> <a href=shpflg.html><tt>SHP</tt></a> <TD> Use non-Voigt line shapes
<TR><TD> <a href=vvwflg.html><tt>VVW</tt></a> <TD> Apply VVW correction to line shapes
</TABLE>


<a name=convolutions>
<h2 class=bar>Convolutions</h2>
The following Flags apply convolutions to output spectra

<TABLE cellpadding=2>
<TR><TH>Flag<TH align=left>Description
<TR><TD> <A href=avgflg.html><tt>AVG</tt></a> <TD> Spectrally averaged output
<TR><TD> <A href=fovflg.html><tt>FOV</tt></a> <TD> Convolve with field-of-view
<TR><TD> <A href=fvzflg.html><tt>FVZ</tt></a> <TD> Treat FOV function as representing
<i>refracted</I> altitudes rather than <i>projected</i> altitudes 
<TR><TD> <A href=ilsflg.html><tt>ILS</tt></a> <TD> Convolve with instrument line-shape
</TABLE>


<a name=approximations>
<h2 class=bar>Approximations</h2>
The following Flags control numerical approximations

<TABLE cellpadding=2>
<TR><TH>Flag<TH align=left>Description
<TR><TD> <a href=clcflg.html><tt>CLC</tt></a> <TD> Calculate absorption
coefficients for every path segment
<TR><TD> <a href=finflg.html><tt>FIN</tt></a> <TD> User-specified fine mesh resolution 
<TR><TD> <a href=grdflg.html><tt>GRD</tt></a> <TD> Use Irregular Grid for calculations
<TR><TD> <a href=lutflg.html><tt>LUT</tt></a> <TD> Use Look-Up Tables for Absorption Coefficients
<TR><TD> <a href=rejflg.html><tt>REJ</tt></a> <TD> Implement line rejection
<TR><TD> <A href=tpsflg.html><tt>TPS</tt></a> <TD> Use tabulated TIPS functions
<TR><TD> <A href=wngflg.html><tt>WNG</tt></a> <TD> Use far-wing cut off for lines
</TABLE>


<a name=paths>
<h2 class=bar>Ray Paths</h2>
The following Flags control the ray paths and viewing geometry

<TABLE cellpadding=2>
<TR><TH>Flag<TH align=left>Description
<TR><TD> <a href=bfxflg.html><tt>BFX</tt></a> <TD> Use Planck v. optical depth in layers 
<TR><TD> <a href=crvflg.html><tt>CRV</tt></a> <TD> User-specified Local Radius of Curvature 
<TR><TD> <a href=flxflg.html><tt>FLX</tt></a> <TD> Flux-type calculations (over solid
angle)  
<TR><TD> <a href=geoflg.html><tt>GEO</tt></a> <TD> Use geometric (cf.refracted) ray paths
<TR><TD> <a href=graflg.html><tt>GRA</tt></a> <TD> Assume horizontal gradients (2D atmosphere)
<TR><TD> <a href=homflg.html><tt>HOM</tt></a> <TD> Perform Homogeneous path calculation
<TR><TD> <a href=layflg.html><tt>LAY</tt></a> <TD> Automatic sub-layering of profiles
<TR><TD> <a href=linflg.html><tt>LIN</tt></a> <TD> Assume VMR varies linearly with
altitude 
<TR><TD> <A href=nadflg.html><tt>NAD</tt></a> <TD> Nadir-viewing 
<TR><TD> <A href=obsflg.html><tt>OBS</tt></a> <TD> Specify Observer Location <TR><TD> <A href=sfcflg.html><tt>SFC</tt></a> <TD> Specify surface characteristics
<TR><TD> <A href=vrtflg.html><tt>VRT</tt></a> <TD> Flux-type calculations without solid-angle
integration 
<TR><TD> <A href=zenflg.html><tt>ZEN</tt></a> <TD> Zenith-viewing
</table>

<HR>
<UL>
<LI><a href=index.html>Back to Software User's Manual Contents</a>
</UL>
</BODY>
</HTML>


0l.>_ (deladlr 