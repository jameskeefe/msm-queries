class DirectorsController < ApplicationController
  def index

    render({ :template => "directors_templates/list"})
  end

  def youngest
    @stat = "Youngest"
    @d = Director.where.not(:dob => nil).order(:dob => :desc).at(0)

    render({ :template => "directors_templates/est"})
  end

  def oldest
    @stat = "Oldest"
    @d = Director.where.not(:dob => nil).order(:dob => :asc).at(0)

    render({ :template => "directors_templates/est"})
  end

  def bio
    @id_num = params[:id].to_i
    @d = Director.where({:id => @id_num}).at(0)


    render({ :template => "directors_templates/bios"})
  end

end
