class SController < ApplicationController

def index

@search = Course.search(params[:search])
#@courses = @search.result

end





end
