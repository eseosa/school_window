class UniversitiesController < ApplicationController
  before_filter :signed_in_user
  # GET /universities
  # GET /universities.json
  def index
    @universities = University.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @universities }
    end
  end

  # GET /universities/1
  # GET /universities/1.json
  def show
    @university = University.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @university }
    end
  end

  # GET /universities/new
  # GET /universities/new.json
  def new
    @university = University.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @university }
    end
  end

  # GET /universities/1/edit
  def edit
    @university = University.find(params[:id])
  end

  # POST /universities
  # POST /universities.json
  def create
    @university = University.new(params[:university])

    respond_to do |format|
      if @university.save
        format.html { redirect_to @university, notice: 'University was successfully created.' }
        format.json { render json: @university, status: :created, location: @university }
      else
        format.html { render action: "new" }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /universities/1
  # PUT /universities/1.json
  def update
    @university = University.find(params[:id])

    respond_to do |format|
      if @university.update_attributes(params[:university])
        format.html { redirect_to @university, notice: 'University was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @university.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universities/1
  # DELETE /universities/1.json
  def destroy
    @university = University.find(params[:id])
    @university.destroy

    respond_to do |format|
      format.html { redirect_to universities_url }
      format.json { head :no_content }
    end
  end
  def search
    @universities = University.find(:all, :conditions => ["name LIKE ?", "%#{params[:key]}%"])
  end
  
  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_url, notice: "Please sign in." 
    end
  end
end
