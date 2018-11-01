class ServiceQuery
  include HTTParty

  base_uri "https://#{CLIENT_PORTAL_BASE_URL}"

  def list
    self.class.get('/client-portal-api/cpt-codes?Accept=application' \
      "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}")
  end

  def information(service_id)
    self.class.get('/client-portal-api/offices?Accept=application' \
      "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}&filter[cptCodeId]=#{service_id}")
  end
end
