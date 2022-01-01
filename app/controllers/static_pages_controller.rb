class StaticPagesController < ApplicationController
  def landing_page
    render layout: 'landing'
  end

  def privacy_policy
  end
end
