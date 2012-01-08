class ExpencePerticulersController < ApplicationController
  # GET /expence_perticulers
  # GET /expence_perticulers.xml
  def index
    @expence_perticulers = ExpencePerticuler.all
    @expence = Expence.all
    expence_perticuler = ExpencePerticuler.all(:order => "date")
    #raise expence_perticuler.inspect

    @grouped_expence_perticuler = expence_perticuler.group_by { |rct| rct.date }

    #raise @grouped_expence_perticuler.inspect
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expence_perticulers }
    end
  end

  # GET /expence_perticulers/1
  # GET /expence_perticulers/1.xml
  def show
    @expence_perticuler = ExpencePerticuler.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expence_perticuler }
    end
  end

  # GET /expence_perticulers/new
  # GET /expence_perticulers/new.xml
  def new
    @expence_perticuler = ExpencePerticuler.new
    @expence_primary = Expence.find_all_by_exp_type(true)
    @expence_secondary = Expence.find_all_by_exp_type(false)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expence_perticuler }
    end
  end

  # GET /expence_perticulers/1/edit
  def edit
    #raise
    @expence_perticuler = ExpencePerticuler.find(:all,:conditions => ["cluser_name=? and shop_name=? and date=?",params[:clust_name],params[:shop_name],params[:date]])
    #raise @expence_perticuler.inspect
    #@expence_perticuler = @expence_perticuler.expence

  end

  # POST /expence_perticulers
  # POST /expence_perticulers.xml
  def create
    #raise params.inspect
    @expence_perticuler = ExpencePerticuler.new(params[:expence_perticuler])

    respond_to do |format|
      #raise params[:expence_perticuler][:date].inspect
      c = params[:expence_perticuler][:cluser_name]
      s = params[:expence_perticuler][:shop_name]
      d = params[:expence_perticuler][:date]
      #raise params[:expence_perticuler_total].inspect
      t = params[:expence_perticuler_total]
      adt = params[:expence_perticuler_total1]
      if @expence_perticuler
        #raise @expence_perticuler.inspect
        if params[:expence_perticuler][:expence_attributes]
        params[:expence_perticuler][:expence_attributes].each do |rc|
          rct = ExpencePerticuler.new
          rct.expence_id = rc[1]["expence_id"]
          rct.exp_value = rc[1]["expence_value"]
          rct.description = rc[1]["description"]
          rct.cluser_name = c
          rct.shop_name = s
          rct.date = d
          rct.total = t
          rct.adjusted_total = adt
          rct.save!
        end
        end
        if params[:expence_perticuler1][:expence_attributes]
          
        params[:expence_perticuler1][:expence_attributes].each do |rc|
          rct = ExpencePerticuler.new
          rct.expence_id = rc[1]["expence_id"]
          rct.exp_value = rc[1]["expence_value"]
          rct.description = rc[1]["description"]
          rct.cluser_name = c
          rct.shop_name = s
          rct.date = d
          rct.total = t
          rct.adjusted_total = adt
          rct.save!
        end
        end
        flash[:notice] = 'ExpencePerticuler was successfully created.'
        format.html { redirect_to(@expence_perticuler) }
        format.xml  { render :xml => @expence_perticuler, :status => :created, :location => @expence_perticuler }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expence_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expence_perticulers/1
  # PUT /expence_perticulers/1.xml
  def update
    raise
    @expence_perticuler = ExpencePerticuler.find(params[:id])

    respond_to do |format|
      if @expence_perticuler.update_attributes(params[:expence_perticuler])
        flash[:notice] = 'ExpencePerticuler was successfully updated.'
        format.html { redirect_to(@expence_perticuler) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expence_perticuler.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expence_perticulers/1
  # DELETE /expence_perticulers/1.xml
  def destroy
    @expence_perticuler = ExpencePerticuler.find(params[:id])
    @expence_perticuler.destroy

    respond_to do |format|
      format.html { redirect_to(expence_perticulers_url) }
      format.xml  { head :ok }
    end
  end

  def exp_perticuler_select
    p "-"*27
    render :layout => 'expence_perticuler'
    p "-"*27
    
  end
end
