class MarkItUpController < ApplicationController 
  
  layout 'login'
  
  skip_before_filter :authorize
  
  def preview
    render :action => "preview", :layout => false
  end

end
