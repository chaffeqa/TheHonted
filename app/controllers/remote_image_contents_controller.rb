class RemoteImageContentsController < ApplicationController
  before_filter :get_strategy_guide

  def get_strategy_guide
    @strategy_guide = StrategyGuide.find(params[:strategy_guide_id])
  end

  # GET /remote_image_contents
  # GET /remote_image_contents.xml
  def index
    @remote_image_contents = RemoteImageContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @remote_image_contents }
    end
  end

  # GET /remote_image_contents/1
  # GET /remote_image_contents/1.xml
  def show
    @remote_image_content = RemoteImageContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @remote_image_content }
    end
  end

  # GET /remote_image_contents/new
  # GET /remote_image_contents/new.xml
  def new
    @remote_image_content = RemoteImageContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @remote_image_content }
    end
  end

  # GET /remote_image_contents/1/edit
  def edit
    @remote_image_content = RemoteImageContent.find(params[:id])
  end

  # POST /remote_image_contents
  # POST /remote_image_contents.xml
  def create
    @remote_image_content = RemoteImageContent.new(params[:remote_image_content])
    order_num = @strategy_guide.strategy_items.size || 0
    @strategy_item = @strategy_guide.strategy_items.build(:order => order_num, :phase => 0)

    if @remote_image_content.save and @strategy_item.content = @remote_image_content and @strategy_item.save
      redirect_to(strategy_items_strategy_guide_path(@strategy_guide))
    else
      @strategy_items = @strategy_guide.strategy_items
      render :action => "strategy_guides/strategy_items"
    end
  end

  # PUT /remote_image_contents/1
  # PUT /remote_image_contents/1.xml
  def update
    @remote_image_content = RemoteImageContent.find(params[:id])

    if @remote_image_content.update_attributes(params[:remote_image_content])
      redirect_to(strategy_items_strategy_guide_path(@strategy_guide))
    else
      @strategy_items = @strategy_guide.strategy_items
      render :action => "strategy_guides/strategy_items"
    end
  end

  # DELETE /remote_image_contents/1
  # DELETE /remote_image_contents/1.xml
  def destroy
    @remote_image_content = RemoteImageContent.find(params[:id])
    @remote_image_content.destroy

    respond_to do |format|
      format.html { redirect_to(remote_image_contents_url) }
      format.xml  { head :ok }
    end
  end
end
