json.array!(@lawyers) do |lawyer|
  json.extract! lawyer, :id, :name, :address, :city, :state, :zip, :phone, :website, :practice
  json.url lawyer_url(lawyer, format: :json)
end
