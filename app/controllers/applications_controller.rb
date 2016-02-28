class ApplicationsController < ApplicationController
  def new
    @application = Application.new
  end

  def create
    @application = Application.create
    application_params["purpose_ids"].each do |purpose_id|
      if purpose_id.to_i > 0
        ApplicationPurpose.create(
          application_id: @application.id,
          purpose_id: purpose_id.to_i
        )
      end
    end
    redirect_to edit_application_path(@application)
  end

  def edit
  end

  def update
  end

  def show
  end

  def application_params
    params.require(:application).permit({:purpose_ids => []})
  end
end
