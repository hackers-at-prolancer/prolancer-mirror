json.array!(@landing_page_configs) do |landing_page_config|
  json.extract! landing_page_config, :id, :header, :description, :fa_icon
  json.url landing_page_config_url(landing_page_config, format: :json)
end
