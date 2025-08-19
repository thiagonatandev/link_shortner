class LinksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_link, only: [ :dashboard ]

  def index
    @links = current_user.links
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.build(link_params)
    if @link.save
      redirect_to links_path, notice: "Link encurtado com sucesso!"
    else
      render :new
    end
  end

  def dashboard
    unless @link.user == current_user
      redirect_to links_path, alert: "Acesso negado!"
      return
    end

    @total_clicks = @link.clicks.count

    # Agrupamentos para gráficos
    @clicks_by_country = @link.clicks.group(:country).count
    @clicks_by_browser = @link.clicks.group(:browser).count
    @clicks_by_os = @link.clicks.group(:os).count

    # Cliques por dia (últimos 30 dias)
    @clicks_by_day = @link.clicks
  .where("created_at >= ?", 30.days.ago)
  .group_by_day(:created_at)
  .count
  .map { |date, count| [ date.strftime("%Y-%m-%d"), count ] }
  end

  private

  def link_params
    params.require(:link).permit(:original_url)
  end

  def set_link
    @link = Link.find(params[:id])
  end
end
