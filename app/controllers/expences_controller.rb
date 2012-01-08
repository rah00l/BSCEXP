class ExpencesController < ApplicationController
  # GET /expences
  # GET /expences.xml
  def index
    @expences = Expence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expences }
    end
  end

  # GET /expences/1
  # GET /expences/1.xml
  def show
    @expence = Expence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expence }
    end
  end

  # GET /expences/new
  # GET /expences/new.xml
  def new
    @expence = Expence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expence }
    end
  end

  # GET /expences/1/edit
  def edit
    @expence = Expence.find(params[:id])
  end

  # POST /expences
  # POST /expences.xml
  def create
    @expence = Expence.new(params[:expence])

    respond_to do |format|
      if @expence.save
        flash[:notice] = 'Expence was successfully created.'
        format.html { redirect_to(@expence) }
        format.xml  { render :xml => @expence, :status => :created, :location => @expence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expences/1
  # PUT /expences/1.xml
  def update
    @expence = Expence.find(params[:id])

    respond_to do |format|
      if @expence.update_attributes(params[:expence])
        flash[:notice] = 'Expence was successfully updated.'
        format.html { redirect_to(@expence) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expences/1
  # DELETE /expences/1.xml
  def destroy
    @expence = Expence.find(params[:id])
    @expence.destroy

    respond_to do |format|
      format.html { redirect_to(expences_url) }
      format.xml  { head :ok }
    end
  end
end
