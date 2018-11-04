class ClinicianServices::ShowOrganizer
  include Interactor::Organizer

  organize ClinicianServices::Show, ClinicianServices::DeserializeOffice
end
