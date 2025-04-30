class MoviesController < ApplicationController
  def index

    render({ :template => "movies_templates/list"})
  end

  def bio
    @id_num = params[:id].to_i
    @m = Movie.where({:id => @id_num}).at(0)
    @d = Director.where({:id => @m.director_id}).at(0)

    render({ :template => "movies_templates/bios"})
  end

end
