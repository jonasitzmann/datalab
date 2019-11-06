From r-help-bounces@stat.math.ethz.ch  Mon Jun  4 21:27:18 2007
Return-Path: <r-help-bounces@stat.math.ethz.ch>
Received: from hypatia.math.ethz.ch (hypatia.math.ethz.ch [129.132.145.15])
	by flax9.uwaterloo.ca (8.12.8/8.12.5) with ESMTP id l551RGhB002447
	for <ktwarwic@flax9.uwaterloo.ca>; Mon, 4 Jun 2007 21:27:17 -0400
Received: from hypatia.math.ethz.ch (hypatia [129.132.145.15])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l551Pl5M031037;
	Tue, 5 Jun 2007 03:26:02 +0200
X-Spam-Checker-Version: SpamAssassin 3.2.0 (2007-05-01) on hypatia.math.ethz.ch
X-Spam-Level: 
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_50, DKIM_POLICY_SIGNSOME,
	RCVD_IN_PBL autolearn=no version=3.2.0
Received: from sr06-01.mta.terra.com.br (sr06-01.mta.terra.com.br
	[200.154.152.70])
	by hypatia.math.ethz.ch (8.13.6/8.13.6) with ESMTP id l551P93t030922
	for <r-help@stat.math.ethz.ch>; Tue, 5 Jun 2007 03:25:10 +0200
Received: from quebec.hst.terra.com.br (quebec.hst.terra.com.br
	[200.176.10.31])
	by burta.hst.terra.com.br (Postfix) with ESMTP id 7B14D1EC40DD
	for <r-help@stat.math.ethz.ch>; Mon,  4 Jun 2007 22:25:07 -0300 (BRT)
X-Terra-Karma: 0%
X-Terra-Hash: 6569cb64523dde45baef2d58af66feda
Received-SPF: pass (quebec.hst.terra.com.br: domain of terra.com.br designates
	200.176.10.31 as permitted sender) client-ip=200.176.10.31;
	envelope-from=joseclaudio.faria@terra.com.br; helo=multidominios;
Received: from multidominios (bimbaia.hst.terra.com.br [200.176.3.179])
	(authenticated user joseclaudio.faria)
	by quebec.hst.terra.com.br (Postfix) with ESMTP id 6F26568107
	for <r-help@stat.math.ethz.ch>; Mon,  4 Jun 2007 22:25:06 -0300 (BRT)
Date: Mon,  4 Jun 2007 22:25:06 -0300
Message-Id: <JJ52LU$B66089CD83CF720735871C984F3E03AF@multidominios>
MIME-Version: 1.0
X-Sensitivity: 3
From: "joseclaudio\.faria" <joseclaudio.faria@terra.com.br>
To: "r-help" <r-help@stat.math.ethz.ch>
X-XaM3-API-Version: 4.1 (B115)
X-SenderIP: 201.95.126.219
X-Virus-Scanned: by amavisd-new at stat.math.ethz.ch
X-MIME-Autoconverted: from quoted-printable to 8bit by hypatia.math.ethz.ch id
	l551P93t030922
Subject: [R] biplot package
X-BeenThere: r-help@stat.math.ethz.ch
X-Mailman-Version: 2.1.9
Precedence: list
List-Id: "Main R Mailing List: Primary help" <r-help.stat.math.ethz.ch>
List-Unsubscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=unsubscribe>
List-Archive: <https://stat.ethz.ch/pipermail/r-help>
List-Post: <mailto:r-help@stat.math.ethz.ch>
List-Help: <mailto:r-help-request@stat.math.ethz.ch?subject=help>
List-Subscribe: <https://stat.ethz.ch/mailman/listinfo/r-help>,
	<mailto:r-help-request@stat.math.ethz.ch?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Sender: r-help-bounces@stat.math.ethz.ch
Errors-To: r-help-bounces@stat.math.ethz.ch
Content-Transfer-Encoding: 8bit
X-MIME-Autoconverted: from quoted-printable to 8bit by flax9.uwaterloo.ca id l551RGhB002447

Dears,

I've been learning biplot (Gabriel, 1971) and I found the function 'biplot', inside of the package 'stats',
useful but, a bit limited.

So, I'm thinking to start a colaborative package to enhance this methods to other multivariate methods. In this
way, I would like to start it, making public a new function (biplot.pca, still in development, but running)
that make biplot more simple and power.

All users are free to modify and make it better.
Below the function and a small script to learn it.

#===============================================================================
# Name           : biplot.pca
# Author         : Jos� Cl�udio Faria (DCET/USC/BRAZIL)
# Date (dd/mm/yy): 4/6/2007 08:27:54
# Version        : v3
# Aim            : 2D and 3D (under scaterplot3d and rgl packages) PCA biplot
# Mail           : joseclaudio.faria@terra.com.br
#===============================================================================
# Arguments:
# x             Data (frame or matrix).
# center        Either a logical value or a numeric vector of length equal
#               to the number of columns of x (TRUE is the default).
# scale         Either a logical value or a numeric vector of length equal
#               to the number of columns of x (FALSE is the default).
# weight        Way of factorize ('equal' is the default).
# plot          Logical to produce or not a graphical representation of
#               biplot (TRUE is the default).
# rgl.use       If TRUE the 3D scatter will be under the rgl environment, in
#               another way the scatterplot3d will be used.
# aspect3d      Apparent ratios of the x, y, and z axes of the bounding box
# clear3d       Logical to clear or not a 3D graphical representation of
#               biplot before to make a new (TRUE is the default).
# simple.axes   Whether to draw simple axes (TRUE or FALSE).
# box           Whether to draw a box (the default is FALSE).
# spheres       Logical to represent objects as spheres (the default is FALSE).
# sphere.factor Relative size factor of spheres representing points; the
#               default size is dependent on the scale of observations.
# col.obj       Color of spheres or labels of objects.
# col.var       Color of lines and labels of variables.
# var.red       Factor of reduction of the length of the lines of variables.
#               graphical variables representation (<=1, 1 is the default).
# cex           Character expansion.

biplot.pca = function (x,
                       n.values=2,
                       center=T,
                       scale=F,
                       weight=c('equal', 'samples', 'variables'),
                       plot=T,
                       rgl.use=T,
                       aspect3d=c(1, 1, 1),
                       clear3d=T,
                       simple.axes=T,
                       box=F,
                       spheres=T,
                       sphere.factor=1,
                       col.obj=1,
                       col.var=2,
                       var.red=1,
                       cex=.6 )
{
  x  = as.matrix(x)
  x  = scale(x, center=center, scale=scale)
  if(is.null(rownames(x))) rownames = 1:nrow(x) else rownames = rownames(x)
  if(is.null(colnames(x))) colnames = paste('V', 1:ncol(x), sep='') else colnames = colnames(x)
  s  = svd(x)
  s2 = diag(sqrt(s$d[1:n.values]))
  #s2 = diag(s$d[1:n.values]) pca of pcurve is like this!?
  switch(match.arg(weight),
    equal = {
      g  = s$u[,1:n.values] %*% s2
      h  = s2 %*% t(s$v[,1:n.values])
      hl = t(h)
    },
    samples = {
      g  = s$u[,1:n.values] %*% s2
      h  = t(s$v[,1:n.values])
      hl = t(h)
    },
    variables = {
      g  = s$u[,1:n.values]
      h  = s2 %*% t(s$v[,1:n.values])
      hl = t(h)
    })
  gencolnames   = paste('PC', 1:n.values, sep='')
  rownames(g)   = rownames
  colnames(g)   = gencolnames
  rownames(hl)  = colnames
  colnames(hl)  = gencolnames
  coo           = rbind(g, hl)
  rownames(coo) = c(rownames, colnames)
  colnames(coo) = gencolnames
  cooplot       = rbind(g, hl*var.red)
  cooplot       = rbind(cooplot, rep(0, n.values)) # to correct visualization
  if(plot) {
    if(n.values == 2) {
      plot(cooplot,
           xlab='PC1', ylab='PC2',
           type='n')
      text(x=g[,1], y=g[,2],
           labels=rownames(g),
           cex=cex, col=col.obj)
      arrows(x0=0, y0=0,
             x1=hl[,1]*var.red, y1=hl[,2]*var.red,
             length=0.1, angle=20,
             col=col.var)
      text(x=hl[,1]*var.red, y=hl[,2]*var.red,
           labels = rownames(hl),
           cex=cex, col=col.var)
    }
    if(n.values == 3) {
      if (rgl.use) {
        require(rgl)
        require(mgcv)
        size = max(g)/20 * sphere.factor
        if (clear3d) clear3d()
        if (spheres)
          spheres3d(g, col=col.obj, radius=size, alpha=.5)
        else
          text3d(g, texts=rownames(g), col=col.obj, alpha=.5)
        aspect3d(aspect3d)
        for(i in 1:nrow(hl)) {
          segments3d(rbind(matrix(0, nc=3),
                     hl[i,]*var.red),
                     col=col.var)
        }
        text3d(hl*var.red,
               texts=rownames(hl),
               col=col.var)
        if(simple.axes) {
          axes3d(c('x', 'y', 'z'))
        }
        else
          decorate3d(xlab = 'PC1', ylab = 'PC2', zlab = 'PC3', box = box)
        title3d(xlab = 'PC1', ylab = 'PC2', zlab = 'PC3')
      } else {
        require(scatterplot3d)
        graph = scatterplot3d(cooplot,
                              type = if(spheres) 'p' else 'n',
                              xlab='PC1', ylab='PC2', zlab='PC3',
                              grid=F,
                              box=box,
                              cex.symbols=cex,
                              color=col.obj,
                              pch=20)
         if(!spheres)
           text(graph$xyz.convert(g),
                labels=rownames(g),
                col=col.obj, cex=cex)
        for(i in 1:nrow(hl)) {
          graph$points3d(c(0, hl[i,1]*var.red),
                         c(0, hl[i,2]*var.red),
                         c(0, hl[i,3]*var.red),
                         type='l', col=col.var)
        }
        text(graph$xyz.convert(hl*var.red),
             labels=rownames(hl),
             col=col.var, cex=cex)
      }
    }
  }
  rlist = list(values=s$d,
               objects=g,
               variables=hl,
               all=coo)
}


#===============================================================================
# Name           : biplot.pca_test
# Author         : Jos� Cl�udio Faria (DCET/USC/BRAZIL)
# Date (dd/mm/yy): 4/6/2007 08:27:54
# Version        : v3
# Aim            : to learn and to test the new 'biplot.pca' function
# Mail           : joseclaudio.faria@terra.com.br
#===============================================================================

#mtrace(biplot.pca, T)
#mtrace(biplot.pca, F)

#�������������������
# 2D with graphics package
#�������������������
#x = matrix(c(42, 52, 48, 58, 4, 5, 4, 3), nc=2); x
#dimnames(x) = list(letters[1:nrow(x)], LETTERS[1:ncol(x)]); x
#x = stackloss; x
#x = cars; x
#x = longley; x
x = mtcars[,1:7]; x
#x = LifeCycleSavings; x
biplot.pca(x)
biplot.pca(x, scale=T)
biplot.pca(x, col.obj=3, col.var=4, var.red=.5)
biplot.pca(x, center=T, scale=F, weight='eq', cex=.5)
biplot.pca(x, center=T, scale=F, weight='eq', cex=.8)
biplot.pca(x, center=T, scale=F, weight='sa')
biplot.pca(x, center=T, scale=F, weight='va')
biplot.pca(x, center=T, scale=F, weight='va', var.red=.05)

#����������������������
# 3D with scatterplot3d package
#����������������������
x = stackloss; x
biplot.pca(x, n.values=3, rgl.use=F, cex=.5)
biplot.pca(x, n.values=3, rgl.use=F, spheres=F, simple.axes=F, box=T)
biplot.pca(x, n.values=3, rgl.use=F, spheres=F, col.obj=3, col.var=4, var.red=.5)
biplot.pca(x, n.values=3, rgl.use=F, center=T, scale=F, weight='eq')
biplot.pca(x, n.values=3, rgl.use=F, center=T, scale=T, weight='eq')
biplot.pca(x, n.values=3, rgl.use=F, center=T, scale=T, weight='sa')
biplot.pca(x, n.values=3, rgl.use=F, spheres=F, center=T, scale=T, weight='va')
biplot.pca(x, n.values=3, rgl.use=F, center=T, scale=T, weight='va', var.red=.5)

#���������������
# 3D with rgl package
#���������������
x = iris[1:4]
#x = stackloss
x = LifeCycleSavings; x

clear3d()
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, spheres=F)
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, spheres=F, simple.axes=F, box=T, aspect3d=c(1, 1, 2))
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, spheres=F,  col.obj=3, col.var=4, var.red=.5)
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, center=T, scale=F, weight='eq', plot=T)
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, center=T, scale=T, weight='eq', plot=T)
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, spheres=F, center=T, scale=T, weight='sa')
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, center=T, scale=T, weight='va')
rgl.bringtotop(stay=T)
biplot.pca(x, n.values=3, center=T, scale=T, weight='va', var.red=.3)

Best regards,

Jose Claudio Faria
Estat�stica Experimental - Prof. Titular
Universidade Estadual de Santa Cruz - UESC
Departamento de Ciencias Exatas e Tecnologicas - DCET
Bahia - Brasil
Tels:
73-3634.2779 (fixo Ilheus)
19-9144.8979 (celular Piracicaba)

______________________________________________
R-help@stat.math.ethz.ch mailing list
https://stat.ethz.ch/mailman/listinfo/r-help
PLEASE do read the posting guide http://www.R-project.org/posting-guide.html
and provide commented, minimal, self-contained, reproducible code.

 

aas.n lIDl