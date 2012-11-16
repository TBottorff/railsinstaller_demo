class MinimessagesController < ApplicationController
  # GET /minimessages
  # GET /minimessages.json
  def index
    @minimessages = Minimessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @minimessages }
    end
  end

  # GET /minimessages/1
  # GET /minimessages/1.json
  def show
    @minimessage = Minimessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @minimessage }
    end
  end

  # GET /minimessages/new
  # GET /minimessages/new.json
  def new
    @minimessage = Minimessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @minimessage }
    end
  end

  # GET /minimessages/1/edit
  def edit
    @minimessage = Minimessage.find(params[:id])
  end

  # POST /minimessages
  # POST /minimessages.json
  def create
    @minimessage = Minimessage.new(params[:minimessage])

    respond_to do |format|
      if @minimessage.save
        format.html { redirect_to @minimessage, notice: 'Minimessage was successfully created.' }
        format.json { render json: @minimessage, status: :created, location: @minimessage }
      else
        format.html { render action: "new" }
        format.json { render json: @minimessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /minimessages/1
  # PUT /minimessages/1.json
  def update
    @minimessage = Minimessage.find(params[:id])

    respond_to do |format|
      if @minimessage.update_attributes(params[:minimessage])
        format.html { redirect_to @minimessage, notice: 'Minimessage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @minimessage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minimessages/1
  # DELETE /minimessages/1.json
  def destroy
    @minimessage = Minimessage.find(params[:id])
    @minimessage.destroy

    respond_to do |format|
      format.html { redirect_to minimessages_url }
      format.json { head :no_content }
    end
  end
end
