class ApplicationsController < ApplicationController
  before_action :set_application, only: [:target, :targets]

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
    redirect_to applications_target_url(id: @application.id)
  end

  def target
  end

  def targets
    application_params["target_ids"].each do |target_id|
      if target_id.to_i > 0
        ApplicationTarget.create(
          application_id: @application.id,
          target_id: target_id.to_i
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

  private
    def application_params
      params.require(:application).permit(
        {:purpose_ids => []},
        {:target_ids => []},
      )
    end

    def set_application
      @application = Application.find(params[:id])
    end
end
