class HomeController < ApplicationController
  def index
  end

  def show_data
    @upper_tab = params[:upper_tab]
	  @sub_tab = params[:sub_tab]
	  @check_box_array = selected_checkbox params[:checked_checkbox] if !params[:checked_checkbox].blank?	   
  	respond_to do |format|
      format.js 
   end
  end
end

private
  def selected_checkbox check_box_ides
      check_boxes = Array.new
      check_boxes << "Advertiser" if check_box_ides.include?("lbl01")
      check_boxes << "Campaign" if check_box_ides.include?("lbl02")
      check_boxes << "Site" if check_box_ides.include?("lbl03")
      check_boxes << "Placement" if check_box_ides.include?("lbl04")
    return check_boxes
  end  