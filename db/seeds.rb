# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#forecasts = Forecast.create([{id: 1, day: "Mon", date:Time.now, forecast:"Windy"}])
#rainfalls = Rainfall.create([{forecast_id: 1, id: 1, amount: 22}])

case Rails.env
when 'development'
    puts "-====== Development Environment Detected ======-"
    forecast = Forecast.create(day:"Monday", date:Time.now(), forecast:"Bad yoke")
    Rainfall.create(amount: 50, warning_yellow: false, warning_orange: false, warning_red: false, forecast: forecast)

when 'test'
    # test-specific seeds ...
    # (Consider having your tests set up the data they need
    # themselves instead of seeding it here!)
    puts "-====== Test Environment Detected ======-"
    forecast = Forecast.create(day:"Monday", date:Time.now(), forecast:"Bad yoke")
    Rainfall.create(amount: 50, warning_yellow: false, warning_orange: false, warning_red: false, forecast: forecast)

when 'production'
    # production seeds (if any) ...
    puts "-====== Production Environment Detected ======-"
    forecast = Forecast.create(day:"Monday", date:Time.now(), forecast:"Bad yoke")
    Rainfall.create(amount: 50, warning_yellow: false, warning_orange: false, warning_red: false, forecast: forecast)
end