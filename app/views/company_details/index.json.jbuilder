json.array!(@company_details) do |company_detail|
  json.extract! company_detail, :id, :company_name, :company_type, :pan, :vat, :registration_number, :company_address, :billing_address, :shipping_address, :company_info
  json.url company_detail_url(company_detail, format: :json)
end
