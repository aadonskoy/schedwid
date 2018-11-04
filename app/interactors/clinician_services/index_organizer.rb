class ClinicianServices::IndexOrganizer
  include Interactor::Organizer

  organize ClinicianServices::Index, ClinicianServices::DeserializeCollection
end
