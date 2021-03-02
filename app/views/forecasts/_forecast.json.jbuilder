json.extract! forecast, :id, :day, :date, :forecast, :created_at, :updated_at
json.url forecast_url(forecast, format: :json)
