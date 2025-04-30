class DirectorsController < ApplicationController
  def index

    render({ :template => "directors_templates/list"})
  end

  def youngest

  end

  def oldest

  end

end
