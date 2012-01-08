class ExpPerticulersController < ApplicationController
  # GET /exp_perticulers
  # GET /exp_perticulers.xml
  def index
    @exp_perticulers = ExpPerticuler.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exp_perticulers }
    end
  end

  # GET /exp_perticulers/1
  # GET /exp_perticulers/1.xml
  def show
    @exp_perticuler = ExpPerticuler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exp_perticuler }
    end
  end

  # GET /exp_perticulers/new
  # GET /exp_perticulers/new.xml
  def new
    @exp_perticuler = ExpPerticuler.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exp_perticuler }
    end
  end

  # GET /exp_perticulers/1/edit
  def edit
    @exp_perticuler = ExpPerticuler.find(params[:id])
  end

  # POST /exp_perticulers
  # POST /exp_perticulers.xml
  def create
    @exp_perticuler = ExpPerticuler.new(params[:exp_perticuler])

    respond_to do |format|
      if @exp_perticuler.save
        flash[:notice] = 'ExpPerticuler was successfully created.'
        format.html { redirect_to(@exp_perticuler) }
        format.xml  { render :xml => @exp_perticuler, :status => :created, :location => @exp_perticuler }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exp_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exp_perticulers/1
  # PUT /exp_perticulers/1.xml
  def update
    @exp_perticuler = ExpPerticuler.find(params[:id])

    respond_to do |format|
      if @exp_perticuler.update_attributes(params[:exp_perticuler])
        flash[:notice] = 'ExpPerticuler was successfully updated.'
        format.html { redirect_to(@exp_perticuler) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exp_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exp_perticulers/1
  # DELETE /exp_perticulers/1.xml
  def destroy
    @exp_perticuler = ExpPerticuler.find(params[:id])
    @exp_perticuler.destroy

    respond_to do |format|
      format.html { redirect_to(exp_perticulers_url) }
      format.xml  { head :ok }
    end
  end
end
