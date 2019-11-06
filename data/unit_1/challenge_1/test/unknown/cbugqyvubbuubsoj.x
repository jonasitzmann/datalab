Subject: comments
hi sheridan ,
how are you ? i hope that you had a good vacation . vasant and i looked at
your memo and found it to be interesting . i shall first briefly summarize
our understanding of the methodology you propose . the comments follow .
finally , i shall sketch a simple gas field project you can use as a test case
in further refining the model .
it appears that you are proposing a state - space approach where probabilities
of different states at various future dates are specified . the next step is
to assume a discount rate and to compute the present value by following the
branches from the origin to one of the terminal points . traversing through
the tree in this manner over many iterations will permit us to compute the
average present value of the project . also , you are using the simulation to
assign a value of the project to each node . thus each node will have a cash
flow associated with it which will occur if the node is reached and a value
which is an expectation of the value to be realized going forward . if some
of these values turn out to be negative , zero - coupon , risk - free bonds are
purchased to neutralize the negative realization .
next , we find a comparable and apply the expected rate of return back to our
project ( based on the variance of the returns ) . we iterate until
convergence .
finally , we subtract the initial investment and the computed risk capital
from the pv of the gross cash flows ( including debt ) to determine if the
project merits further consideration .
comments / clarifications
1 . the money is being set aside to avoid negative values . it is not clear
if you mean the values of the cash flow or the pv at the node . anyhow , we
shall be setting aside money not just for that specific node but all nodes at
that cross - section of time as the risk - free asset pays in all states of
nature . this will have to be done every time there is a negative
realization . thus , for the typical project we have , the value of risk
capital may be extremely high , as we are not following a tail - based norm
anymore .
2 . your memo appears to suggest that debt capacity is contingent on all
values being positive . if so , we are only issuing risk - free debt . also , a
project with a single negative value at each cross - section of time will not
have a positive debt capacity .
3 . it seems that our optimization argument is the discount rate , which is
obtained in each step from the comparison investment ( by equating the
variances ) . it is not clear if changing the discount rate will have such an
effect on the project variance so as to lead to a global convergence . also ,
our project has a finite life and the market - based assets will have infinite
lives . in the light of this fact , how will we define the relevant variance ?
is it the spot variance of the returns of the comparison investment ?
4 . finally , our criterion is to subtract from the average pv the investment
and also the risk capital . setting risk capital to zero , this model closely
resembles the intuitive present value criterion and endogenously determines
the discount rate .
gas field case
to facilitate your thinking , we are providing a gas field example below .
we invest x million dollars to buy and develop a gas field . a profile of
expected production and variance of the production per year is available from
the engineers at the beginning . production will be autocorrelated , as the
profile will shift up or down based on the actual gas reserves being more or
less than the estimated reserves . we assume the life of the field to be 10
years with no salvage value . there are fixed and variable operating costs .
it might be useful for you to think about applying the framework to this
problem .
do let me know if you have further questions .
rakesh eu: c'ineteo