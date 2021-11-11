class SupervisorsController < ApplicationController
  # GET /supervisors
  # GET /supervisors.xml
  def index
    @supervisors = Supervisor.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @supervisors }
    end
  end

  # GET /supervisors/1
  # GET /supervisors/1.xml
  def show
    @supervisor = Supervisor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @supervisor }
    end
  end

  # GET /supervisors/new
  # GET /supervisors/new.xml
  def new
    @supervisor = Supervisor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @supervisor }
    end
  end

  # GET /supervisors/1/edit
  def edit
    @supervisor = Supervisor.find(params[:id])
  end

  # POST /supervisors
  # POST /supervisors.xml
  def create
    @supervisor = Supervisor.new(params[:supervisor])

    respond_to do |format|
      if @supervisor.save
        flash[:notice] = 'Supervisor was successfully created.'
        format.html { redirect_to(@supervisor) }
        format.xml  { render :xml => @supervisor, :status => :created, :location => @supervisor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @supervisor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /supervisors/1
  # PUT /supervisors/1.xml
  def update
    @supervisor = Supervisor.find(params[:id])

    respond_to do |format|
      if @supervisor.update_attributes(params[:supervisor])
        flash[:notice] = 'Supervisor was successfully updated.'
        format.html { redirect_to(@supervisor) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @supervisor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisors/1
  # DELETE /supervisors/1.xml
  def destroy
    @supervisor = Supervisor.find(params[:id])
    @supervisor.destroy

    respond_to do |format|
      format.html { redirect_to(supervisors_url) }
      format.xml  { head :ok }
    end
  end
end
