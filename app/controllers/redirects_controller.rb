class RedirectsController < ApplicationController
  def show
    link = Link.find_by!(short_code: params[:short_code])

    click_data = {
      ip: request.remote_ip,
      browser: Browser.new(request.user_agent).name,
      os: Browser.new(request.user_agent).platform.name
    }
    location = Geocoder.search(request.remote_ip).first
    click_data[:country] = location&.country

    link.clicks.create!(click_data)
    link.increment!(:clicks_count)

    @original_url = link.original_url
    render :show
  end
end
