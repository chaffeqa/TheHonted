class StrategyGuidesController < ApplicationController
  # GET /strategy_guides
  # GET /strategy_guides.xml
  def index
    @strategy_guides = StrategyGuide.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @strategy_guides }
    end
  end

  # GET /strategy_guides/1
  # GET /strategy_guides/1.xml
  def show
    @strategy_guide = StrategyGuide.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @strategy_guide }
    end
  end

  # GET /strategy_guides/new
  # GET /strategy_guides/new.xml
  def new
    @strategy_guide = StrategyGuide.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @strategy_guide }
    end
  end

  # GET /strategy_guides/1/edit
  def edit
    @strategy_guide = StrategyGuide.find(params[:id])
  end

  # POST /strategy_guides
  # POST /strategy_guides.xml
  def create
    @strategy_guide = StrategyGuide.new(params[:strategy_guide])

    respond_to do |format|
      if @strategy_guide.save
        format.html { redirect_to(@strategy_guide, :notice => 'Strategy guide was successfully created.') }
        format.xml  { render :xml => @strategy_guide, :status => :created, :location => @strategy_guide }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @strategy_guide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /strategy_guides/1
  # PUT /strategy_guides/1.xml
  def update
    @strategy_guide = StrategyGuide.find(params[:id])

    respond_to do |format|
      if @strategy_guide.update_attributes(params[:strategy_guide])
        format.html { redirect_to(@strategy_guide, :notice => 'Strategy guide was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @strategy_guide.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /strategy_guides/1
  # DELETE /strategy_guides/1.xml
  def destroy
    @strategy_guide = StrategyGuide.find(params[:id])
    @strategy_guide.destroy

    respond_to do |format|
      format.html { redirect_to(strategy_guides_url) }
      format.xml  { head :ok }
    end
  end
end