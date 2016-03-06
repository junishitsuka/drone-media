class ApplicationsController < ApplicationController
  before_action :set_application, only: [:edit]

  def new
    @application = Application.new
  end

  def create
    # Applicationレコードを作成
    @application = Application.create

    # ApplicationPurposeレコードをBULK INSERT
    application_purposes = []
    application_params["purpose_ids"].each do |purpose_id|
      if purpose_id.to_i > 0
        application_purposes << ApplicationPurpose.new(
          application_id: @application.id,
          purpose_id: purpose_id.to_i
        )
      end
    end
    ApplicationPurpose.import application_purposes

    # 対象フォームへリダイレクト
    redirect_to new_application_application_target_url(
      application_id: @application.id
    )
  end

  def edit
  end

  def update
  end

  def show
  end

  private
  def set_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(
      {:purpose_ids => []}
    )
  end
end
