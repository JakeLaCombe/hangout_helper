class PersonController < ApplicationController
  def create
    @person = Person.new(params[:person])
    if not @person.nil? and @person.save
      sign_in @person
      redirect_to person_path(@person)
    else
      if @person.nil?
        @person = Person.new
      end

      render 'create'
    end
  end

  def new
    @person = Person.new(params[:person])
    if not @person.nil? and @person.save
      sign_in @person
      flash[:success] = "Welcome to Hangout Helper!"
      redirect_to people_path
    else
      if @person.nil?
        @person = Person.new
      end

      render 'create'
    end
  end

  def edit
  end

  def index
    @persons = Person.paginate(:page => params[:page])
  end

  def show
    @person = Person.find(params[:id])
  end

  def destroy
  end
end
