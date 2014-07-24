json.array!(@fdisks) do |fdisk|
  json.extract! fdisk, :id, :file
  json.url fdisk_url(fdisk, format: :json)
end
