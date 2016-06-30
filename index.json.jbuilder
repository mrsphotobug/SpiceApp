json.array!(@spices) do |spice|
  json.extract! spice, :id, :spicename, :quantity, :scale, :supplier, :reorder
  json.url spice_url(spice, format: :json)
end
