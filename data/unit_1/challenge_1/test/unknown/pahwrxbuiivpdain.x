Subject: gisb ir meeting notes
gisb ir meeting - 11 - 13 & 14 , 2001
summary :
finalized the transactional information ( ft , it , and capacity release ) . this information will be access via the upload of a request for download of posted datasets . majority of the two days was spent developing the data dictionary for the new producer imbalance statement . the producer imbalance statement is not a mandatory dataset . exxon was the only producer present .
detailed notes :
informational reporting
where should the reporting be located in the gisb books for the it & ft reporting ?
? in cap release books
? general book
? it & ft into noms and cap release into cap release
? create a new book called reports
? if we create a new book , we will have to do an executive summary .
should reside in capacity release book since the upload request for a download of posted dataset is the request document .
update the upload of a request for download of posted datasets to include code values and technical implementation to support the request for transaction information it , ft , and capacity release datasets .
? add " ? withdrawals , or and transactional reports " to technical implementation .
? add code value , " transaction information firm "
? add code value , " transaction information interruptible "
? add code value , " transaction information - capacity release "
update the response to upload of a request for download of posted datasets to include code values to support the request for transaction information it , ft , and capacity release datasets .
? add code value , " transaction information firm "
? add code value , " transaction information interruptible "
? add code value , " transaction information - capacity release "
executive summary for capacity release , under the capacity release process / datasets / edi transaction section modified with the below :
? add the it & ft reporting datasets under the mandatory datasets in alphabetical order
? page 4 of executive summary - add new section describing the dataset .
title : transactional information - transactional information consisting of reports from a tsp provider detailing information for new or amended transportation service or capacity release transaction . these reports are requested through the use of a upload of a request for download of posted datasets and response to upload of a request for download of posted datasets .
? business process and practices , under overview
o first paragraph " capacity release reports consists of the following datasets : ? . the transactional information - interruptible , the transactional information - firm , and transactional information - capacity release
voting :
? put together a rec form and data dictionaries and bring back next meeting and vote .
producer imbalance statement exxonmobil work paper - in progress
? not a mandatory document
? one account per point .
? modify contact person data to preparer contact person data
? cumulative imbalance changed to ending imbalance quantity
? current month entitlement - quantity of gas each interest owner is entitled to take of the total production deliveries
? current month imbalance changed to current month quantity
? interest owner data - the entity with ownership interest in the gas .
? interest owner - hold for resolution r 97058 b for the condition
? interest owner name - hold for resolution of r 97058 b .
? interest owner proprietary code - hold for resolution of r 97058 b .
? prior period adjustment - changed usage from condition to mandatory . condition = default is zero . ( in order words if a prior period is not present , send a zero . )
? production delivery - quantity of gas delivered to a location for a interest owner based on location operator ' s allocation statement .
? interest owner decimal changed interest owner percentage - percentage of gas owned by the interest owner . usage - mandatory .
? add - transportation service provider data group - at detail level .
? add - transportation service provider data element = a code value that uniquely identifies the tsp . mandatory .
? add - transportation service provide name . mandatory .
? grand total all tsp ' s = the total of all production deliveries made to all tsps from a given location . mandatory .
? total tsp = the total of all production deliveries made to a specified tsp from a given location . detail . mandatory .
? ending imbalance qty = cumulative imbalance for an interest owner delivered to a tsp . # 20
? current month entitlement - a quantity of gas each interest owner is entitled to take of the grand total - all tsp for a given tsp . # 16
? interest owner percentage - percentage of the gas owned by the interest owner dedicated to specified tsp .
? add discussion to the tibp the definition of ppi . ppi is related to interest owner percentage . ppi is the portion of the production interest dedicated to a tsp .
? field - # 6 we don ' t currently support this location information in any other gisb documents . it is derivable from the location .
? county - # 6 we don ' t currently support this location information in any other
? gisb documents . it is derivable from the location .
? state - # 6 we don ' t currently support this location information in any other gisb documents . it is derivable from the location .
? move location data to header level .
? location operator - party recognized as the operator of record for the location .
? location operator - proprietary code - hold for r 97058 b
? move statement basis data to header . if one line time is adjusted or estimated , it impacts the whole allocation .
? statement recipient id * - hold for r 97058
? cumulative ending imbalance qty ( new ) - # 26 cumulative imbalance qty for the current period for an interest owner delivered to all tsps . mandatory . detail .
? cumulative imbalance qty ( new ) # 24 cumulative imbalance qty for the current period for an interest owner . mandatory . detail .
tammy lee - jaquet
713 - 853 - 5375
tammy . jaquet @ enron . comeea nealsmn  