Rack::Attack.enabled = !Rails.env.test?

# 5 requests per second per IP
Rack::Attack.throttle("req/ip", limit: 5, period: 1.second) do |req|
  req.ip
end

# Rack::Attack.throttle("limit logins per email", limit: 5, period: 1.minute) do |req|
#   req.params["email"] if req.path == "/login" && req.post?
# end