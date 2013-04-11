require "net/http"
require "json"
require "nike_v2"

# widget configuration
access_token = "ACCESS_TOKEN"

SCHEDULER.every "15m", :first_in => 0 do |job|
  person        = NikeV2::Person.new(access_token: access_token)
  activity      = person.activities.first
  
  if activity
    summary = activity.fetch_data['metricSummary']

    send_event "nikeplus", { 
      calories: summary['calories'],
      fuel:     summary['fuel'],
      distance: summary['distance'].round(2),
      duration: summary['duration'][0...-4]
    }
  end
end
