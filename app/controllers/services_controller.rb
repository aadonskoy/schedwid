class ServicesController < ApplicationController
  def index
    result = Services::Queries::Index.call
    return render json: result.response if result.success?

    render json: { errors: result.errors }, status: :bad_request
  end

  def show
    result = Services::Queries::Show.call(service_id: params[:id])
    return render json: result.response if result.success?

    render json: { errors: result.errors }, status: :bad_request
  end
end
