class BaseStructObject < OpenStruct
  def initialize(params)
    attributes = params['attributes'].merge('id' => params['id'])

    super(attributes)
  end
end
