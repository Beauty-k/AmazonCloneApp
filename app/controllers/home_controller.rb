class HomeController < ApplicationController
  # skip_before_action :authenticate_user, only: [:index]
  def index
    
  end
  def render_products
    render 'home/office_product'
  end
  def menu
    # render 'home/menu'
  end
end
