SELECT SUM('billing.amount'), charged_datetime
FROM billing
WHERE billing.charged_datetime >='2012/03/01' AND billing.charged_datetime<'2012/04/01'

SELECT clients.client_id, SUM('billing.amount') as revenue
FROM clients
LEFT JOIN billing ON clients.client_id = billing.client_id
WHERE clients.client_id=2
GROUP BY clients.client_id

SELECT sites.domain_name, clients.client_id
FROM clients
LEFT JOIN sites ON clients.client_id = sites.client_id
WHERE client_id =10

SELECT clients.client_id, count('sites.site_id') as number_of_websites, sites.created_datetime
FROM clients
LEFT JOIN sites ON sites.client_id = clients.client_id
WHERE clients.client_id = 1
GROUP BY sites.created_datetime;

-- SELECT sites.domain_name as website, count('leads.leads_id') as number_of_leads, leads.registered_datetime
-- FROM sites
-- LEFT JOIN leads ON sites.site_id = leads.site_id
-- WHERE leads.registered_datetime>= 2011/01/01 AND leads.registered_datetime < 2011/02/15

-- SELECT clients.first_name as client_name, count('leads.leads_id') as number_of_leads, leads.registered_datetime
-- FROM clients
-- LEFT JOIN sites ON clients.client_id = sites.site_id
-- LEFT JOIN leads ON sites.site_id = leads.site_id
-- WHERE leads.registered_datetime>= 2011/01/01 AND leads.registered_datetime < 2011/23/31;

