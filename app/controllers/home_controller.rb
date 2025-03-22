class HomeController < ApplicationController
  # skip_before_action :authenticate_user, only: [:index]
  def index
  end
  def render_products
    render 'amazon_clone/office_product'
  end

end
