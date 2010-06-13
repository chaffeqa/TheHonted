class TextContentsController < ApplicationController
  before_filter :get_strategy_guide

  def get_strategy_guide
    @strategy_guide = StrategyGuide.find(params[:strategy_guide_id])
  end

  # GET /text_contents
  # GET /text_contents.xml
  def index
    @text_contents = TextContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @text_contents }
    end
  end

  # GET /text_contents/1
  # GET /text_contents/1.xml
  def show
    @text_content = TextContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @text_content }
    end
  end

  # GET /text_contents/new
  # GET /text_contents/new.xml
  def new
    @text_content = TextContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @text_content }
    end
  end

  # GET /text_contents/1/edit
  def edit
    @text_content = TextContent.find(params[:id])
  end

  # POST /text_contents
  # POST /text_contents.xml
  def create
    @text_content = TextContent.new(params[:text_content])
    order_num = @strategy_guide.strategy_items.size || 0
    @strategy_item = @strategy_guide.strategy_items.build(:order => order_num, :phase => 0)
    
    if @text_content.save and @strategy_item.content = @text_content and @strategy_item.save
      redirect_to(strategy_items_strategy_guide_path(@strategy_guide))
    else
      @strategy_items = @strategy_guide.strategy_items
      render :action => "strategy_guides/strategy_items"
    end
  end

  # PUT /text_contents/1
  # PUT /text_contents/1.xml
  def update
    @text_content = TextContent.find(params[:id])

    if @text_content.update_attributes(params[:text_content])
      redirect_to(strategy_items_strategy_guide_path(@strategy_guide))
    else
      @strategy_items = @strategy_guide.strategy_items
      render :action => "strategy_guides/strategy_items"
    end
  end

  # DELETE /text_contents/1
  # DELETE /text_contents/1.xml
  def destroy
    @text_content = TextContent.find(params[:id])
    @text_content.destroy

    respond_to do |format|
      format.html { redirect_to(text_contents_url) }
      format.xml  { head :ok }
    end
  end
end
