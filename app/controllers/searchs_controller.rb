class SearchsController < ApplicationController
  before_action :load_categories

  def index
    @products = if params[:keyword] != ""
                  Product.activated.search_product_public(params[:keyword])
                else
                  Product.activated
                end.paginate page: params[:page],
                    per_page: Settings.products.per_page
  end

  private

  def search_params
    params.require(:product).permit :keyword
  end
end
