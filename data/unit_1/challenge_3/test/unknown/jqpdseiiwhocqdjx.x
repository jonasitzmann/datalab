<HTML><HEAD><TITLE>Oxford University: AOPP: mie: mie_derivs:</TITLE>
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
<a name="top"></a><center><H2>mie_derivs.pro
</H2><hr></center>

<UL>
<LI><a href="#intro"><font color="#000099">Purpose</font></a>
<LI><a href="#pro"><font color="#000099">Calling the procedure</font></a>
<LI><a href="#limit"><font color="#000099">Limitations and dependences</font></a>
<LI><a href="#dl"><font color="#000099">Download source code</font></a>
</UL>

<a name="intro"><h3>Purpose</h3></a>

<p>The <tt>mie_derivs.pro</tt> procedure performs single particle 
Mie scattering calculations, providing the distribution of scattering 
radiation, various particle cross sections and the analytically 
derived derivatives of all calculated quantities.</p>

<p>A the derivation of expressions for the analytical derivatives 
of Mie scattering terms is covered by:<br>
Grainger, R.G., J. Lucas, G.E. Thomas, G. Ewan, "The Calculation 
of Mie Derivatives", <I>Appl. Opt.</I>, <b>43</b>(28), 5286-5393, 2004.
</p>

<a name="pro"><h3>Calling the procedure</h3></a>

<p><tt>mie_derivs.pro</tt> is an IDL procedure and can be called with the following 
command line from the IDL prompt (as long as the source file lies within your 
<tt>IDL_PATH</tt> environment variable):</p>

<p><tt>mie_derivs, x, Cm, Dqv, Qext, Qsca, dQextdx, dQextdRem, dQextdImm, $<br>
dQscadx, dQscadRem, dQscadImm, i1, i2, di1dx, di2dx, di1dRem, di1dImm, $<br>
di2dRem, di2dImm</tt>
</p>

<p>The input parameters in the above call are:
<UL>
<LI><tt>x</tt>: The particle size parameter(s). This must be a scalar float/double 
  quantity and must always be greater than zero.
<LI><tt>Cm</tt>: The complex refractive index of the particles. Only one refractive 
  index value can be used in each call to the procedure and must take the 
  form complex(a,-b) (where a is the real part of the refractive index, 
  and b is the imaginary (or absorpative) part, and is either zero or 
  negative).
<LI><tt>Dqv</tt>: The cosine of the scattering angles at which to calculate the 
  amplitude functions and phase function. This must be a float/double vector.
</UL>
The output parameters are:
<UL>
<LI><tt>Qext</tt>: The extinction efficiency.
<LI><tt>Qsca</tt>: The scattering efficiency.
<LI><tt>dQextdx</tt>: Derivative of the extinction efficiency with respect 
  to the particle size parameter.
<LI><tt>dQextdRem</tt>: Derivative of the extinction efficiency with respect 
  to the real part of the refractive index.
<LI><tt>dQextdImm</tt>: Derivative of the extinction efficiency with respect 
  to the imaginary part of the refractive index.
<LI><tt>dQscadx</tt>: Derivative of the scattering efficiency with respect 
  to the particle size parameter.
<LI><tt>dQscadRem</tt>: Derivative of the scattering efficiency with respect
  to the real part of the refractive index.
<LI><tt>dQscadImm</tt>: Derivative of the scattering efficiency with respect
  to the imaginary part of the refractive index.
</UL>
Note: All of the above output variables are scalars of type double.
<UL>
<LI><tt>i1</tt>: The first intensity function - intensity of light
  polarized in the plane perpendicular to the directions of incident light 
  propagation and observation.
<LI><tt>i2</tt>: The second intensity function - intensity of light
  polarized in the plane parallel to the directions of incident light 
  propagation and observation.
<LI><tt>di1dx</tt>: Derivative of the first intensity function with respect 
  to the particle size parameter.
<LI><tt>di2dx</tt>: Derivative of the second intensity function with respect 
  to the particle size parameter.
<LI><tt>di1dRem</tt>: Derivative of the first intensity function with 
  respect to the real part of the refractive index.
<LI><tt>di1dImm</tt>: Derivative of the first intensity function with 
  respect to the imaginary part of the refractive index.
<LI><tt>di2dRem</tt>: Derivative of the second intensity function with 
  respect to the real part of the refractive index.
<LI><tt>di2dImm</tt>: Derivative of the second intensity function with
  respect to the imaginary part of the refractive index.
</UL>
Note: All of these output variables will be vectors of type double, with 
the same number of elements as <tt>Dqv</tt>.
</p>

<a name="limit"><h3>Limitations and dependences</h3></a>

<a name="dl"><h3>Download source code</h3></a>

The source code for this routine can be downloaded in gzip form from 
<a href="mie_derivs.pro.gz">here</a>.

</body>
</TD></TR></TABLE></TD></TR></TABLE>
<TABLE WIDTH="98%" ALIGN=CENTER BORDER=0 CELLSPACING = 0 CELLPADDING=0>
<TR><TD CLASS="Left">
<FONT SIZE=-4 COLOR="#E7E7FF">last updated @15:31 GMT 29-Nov-2006</FONT></TD>
<TD CLASS="Right"><A HREF="mie_derivs_nocol.html"><FONT SIZE=-4>printable version</FONT></A></TD></TR></TABLE></TD></TR><TR><TD COLSPAN=2>
<IMG SRC="../../main/images/physics_bottom.gif"></TD></TR></TABLE></BODY></HTML>


4mn2i4gi