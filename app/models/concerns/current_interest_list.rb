module CurrentInterestList
  private
  def set_interest_list
    @interest_list = InterestList.find(params[:interest_list_id])
  rescue ActiveRecord::RecordNotFound
    @interest_list = InterestList.create
    session[:interest_list_id] = @interest_list
  end
end