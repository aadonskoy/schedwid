class ClinicianServiceRepository
  include HTTParty

  base_uri "https://#{CLIENT_PORTAL_BASE_URL}"

  class << self
    def all
      get('/client-portal-api/cpt-codes?Accept=application' \
        "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}")
    end

    def find_by_id(service_id)
      get('/client-portal-api/offices?Accept=application' \
        "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}&filter[cptCodeId]=#{service_id}")
    end
  end
end
