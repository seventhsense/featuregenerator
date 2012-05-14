class StepsnippetsController < ApplicationController
  # GET /stepsnippets
  # GET /stepsnippets.json
  def index
    @stepsnippets = Stepsnippet.all
    @stepsnippet = Stepsnippet.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stepsnippets }
    end
  end

  # GET /stepsnippets/1
  # GET /stepsnippets/1.json
  def show
    @stepsnippet = Stepsnippet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stepsnippet }
    end
  end

  # GET /stepsnippets/new
  # GET /stepsnippets/new.json
  def new
    @stepsnippet = Stepsnippet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stepsnippet }
    end
  end

  # GET /stepsnippets/1/edit
  def edit
    @stepsnippet = Stepsnippet.find(params[:id])
  end

  # POST /stepsnippets
  # POST /stepsnippets.json
  def create
    @stepsnippet = Stepsnippet.new(params[:stepsnippet])

    respond_to do |format|
      if @stepsnippet.save
        format.html { redirect_to stepsnippets_url, notice: 'Stepsnippet was successfully created.' }
        format.json { render json: @stepsnippet, status: :created, location: @stepsnippet }
      else
        format.html { render action: "new" }
        format.json { render json: @stepsnippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stepsnippets/1
  # PUT /stepsnippets/1.json
  def update
    @stepsnippet = Stepsnippet.find(params[:id])

    respond_to do |format|
      if @stepsnippet.update_attributes(params[:stepsnippet])
        format.html { redirect_to stepsnippets_url, notice: 'Stepsnippet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stepsnippet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stepsnippets/1
  # DELETE /stepsnippets/1.json
  def destroy
    @stepsnippet = Stepsnippet.find(params[:id])
    @stepsnippet.destroy

    respond_to do |format|
      format.html { redirect_to stepsnippets_url }
      format.json { head :no_content }
    end
  end

end
