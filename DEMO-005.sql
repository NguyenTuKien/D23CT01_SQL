select CustID, CustomerName from CUSTOMER
where CustID not in (
  select distinct CustID from SALEORDER
)