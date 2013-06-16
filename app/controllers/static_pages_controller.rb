class StaticPagesController < ApplicationController
  def index
  	@person = Person.new
  end
end
