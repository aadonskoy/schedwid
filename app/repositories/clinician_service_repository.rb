class ClinicianServiceRepository
  include HTTParty

  base_uri "https://#{CLIENT_PORTAL_BASE_URL}"

  GET_SERVICES_URL = '/client-portal-api/cpt-codes?Accept=application' \
    "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}".freeze

  GET_OFFICES_URL = '/client-portal-api/offices?Accept=application' \
    "/vnd.api+json&filter[clinicianId]=#{CLINICIAN_ID}&filter[cptCodeId]=".freeze

  class << self
    def all
      get(GET_SERVICES_URL)
    end

    def find_by_id(service_id)
      get("#{GET_OFFICES_URL}#{service_id}")
    end
  end
end
