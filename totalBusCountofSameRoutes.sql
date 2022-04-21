select count(b.BusName) as TotalBusCount 
from BusDetails b, Routes r
where b.RouteId=r.Id 
group by r.Id