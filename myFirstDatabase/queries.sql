#advarela

describe zip; 
describe property; 
describe event; 


select count(*) as zipCount from zip; 
select count(*) as propertyCount from property; 
select count(*) as eventCount from event; 

#my own queries

#Properties not in AZ
select Z.zipcode as zip, Z.state, Z.city, P.pid, ptype
from zip Z join property P on Z.zipcode = P.zipcode
where Z.state <> 'AZ' 
order by Z.state asc; 

#Highest sold property value for each zipcode
select Z.zipcode as zip, P.pid, E.edescription, 
	count(*) as numberOfPropertiesSold, max(E.eprice) as mostProfit
from (zip Z join property P on Z.zipcode = P.zipcode) 
	join event E on P.pid = E.pid
    where E.edescription = 'Sold'
    group by zip
    order by mostProfit asc;


#reflection query 1
select Z.zipcode as zip, P.pid, E.edate, E.edescription, E.eprice, 
P.streetaddress, Z.city, Z.state
from (property P join event E on P.pid = E.pid) 
	join zip Z on P.zipcode = Z.zipcode
    order by P.pid, E.edate; 

#query 1
select P.zipcode as zip, P.pid, E.edate, E.edescription, 
	E.eprice, P.streetaddress, Z.city, Z.state
from (property P join event E on P.pid = E.pid) 
	join zip Z on P.zipcode = Z.zipcode
where E.edescription = 'Price change' and 
	exists (select * from event E 
	where E.edescription = 'Sold' )
order by zip, P.pid, E.edate; 
	
    #reflection query 2
select Z.zipcode as zip, city, state, edescription
from (zip Z join property P on Z.zipcode = P.zipcode) 
	join event E on P.pid = E.pid; 
    
#reflection query 2    
select Z.zipcode, city, state, edescription
from (zip Z join property P on Z.zipcode = P.zipcode) 
	join event E on P.pid = E.pid
    order by Z.zipcode asc;
	
#query 2 
select Z.zipcode as zip, Z.city, Z.state, 
	count(*) as numberOfRemovedListings
from (zip Z join property P on Z.zipcode = P.zipcode) 
	join event E on P.pid = E.pid
where E.edescription = 'Listing Removed'
group by zip, Z.city, Z.state
order by numberOfRemovedListings desc; 


