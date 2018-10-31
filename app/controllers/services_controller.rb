class ServicesController < ApplicationController
  def index
    retrieved = Services::RetrieveList.call
  end
end
