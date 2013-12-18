class SController < ApplicationController

def index


@courses = Course.search(params[:search])
#@courses = @search.result

end





end
