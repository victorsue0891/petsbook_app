json.array!(@devices) do |device|
  json.extract! device, :id, :uuid
  json.url device_url(device, format: :json)
end
