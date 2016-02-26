json.array!(@reports) do |report|
  json.extract! report, :id, :ip_address, :email, :description
  json.url report_url(report, format: :json)
end
