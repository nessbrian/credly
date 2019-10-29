class BadgesController < ApplicationController
  before_action :set_badge, only: [:show, :edit, :update, :destroy]

  def index
    @badges = Badge.all
  end

  def show
  end

  def new
    @available_templates = Badge.badge_templates
  end

  def edit
  end

  def create
    @badge = Badge.new(badge_params)
    redirect_to badges_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_badge
      @badge = Badge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def badge_params
      params.require(:badge).permit(:badge_id, :badge_template_id, :issued_to, :recipient_email, :issued_to_first_name, :issued_to_last_name)
    end
end

