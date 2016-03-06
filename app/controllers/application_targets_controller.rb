class ApplicationTargetsController < ApplicationController
  before_action :set_application, only: [:new, :create]

  def new
    @application_target = ApplicationTarget.new
  end

  def create
    application_targets = []
    application_target_params["target_id"].each do |target_id|
      if target_id.to_i > 0
        application_targets << ApplicationTarget.new(
          application_id: @application.id,
          target_id: target_id.to_i
        )
      end
    end
    ApplicationTarget.import application_targets
    redirect_to edit_application_path(@application)
  end

  private
  def set_application
    @application = Application.find(params[:application_id])
  end

  def application_target_params
    params.require(:application_target).permit(
      {:target_id => []}
    )
  end
end
