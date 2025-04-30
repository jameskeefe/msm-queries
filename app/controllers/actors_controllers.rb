class ActorsController < ApplicationController
  def index

    render({ :template => "actors_templates/list"})
  end

  def bio
    @id_num = params[:id].to_i
    @a = Actor.where({:id => @id_num}).at(0)

    render({ :template => "actors_templates/bios"})
  end

end
