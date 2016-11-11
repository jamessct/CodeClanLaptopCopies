class PaninisController < ApplicationController
  def index
    @paninis = [{name: "Peppers panini"}, {name: "Peppers panini with jalepeños"}]

    respond_to do |format|
      format.html
      format.json {render :json => @paninis}
    end
  end
end