class ProjMembsController < ApplicationController
  # GET /proj_membs
  # GET /proj_membs.json
  def index
    @proj_membs = ProjMemb.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @proj_membs }
    end
  end

  # GET /proj_membs/1
  # GET /proj_membs/1.json
  def show
    @proj_memb = ProjMemb.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @proj_memb }
    end
  end

  # GET /proj_membs/new
  # GET /proj_membs/new.json
  def new
    @proj_memb = ProjMemb.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @proj_memb }
    end
  end

  # GET /proj_membs/1/edit
  def edit
    @proj_memb = ProjMemb.find(params[:id])
  end

  # POST /proj_membs
  # POST /proj_membs.json
  def create
    @proj_memb = ProjMemb.new(params[:proj_memb])

    respond_to do |format|
      if @proj_memb.save
        format.html { redirect_to @proj_memb, notice: 'Proj memb was successfully created.' }
        format.json { render json: @proj_memb, status: :created, location: @proj_memb }
      else
        format.html { render action: "new" }
        format.json { render json: @proj_memb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /proj_membs/1
  # PUT /proj_membs/1.json
  def update
    @proj_memb = ProjMemb.find(params[:id])

    respond_to do |format|
      if @proj_memb.update_attributes(params[:proj_memb])
        format.html { redirect_to @proj_memb, notice: 'Proj memb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @proj_memb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proj_membs/1
  # DELETE /proj_membs/1.json
  def destroy
    @proj_memb = ProjMemb.find(params[:id])
    @proj_memb.destroy

    respond_to do |format|
      format.html { redirect_to proj_membs_url }
      format.json { head :no_content }
    end
  end
end
