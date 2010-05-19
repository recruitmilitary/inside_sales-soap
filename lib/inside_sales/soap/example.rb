require 'inside_sales'

ENDPOINT_URL = "https://recruitmilitary.insidesales.com/do=noauth/soap/service/AllInsideSalesServices"

soap_client = InsideSales::SOAP::AllInsideSalesServicesPortType.new(ENDPOINT_URL)

soap_client.login("admin", "admin")

company_name_filter = InsideSales::SOAP::Filter.new("company_name", "LIKE", ["%Mike%"])

filters = [company_name_filter]

soap_client.getLeads(filters)
