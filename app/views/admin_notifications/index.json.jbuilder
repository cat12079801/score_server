json.array!(@admin_notifications) do |admin_notification|
  json.extract! admin_notification, :id
  json.url admin_notification_url(admin_notification, format: :json)
end
