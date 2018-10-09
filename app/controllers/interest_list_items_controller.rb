class InterestListItemsController < ApplicationController
  include CurrentInterestList
  before_action :set_interest_list_item, only: [:show, :edit, :update, :destroy]
  before_action :set_interest_list, only: [:create]
  # GET /interest_list_items
  # GET /interest_list_items.json
  def index
    @interest_list_items = InterestListItem.all
  end

  # GET /interest_list_items/1
  # GET /interest_list_items/1.json
  def show
  end

  # GET /interest_list_items/new
  def new
    @interest_list_item = InterestListItem.new
  end

  # GET /interest_list_items/1/edit
  def edit
  end

  # POST /interest_list_items
  # POST /interest_list_items.json
  def create
    listing = Listing.find(params[:listing_id])
    @interest_list_item = @interest_list.add_listing(listing)

    respond_to do |format|
      if @interest_list_item.save
        format.html { redirect_to @interest_list_item.listing, notice: 'Listing added to interest list.' }
        format.json { render :show, status: :created, location: @interest_list_item }
      else
        format.html { render :new }
        format.json { render json: @interest_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interest_list_items/1
  # PATCH/PUT /interest_list_items/1.json
  def update
    respond_to do |format|
      if @interest_list_item.update(interest_list_item_params)
        format.html { redirect_to @interest_list_item, notice: 'Interest list item was successfully updated.' }
        format.json { render :show, status: :ok, location: @interest_list_item }
      else
        format.html { render :edit }
        format.json { render json: @interest_list_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interest_list_items/1
  # DELETE /interest_list_items/1.json
  def destroy
    @interest_list = InterestList.find(session[:interest_list_id])
    @interest_list_item.destroy
    respond_to do |format|
      format.html { redirect_to interest_list_path(@interest_list), notice: 'Interest list item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_list_item
      @interest_list_item = InterestListItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interest_list_item_params
      params.require(:interest_list_item).permit(:listing_id)
    end
end
