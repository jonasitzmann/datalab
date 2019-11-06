Subject: re : comments
fyi .
- - - - - - - - - - - - - - - - - - - - - - forwarded by rakesh bharati / na / enron on 03 / 27 / 2001
07 : 43 pm - - - - - - - - - - - - - - - - - - - - - - - - - - -
sheridan titman on 03 / 27 / 2001 06 : 46 : 31 pm
to : rakesh . bharati @ enron . com
cc :
subject : re : comments
rakesh :
thanks for your input . they are quite useful for helping me clarify my own
thinking . the following are my responses to your comments and
clarifications . the * * ed paragraphs are from me and the others are from you .
1 . the money is being set aside to avoid negative values . it is not clear
if you mean the values of the cash flow or the pv at the node . anyhow , we
shall be setting aside money not just for that specific node but all nodes
at that cross - section of time as the risk - free asset pays in all states of
nature . this will have to be done every time there is a negative
realization . thus , for the typical project we have , the value of risk
capital may be extremely high , as we are not following a tail - based norm
anymore .
* * i agree that this is confusing and needs further refinement . i do this
because i have some concerns about discounting negative cash flows , ( this
is discussed in my first memo ) . this clearly provides a conservative
estimate of firm value , and a measure of risk capital that is too high .
from the perspective of evaluating the appropriate level of risk capital ,
it is sufficient that enough capital be employed so that the pv at each
node is positive . also , one might want to set the level so that the pv is
positive in say 98 % of all nodes .
2 . your memo appears to suggest that debt capacity is contingent on all
values being positive . if so , we are only issuing risk - free debt . also , a
project with a single negative value at each cross - section of time will not
have a positive debt capacity .
* * again , this is a very conservative initial estimate . when the model is
refined , you probably want to define debt capacity so that the project
defaults a certain percent of the time .
3 . it seems that our optimization argument is the discount rate , which is
obtained in each step from the comparison investment ( by equating the
variances ) . it is not clear if changing the discount rate will have such
an effect on the project variance so as to lead to a global convergence .
* * i am not assuming that the change in the discount rate has a major effect
on volatility . in fact , i think the process requires only one iteration
when the volatility is independent of the discount rate . again , the idea
is that we calculate the volatility of the project ' s value calculated with
an initial discount rate . using the calculated volatility and the stock of
a comparison firm , calculate a more appropriate discount rate . if the
volatility of the project ' s value is not affected by the change in discount
rates then we are done . if , however , the change in discount rates changes
volatility , then we may have to iterate .
let me know if this makes sense . * *
also , our project has a finite life and the market - based assets will have
infinite lives . in the light of this fact , how will we define the relevant
variance ? is it the spot variance of the returns of the comparison
investment ?
* * this is a good point . i was thinking in terms of the average variance ,
but this may not be correct . actually , we know that this is just an
approximation and we need to think about whether or not it is a good
approximation . typically , firms tend to ignore issues relating to the
duration of their project cash flows when they determine discount rate ,
which clearly does not make sense . this requires some additional thought . * *
4 . finally , our criterion is to subtract from the average pv the
investment and also the risk capital . setting risk capital to zero , this
model closely resembles the intuitive present value criterion and
endogenously determines the discount rate .
* * this is correct . my goal was to come up with something that was closely
related to what you are already doing but which gives you some insight into
how to define risk capital and the appropriate discount rate . there are a
number of ways that we can refine and improve this procedure . what we need
to first consider is whether or not the basic approach makes sense for the
kind of projects that you are evaluating . * *
gas field case
to facilitate your thinking , we are providing a gas field example below .
we invest x million dollars to buy and develop a gas field . a profile of
expected production and variance of the production per year is available
from the engineers at the beginning . production will be autocorrelated , as
the profile will shift up or down based on the actual gas reserves being
more or less than the estimated reserves . we assume the life of the field
to be 10 years with no salvage value . there are fixed and variable
operating costs . it might be useful for you to think about applying the
framework to this problem .
* * this problem is probably pretty straightforward because it is unlikely
that the cash flows will be negative once the gas field is producing .
hence , there is no need to be concerned about risk capital ( other than the
x million dollars to buy and develop the property ) . to value the property
assuming all - equity financing we calculate the value process of the
developed project and compare its volatility to a comparison investment
whose value process is observable ( e . g . , a traded mlp ) . the risk - adjusted
return of the comparison investment would then be used to discount the cash
flows of the gas field .
please note that this procedure requires relatively strong assumptions and
calculating the risk - adjusted return on the comparison investment is not
necessarily straightforward . * *
let me know when you would like to discuss this .
* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
on another topic , is it possible for you to give me information about one
case where enron bought or sold a base load power plant , where the
purchaser financed the transaction with non - recourse debt . we would like
the following information :
1 . the value of the power plant ( or purchase price )
2 . the amount of debt financing and the terms of the debt contract .
3 . some information about the pricing of gas - power swaps and options .
about a year ago i gave vince a paper which develops a pricing model for
project debt . i don ' t think he thought that it could be implemented on the
type of projects that enron finances . however , my coauthors would like to
try applying the model for one case study .
let me know when you want to discuss these issues .
thanks ,
sheridan
sheridan titman
department of finance
college of business administration
university of texas
austin , texas 78712 - 1179
512 - 232 - 2787 ( phone )
512 - 471 - 5073 ( fax )
titman @ mail . utexas . eduyut hitr  h