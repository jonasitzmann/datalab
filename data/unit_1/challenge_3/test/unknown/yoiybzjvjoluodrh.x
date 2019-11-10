<HTML><HEAD><TITLE>Oxford University: AOPP: mie: index:</TITLE>
<STYLE TYPE="text/css">
<!--
        H1,H2,H3,H4 {font-weight: bold; text-align: left;
        vertical-align: top; color: #000099;}
        H1 {font-size: 20pt;}
        H2 {font-size: 12pt;}
        H3 {font-size: 10pt;}
        H4 {font-size: 8pt;}

        BODY,P,TD {font-weight: normal; font-size: 10pt;
        text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #555555;}
        A {font-weight: normal; font-size: 10pt; text-decoration : none;
        font-family: Arial, Helvetica, Sans-Serif; color: #5555ff;}
        P.Small {font-size: 8pt;}

        STRONG {color: #000099}

        TABLE,TR,TD {vertical-align: top; }
        TABLE,TR,TD {text-align: left;}
        TD.Bottom {vertical-align: bottom;}
        TD.Bottomright {vertical-align: bottom; text-align: right;}
        TD.Middle {vertical-align: middle;}
        TD.Center {text-align: center;}
        TD.Right {text-align: right;}
        TD.TopMenu {text-align: center; vertical-align: middle;
        background-color:#E7E7FF}

        A:link { color: #5555ff; }
        A:visited { color: #0000aa; }
        A:hover { color: #0000ff; }
        A.Small {font-size: 8pt}

-->
</STYLE></HEAD><BODY>

<a name="top"></a><center><H2>Light scattering routines
</H2><hr></center>

<UL>
<LI><a href="#intro"><font color="#000099">Introduction</font></a>
<LI><a href="#news"><font color="#000099">News and developments</font></a>
<LI><a href="#list"><font color="#000099">A list of available routines</font></a>
<LI><a href="#nb"><font color="#000099">A note on notation</font></a>
<LI><a href="#nb2"><font color="#000099">A note on units</font></a>
</UL>

<a name="intro"><h3>Introduction</h3></a>

<p>This page provides descriptions of and access to a comprehensive
set of routines for the calculation of light scattering parameters by
aerosol particles. Most of the code is written in the IDL language,
but there is also a FORTRAN routine available.</p>

<p>The IDL code is available in the directory:<br>
<tt>/home/crun/eodg/idl/mie</tt><br>
and is accessible to all users of the AOPP Unix system. In order to be
able to run the IDL code from it's present location you will have to
ensure this location is included in your <tt>IDL_PATH</tt> environment
variable, i.e. add the following line at the end of your <tt>.login</tt>
file:<br>
<tt> setenv IDL_PATH $IDL_PATH:/home/crun/eodg/idl/mie</tt>.<br>
Alternatively,<br>
<tt> setenv IDL_PATH $IDL_PATH:+/home/crun/eodg/idl</tt><br>
will give you access to all the IDL code within this directory and
its sub-directories.</p>

<p>Please note that this archive is still in the process of being
put together, so don't expect everything to work perfectly just yet.</p>

<a name="news"><h3>News and developments</h3></a>

<p><font color="#000099">22/11/06:</font><br>
Both <tt>mie_single.pro</tt> and <tt>mie_dlm_single</tt> have been updated. Both now calculate the backscattering efficiency from the An and Bn functions directly, rather than from the intensity at 180 degrees and will return a value even when the <tt>Dqv</tt> keyword is not set. Additionally, <tt>mie_single.pro</tt> has a small bug fix which makes passing Dqv when using the <tt>DLM</tt> keyword work properly</p>
<p><font color="#000099">9/05/05:</font><br>
New versions of the procedures for log-normal particle distributions (<tt>mie_lognormal.pro</tt> and <tt>mie_derivs_ln.pro</tt>) have been developed. These new versions make use of a much more accurate method for determining the quadrature points for the integration over particle size.<br>
Also, a new version of the mie_dlm_single is available. This new version no longer returns the phase function, as this was causing random segmentation faults for some reason. The phase function can still be calculated from the two complex scattering functions <tt>s1</tt> and <tt>s2</tt>. Additionally, the maximum number of scattering angles which can be passed to the routine has been increased to 10,000.
<p><font color="#000099">11/04/05:</font><br>
New versions of <tt>mie_single.pro</tt> and <tt>mie_lognormal.pro</tt> have been written that use a <tt>dlm</tt> keyword to allow the use of the new DLM. In addition, <tt>mie_single.pro</tt> now returns the correct value of the backscatter coefficient regardless of whether the <tt>Dqv</tt> is set or not.
<p><font color="#000099">30/03/05:</font><br>
A DLM version of <tt>mie_single</tt> has been added. This offers considerable
speed advantages over the IDL coded version.</p>
<p><font color="#000099">1/10/04:</font><br>
The algorithm used in <tt>mie_derivs.pro</tt> and <tt>mie_derivs_ln.pro</tt> has been published: Grainger <i>et al.</i>, "Calculation of Mie Derivatives", <i>Appl. Opt.</i>, 43(28): 5386-5393, <b>2004</b>.
<p><font color="#000099">17/02/04:</font><br>
<tt>mie_derivs.pro</tt> and <tt>mie_single</tt> have been updated so that double
precision floating point numbers are explicitly used in all
calculations. In the case of <tt>mie_derivs.pro</tt> in particular, this
results in a considerable improvement in accuracy for very large
particle sizes. Thanks to Dr James Graham (University of California,
Berkeley) for suggesting this improvement.</p>

<a name="list"><h3>A list of available routines</h3></a>

<p>The routines currently available are given below. Click on the
programme name to see a full description. Each individual routine can
be downloaded separately or a tar-gzip archive of all routines is
available <a href="mie_all.tgz">here</a>.</p>

<center><table cols=3 width="90%" border=2>
<tr>
<td align=center width="20%">Name</td>
<td align=center width="15%">Type</td>
<td align=center>Description</td>
</tr>
<tr>
<td align=center><a href="mie_single.html"><tt>mie_single.pro</tt></a></td>
<td align=center>IDL procedure</td>
<td align=left>Computes scattering parameters for single
  particle, Mie scattering. Accepts an array of particle size
  parameters and returns the scattering parameters for each one
  individually.</td>
<tr>
<td align=center><a href="mie_lognormal.html"><tt>mie_lognormal.pro</tt></a></td>
<td align=center>IDL procedure</td>
<td align=left>Computes the scattering parameters for a lognormal
  distribution of particles using Mie scattering.</td>
</tr>
<tr>
<td align=center><a href="mie_derivs.html"><tt>mie_derivs.pro</tt></a></td>
<td align=center>IDL procedure</td>
<td align=left>Uses Mie scattering to compute the scattering
  parameters and their derivatives (<em>analytically</em>)
  for a single particle.</td>
</tr>
<tr>
<td align=center><a href="mie_derivs_ln.html"><tt>mie_derivs_ln.pro</tt></a></td>
<td align=center>IDL procedure</td>
<td align=left>Uses Mie scattering to compute the scattering
  parameters and their derivatives (<em>analytically</em>)
  for aerosols with a log normal size distribution .</td>
</tr>
<tr>
<td align=center><a href="mie_dlm_single.html"><tt>mie_dlm_single DLM</tt></a></td>
<td align=center>IDL DLM procedure</td>
<td align=left>Calls an IDL DLM version of the mie_single
routine. <i>Much</i> faster than the IDL only version!</td>
</tr>
<tr>
<td align=center><a href="mieext_f.html"><tt>mieext_f.pro</tt></a></td>
<td align=center>IDL procedure</td>
<td align=left>Calls a compiled FORTRAN version of the basic mie
  code (similar to <tt>mie_single.pro</tt>) using the IDL CALL_EXTERNAL
  function. Works on both x86 and Alpha architectures. Requires
  <tt>mieext_alpha.so</tt> or <tt>mieext_x86.so</tt></td>
</tr>
</table></center>

<a name="nb"><h3>A note on notation</h3></a>
<p>
The notation used in describing the properties of a log normal distribution
in these pages (and the associated routines) is as follows. A log normal
distribution is described by the equation:<br>
<center><img SRC="log_normal_eqn.png" border=0></center><br>
where:<br>
<img SRC="n.png" border=0 align=middle> (or n(r)) = the number density of
  particles as a function of radius,<br>
<img SRC="No.png" border=0 align=middle> (or No) = the total number density
  of particles,<br>
<img SRC="r.png" border=0 align=middle> (or r) = particle radius,<br>
<img SRC="rm.png" border=0 align=middle> (or rm) = the MEDIAN particle radius
  of the distribution,<br>
<img SRC="S.png" border=0 align=middle> (or S) = the SPREAD of the distribution
  where standard deviation of the radius in log space is equal to the log of
  S. i.e.<br>
<center><img SRC="def_S.png" border=0></center><br>
In both routines involving log normal distributions available here, No, rm
and S are used to define the distribution described above.
</p>

<a name="nb2"><h3>A note on units</h3></a>
<p>
This code has been written so that it containes no assumptions about the units
of input or output variables. Thus, to it is up to the user to work out the units
of the output variables from the units of their inputs.<br>
This approach, while ensuring the code is flexible and self consistent, can lead
to some traps for the unwary. For example, if one uses the mie_lognormal routine
to calculate the extinction coefficient and assumes typical units for particle
radius (i.e. microns) and particle number density (i.e. number per cm^3), the units
of the resulting extinction coefficient will be:<br>
<center><img SRC="units.png" border=0 align=middle></center><br>
In otherwords, you'd be a factor of 1000 off if you were to assume that the
extinction was being returned in the more standard units of 1/km.<br>
You have been warned!
</p>

<p>Maintained by <a href="mailto:gthomas@atm.ox.ac.uk">Gareth Thomas</a></p>

</body>

</BODY></HTML>


/: coiay o	<as: