class StrategyGuidesController < ApplicationController

  before_filter :require_user, :only => [:new, :edit, :destroy]
  respond_to :html, :xml, :json
  
  # GET /strategy_guides
  # GET /strategy_guides.xml
  def index
    @strategy_guides = StrategyGuide.all
    
    respond_with(@strategy_guides)
  end

  # GET /strategy_guides/1
  # GET /strategy_guides/1.xml
  def show
    @strategy_guide = StrategyGuide.find(params[:id])
    @hero = @strategy_guide.hero
    @hero_pros = @strategy_guide.hero_pros
    @hero_cons = @strategy_guide.hero_cons
    @skill_build = @strategy_guide.skill_build
    @strategy_items = @strategy_guide.strategy_items
  end

  # GET /strategy_guides/new
  # GET /strategy_guides/new.xml
  def new
    @strategy_guide = StrategyGuide.new(params[:strategy_guide])
    @heroes = Hero.ordered.map  { |hero| [hero.name, hero.id]  }
  end

  # GET /strategy_guides/1/edit
  def edit
    @strategy_guide = StrategyGuide.find(params[:id])
    @heroes = Hero.ordered.map { |hero| [hero.name, hero.id]  }
    @hero_pros = @strategy_guide.hero_pros
    @hero_cons = @strategy_guide.hero_cons
  end

  # POST /strategy_guides
  # POST /strategy_guides.xml
  def create
    @strategy_guide = StrategyGuide.new(params[:strategy_guide])
    @strategy_guide.user = current_user

    if @strategy_guide.save
      redirect_to(new_strategy_guide_skill_build_path(@strategy_guide.id))
    else
      render :action => "new"
    end
    
  end


  # PUT /strategy_guides/1
  # PUT /strategy_guides/1.xml
  def update
    @strategy_guide = StrategyGuide.find(params[:id])
    @strategy_guide.user = current_user
   
    if @strategy_guide.update_attributes(params[:strategy_guide])
      if @strategy_guide.skill_build.nil?
        redirect_to(new_strategy_guide_skill_build_path(@strategy_guide.id))
      else
        redirect_to(edit_strategy_guide_skill_build_path(@strategy_guide.id, @strategy_guide.skill_build.id))
      end
    else
      @heroes = Hero.ordered.map { |hero| [hero.name, hero.id]  }
      @hero_pros = @strategy_guide.hero_pros
      @hero_cons = @strategy_guide.hero_cons
      render :action => "edit"
    end
   
  end

  # DELETE /strategy_guides/1
  # DELETE /strategy_guides/1.xml
  def destroy
    @strategy_guide = StrategyGuide.find(params[:id])
    @strategy_guide.destroy

    redirect_to(strategy_guides_url)
  end


  def strategy_items
    @strategy_guide = StrategyGuide.find(params[:id])
    @strategy_items = @strategy_guide.strategy_items
    @text_content = TextContent.new
    @remote_image_content = RemoteImageContent.new
    @remote_video_content = RemoteVideoContent.new
  end




  ###############################################################################
  # AJAX Calls
  ###############################################################################


end
