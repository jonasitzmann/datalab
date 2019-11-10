<HTML><HEAD><TITLE>Oxford University: AOPP: mie: mie_lognormal:</TITLE>
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
        LI.Small {font-size: 8pt;}

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

        A.LeftMenu {font-weight: normal; font-size: 10pt;
        text-decoration : none; color: #ffffff; font-weight: bold;
        font-family: Verdana, Arial, Helvetica, San-Serif;
        line-height: 1.5;}
        A.LeftMenu:link { color: #ffffff;}
        A.LeftMenu:visited { color: #ffffff;}
        A.LeftMenu:hover { color: #000099; background: #FFFFFF;}

        A.LeftMenuInsert {font-weight: normal; font-size: 8pt;
        text-decoration : none; color: #ffffff; font-weight: bold;
        font-family: Verdana, Arial, Helvetica, San-Serif;
        line-height: 1.1;}
        A.LeftMenuInsert:link { color: #ffffff;}
        A.LeftMenuInsert:visited { color: #ffffff;}
        A.LeftMenuInsert:hover { color: #000099; background: #FFFFFF;}

        A.LeftMenuReplace {font-weight: normal; font-size: 8pt;
        text-decoration : none; color: #0000c4; font-weight: bold;
        font-family: Verdana, Arial, Helvetica, San-Serif;
        line-height: 1.1;}
        A.LeftMenuReplace:link { color: #e7e7ff;}
        A.LeftMenuReplace:visited { color: #e7e7ff;}

        A.TopMenu {font-weight: normal; font-size: 7pt;
        text-decoration : none; color: #000079; font-weight: bold;
        font-family: Arial, Helvetica, San-Serif;}
        A.TopMenu:link { color: #000079; text-decoration:none;}
        A.TopMenu:visited { color: #000079; text-decoration:none;}
        A.TopMenu:hover { color: #000000; text-decoration:underline;}

-->
</STYLE></HEAD><BODY>
<TABLE CELLPADDING=0 CELLSPACING=0 BORDER=0 BGCOLOR="#FFFFFF">
<TR><TD WIDTH=142 ROWSPAN=2 CLASS="Bottomright">
<A HREF="http://www.physics.ox.ac.uk">
<IMG BORDER=0 ALT="Oxford Physics" SRC="../../main/images/OxPhysics.gif"></A></TD>
<TD WIDTH=16 HEIGHT=60></TD><TD WIDTH=560 CLASS="Middle">
<TABLE WIDTH=560 BORDER=0 CELLPADDING=5 CELLSPACING=1 BGCOLOR="#0000C4"><TR>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="../../main/default/index.html">HOME</A></TD>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="http://www.physics.ox.ac.uk">Oxford Physics</A></TD>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="http://www.ox.ac.uk">Oxford University</A></TD>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="../../weather">Live Weather</A></TD>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="../../main/dept/gettinghere.html">Getting here</A></TD>
<TD CLASS="TopMenu">
<A CLASS="TopMenu" HREF="../../main/dept/contact.html">Contact</A></TD>
</TR></TABLE></TD></TR>
<TR><TD COLSPAN=2><IMG SRC="../../main/images/physics_banner.gif"></TD></TR><TR>
<TD COLSPAN=2><IMG SRC="../../main/images/physics_top.gif"></TD><TD></TD></TR><TR>
<TD COLSPAN=2 BGCOLOR="#000099">
<TABLE  CELLPADDING=0 CELLSPACING=0 BORDER=0 >
<TR><TD WIDTH=32></TD><TD WIDTH=126 CLASS="Top">
<BR><A HREF="index.html" CLASS="LeftMenu">Introduction</A>
<BR><A HREF="mie_single.html" CLASS="LeftMenu">&nbsp; <font size=-1>mie_single</font></A>
<BR><A HREF="mie_lognormal.html" CLASS="LeftMenu">&nbsp; <font size=-1>mie_lognormal</font></A>
<BR><A HREF="mie_derivs.html" CLASS="LeftMenu">&nbsp; <font size=-1>mie_derivs</font></A>
<BR><A HREF="mie_derivs_ln.html" CLASS="LeftMenu">&nbsp; <font size=-1>mie_derivs_ln</font></A>
<BR><A HREF="mie_dlm_single.html" CLASS="LeftMenu">&nbsp; <font size=-1>mie_dlm_single</font></A>
<BR><A HREF="mieext_f.html" CLASS="LeftMenu">&nbsp; <font size=-1>mieext_f</font></A>
<BR><A HREF="http://www.atm.ox.ac.uk" CLASS="LeftMenu">AOPP home</A>
<BR><A HREF="mailto:gthomas@atm.ox.ac.uk" CLASS="LeftMenu">Contact</A>
<BR><BR></TD></TR><TR><TD COLSPAN=2><CENTER>
<A HREF="http://www.ox.ac.uk"><IMG SRC="../../main/images/webshield.gif" BORDER=0 ALT="UNIVERSITY HOME"></A></CENTER></TD></TR><TR><TD></TD><TD>
</TD></TR></TABLE></TD><TD>
<TABLE CELLSPACING=5 CELLPADDING=0 BGCOLOR="#FFFFFF" BORDER=0 WIDTH=560>
<TR><TD>
<TABLE CELLSPACING=1 CELLPADDING=5 BGCOLOR="#C4C4C4" BORDER=0 WIDTH=550>
<TR><TD HEIGHT=300 BGCOLOR="#FFFFFF">
<a name="top"></a><center><H2>mie_lognormal.pro
</H2><hr></center>

<UL>
<LI><a href="#intro"><font color="#000099">Purpose</font></a>
<LI><a href="#pro"><font color="#000099">Calling the procedure</font></a>
<LI><a href="#limit"><font color="#000099">Limitations and dependences</font></a>
<LI><a href="#dl"><font color="#000099">Download source code</font></a>
</UL>

<a name="intro"><h3>Purpose</h3></a>

<p>The <tt>mie_lognormal.pro</tt> routine performs Mie scattering calculations on a
lognormal distribution of particles of a given refractive index. As with
<a href="mie_single.html"><tt>mie_single.pro</tt></a>, it returns the distribution of
scattered radiation, along with various particle cross sections and the
asymmetry parameter.</p>

<a name="pro"><h3>Calling the procedure</h3></a>

<p><tt>mie_lognormal.pro</tt> is an IDL procedure and can be called with the following
command line from the IDL prompt (as long as the source file lies within your
<tt>IDL_PATH</tt> environment variable):</p>

<p><tt>mie_lognormal, Nd, Rm, Sg, Wavenumber, Cm, [Dqv=dqv], [dlm=dlm], [npts=npts], [xres=xres] Bext, Bsca, w, g, ph, [info=info]</tt>
</p>

<p>The input parameters in the above call are:
<UL>
<LI><tt>Nd</tt>: The number density of particles in the distribution. This
  value must be a scalar quantity greater than zero.
<LI><tt>Rm</tt>: The median radius of the distribution. This must also be a
  positive scalar.
<LI><tt>Sg</tt>: The spread of the distribution, where is is defined
  so that the standard deviation of ln(radius) is ln(S).
<LI><tt>Wavenumber</tt>: The wavenumber of the incident radiation. This must
  be a positive scalar and it's units should match those of <tt>Rm</tt> (i.e. if
  <tt>Rm</tt> is in microns, <tt>Wavenumber</tt> should be in 1/microns).
<LI><tt>Cm</tt>: The complex refractive index of the particles. Only one
  refractive index value can be used in each call to the procedure and must
  take the form complex(a,-b) (where a is the real part of the refractive
  index, and b is the imaginary (or absorpative) part, and is either zero or
  negative).
<LI><tt>Dqv=dqv</tt>: This is an optional keyword parameter which specifies
  the cosine of the scattering angles at which to calculate the phase function.
  If specified it must be either a scalar quantity, or a vector of such values.
<LI><tt>dlm=dlm</tt>: If set the IDL DLM version of <a href="mie_single.html"><tt>mie_single</tt></a> (<a href="mie_dlm_single.html"><tt>mie_dlm_single</tt></a>) will be used instead of the IDL coded version. Note: This requires the DLM to be set up on your system!
<LI><tt>npts=npts</tt>: If set, this keyword overrides the default calculation of the quadrature points (which provides points at 0.1 spacing in the size parameter). <b>Note:</b> Great care should be taken when using this keyword, as reducing the number of quadrature points will decrease the accuracy of the result.</LI>
<LI><tt>xres=xres</tt>: This is similar to the <tt>npts</tt> keyword, accept that it sets the spacing (in the size parameter) of the quadrature points, overiding the default value of 0.1. This keyword is itself overidden by the <tt>npts</tt> keyword. <b>Note:</b> Great care should be taken when using this keyword, as reducing the number of quadrature points will decrease the accuracy of the result.</LI>
</UL>
The output parameters are:
<UL>
<LI><tt>Bext</tt>: The total extinction coefficient of the distribution. This will be a scalar of type double and the units will be determined by those of number density and particle size (see href="index.html#nb2").
<LI><tt>Bsca</tt>: The total scattering coefficient of the distribution. This is of the same
  type and size, and will have the same units as <tt>Bext</tt>.
<LI><tt>w</tt>: The single scatter albedo of the distribution. This is of the
  same type and size as <tt>Bext</tt>.
<LI><tt>g</tt>: The asymmetry parameter. Again, this is of the same type and
  size as <tt>Bext</tt>.
<LI><tt>Dph</tt>: The phase function. This will only be calculated if
  <tt>Dqv</tt> is specified is of type double and has the same dimensions as
  <tt>Dqv</tt>.
<LI>info=info</LI>: If set this keyword returns a structure containing the parameters used in the quadrature. The structure has three members: info.npts = number of quadrature points used, info.minsize = minimum size parameter, info.maxsize = maximum size parameter.
</UL>
</p>

<a name="limit"><h3>Limitations and dependences</h3></a>

<p>This procedure calls the <a href="mie_single.html">
<tt>mie_single.pro</tt></a> procedure or the <a href="mie_dlm_single.html">
<tt>mie_dlm_single</tt></a> DLM. As a result of this, any distribution
that contains particles with size parameters greater than 12000 will result
in the programme truncating the upper end of the distribution and giving the
warning message "<tt>mie_lognormal: Warning! Radius upper bound truncated to
avoid size parameter overflow.</tt>".</p>

<p>This procedure also calls the <a href="quadrature.pro.gz">
<tt>quadrature.pro</tt></a> and <a href="shift_quadrature.pro.gz"><tt>shift_quadrature.pro</tt></a> procedures (click to download). Quadrature is called with the command line:<br>
<tt>quadrature, 'g', Npts, abs, wght</tt><br>
the string <tt>'g'</tt> can be either <tt>'g'</tt> for Gaussian quadrature,
<tt>'l'</tt> for Lobatto quadrature, <tt>'r'</tt> for Radau quadrature, <tt>'s'</tt> for Simson's rule or <tt>'t'</tt> for the Trapezium rule. <tt>Npts</tt> specifies the number of quadrature points required and the routine returns the abscissa and weighting values in <tt>abs</tt> and <tt>wght</tt> respectively.</p>
<p><tt>shift_quadrature.pro</tt> is called with the command line:<br>
<tt>shift_quadrature,abscissa,weights,A,B,new_abscissa,new_weights</tt><br>
and simply transforms the <tt>abscissa</tt> and <tt>weights</tt> from the interval <tt>[-1,1]</tt> to <tt>[A,B]</tt>, place the new values in <tt>new_abscissa</tt> and <tt>new_weights</tt>.
</p>

<a name="dl"><h3>Download source code</h3></a>

The source code for this routine can be downloaded in gzip form from
<a href="mie_lognormal.pro.gz">here</a>.<br>
Also available:<br>
<a href="mie_single.pro.gz"><tt>mie_single.pro.gz</tt></a>.<br>
<a href="quadrature.pro.gz"><tt>quadrature.pro.gz</tt></a>.<br>
<a href="shift_quadrature.pro.gz"><tt>shift_quadrature.pro.gz</tt></a><br>
<a href="mie_dlm_single.tgz"><tt>mie_dlm_single</tt></a>.<br>

</body>
</TD></TR></TABLE></TD></TR></TABLE>
<TABLE WIDTH="98%" ALIGN=CENTER BORDER=0 CELLSPACING = 0 CELLPADDING=0>
<TR><TD CLASS="Left">
<FONT SIZE=-4 COLOR="#E7E7FF">last updated @15:31 GMT 29-Nov-2006</FONT></TD>
<TD CLASS="Right"><A HREF="mie_lognormal_nocol.html"><FONT SIZE=-4>printable version</FONT></A></TD></TR></TABLE></TD></TR><TR><TD COLSPAN=2>
<IMG SRC="../../main/images/physics_bottom.gif"></TD></TR></TABLE></BODY></HTML>


, cftt t<tdt