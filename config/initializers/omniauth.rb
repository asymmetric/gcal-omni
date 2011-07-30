Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google,
    '160502686984.apps.googleusercontent.com',
    'SCeZSbyO71dMn2HlssMcun_i',
    { scope: "http://www.google.com/calendar/feeds/" }
end
