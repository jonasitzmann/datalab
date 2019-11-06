Subject: p + option valuation model
mark ,
after recently reviewing the booking of the p + options , it is my understanding that these options are being valued using a standard spread option model where the price evolution of the two legs of the spread are assumed to be correlated geometric brownian motion processes ( i . e . the price process assumptions are consistent with standard black - 76 model assumptions extended to two commodities ) .
the payoff for a call option is :
payoff = max ( 0 , a - b - k ) .
where :
a = nxwti ( delivery price for nymex )
b = posting price = ( wti swap ) - ( posting basis )
k = posting bonus ( fixed ) .
the only complication of this option as compared to most other spread options is that leg " b " of the spread is a combination of three prices , the two futures prices which make up the wti swap for the given month , and the average posting basis during the delivery month . combination of these prices is easily addressed by simply setting the volatility of leg " b " and the correlation to correctly account for the volatility of this basket of prices and its correlation with the nxwti price . i believe that this approach is more straightforward than the alternative , which would be to use a three or four - commodity model with its associated volatility and correlation matrices .
in summary , i believe that this is an appropriate model for valuation of these types of options , assuming that the inputs are set correctly .
regards ,
stinson gibner
v . p . research. r  s