json.extract! donation, :id, :description, :value, :donationDatte, :created_at, :updated_at
json.url donation_url(donation, format: :json)
