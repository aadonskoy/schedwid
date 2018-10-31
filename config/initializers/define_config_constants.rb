if %w[test].include?(Rails.env)
  CLIENT_PORTAL_BASE_URL = 'test.tst'.freeze
  CLINICIAN_ID = '1'.freeze
else
  CLIENT_PORTAL_BASE_URL = ENV.fetch('CLIENT_PORTAL_BASE_URL')
  CLINICIAN_ID = ENV.fetch('CLINICIAN_ID')
end
