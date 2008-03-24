class TrialsController < ApplicationController
  # GET /trials
  # GET /trials.xml
  def index
    @trials = Trial.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @trials }
    end
  end

  # GET /trials/1
  # GET /trials/1.xml
  def show
    @trial = Trial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @trial }
    end
  end

  # GET /trials/new
  # GET /trials/new.xml
  def new
    @trial = Trial.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @trial }
    end
  end

  # GET /trials/1/edit
  def edit
    @trial = Trial.find(params[:id])
  end

  # POST /trials
  # POST /trials.xml
  def create
    @trial = Trial.new(params[:trial])

    respond_to do |format|
      if @trial.save
        flash[:notice] = 'Trial was successfully created.'
        format.html { redirect_to(@trial) }
        format.xml  { render :xml => @trial, :status => :created, :location => @trial }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @trial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /trials/1
  # PUT /trials/1.xml
  def update
    @trial = Trial.find(params[:id])

    respond_to do |format|
      if @trial.update_attributes(params[:trial])
        flash[:notice] = 'Trial was successfully updated.'
        format.html { redirect_to(@trial) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @trial.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /trials/1
  # DELETE /trials/1.xml
  def destroy
    @trial = Trial.find(params[:id])
    @trial.destroy

    respond_to do |format|
      format.html { redirect_to(trials_url) }
      format.xml  { head :ok }
    end
  end
end
