require 'spec_helper'

describe HomeController do
	describe "GET #index" do
	    it "responds successfully with an HTTP 200 status code" do
	      get :index
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end
	end    
	describe "GET #show_data" do
	    it "responds successfully with an HTTP 200 status code" do
	      expect(response).to be_success
	      expect(response.status).to eq(200)
	    end	   
	    it "loads params into instance variable" do
	      assigns(:upper_tab).should eq(@upper_tab)
    	  assigns(:lower_tab).should eq(@lower_tab)
	    end  
	    it "render to show_data.js.erb file" do 	 
 			get :show_data, :format => 'js'
 			response.should render_template('show_data')
	    end
	end
end
