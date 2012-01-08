class ExpsController < ApplicationController
  # GET /exps
  # GET /exps.xml
  def index
    @exps = Exp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @exps }
    end
  end

  # GET /exps/1
  # GET /exps/1.xml
  def show
    @exp = Exp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @exp }
    end
  end

  # GET /exps/new
  # GET /exps/new.xml
  def new
    @exp = Exp.new
    @exp.ExpPerticuler.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @exp }
    end
  end

  # GET /exps/1/edit
  def edit
    @exp = Exp.find(params[:id])
  end

  # POST /exps
  # POST /exps.xml
  def create
    @exp = Exp.new(params[:exp])

    respond_to do |format|
      if @exp.save
        flash[:notice] = 'Exp was successfully created.'
        format.html { redirect_to(@exp) }
        format.xml  { render :xml => @exp, :status => :created, :location => @exp }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @exp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /exps/1
  # PUT /exps/1.xml
  def update
    @exp = Exp.find(params[:id])

    respond_to do |format|
      if @exp.update_attributes(params[:exp])
        flash[:notice] = 'Exp was successfully updated.'
        format.html { redirect_to(@exp) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @exp.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /exps/1
  # DELETE /exps/1.xml
  def destroy
    @exp = Exp.find(params[:id])
    @exp.destroy

    respond_to do |format|
      format.html { redirect_to(exps_url) }
      format.xml  { head :ok }
    end
  end
end
