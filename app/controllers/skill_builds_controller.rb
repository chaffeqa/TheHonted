class SkillBuildsController < ApplicationController
  before_filter :get_strategy_guide

  def get_strategy_guide
    @strategy_guide = StrategyGuide.find(params[:strategy_guide_id])
  end

  # GET /skill_builds
  # GET /skill_builds.xml
  def index
    @skill_builds = SkillBuild.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skill_builds }
    end
  end

  # GET /skill_builds/1
  # GET /skill_builds/1.xml
  def show
    @skill_build = SkillBuild.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill_build }
    end
  end

  # GET /skill_builds/new
  # GET /skill_builds/new.xml
  def new
    @skill_build = @strategy_guide.build_skill_build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill_build }
    end
  end

  # GET /skill_builds/1/edit
  def edit
    @skill_build = @strategy_guide.skill_build
  end

  # POST /skill_builds
  # POST /skill_builds.xml
  def create
    @skill_build = @strategy_guide.build_skill_build(params[:skill_build])

    respond_to do |format|
      if @skill_build.save
        format.html { redirect_to(strategy_items_strategy_guide_path(@strategy_guide)) }
        format.xml  { render :xml => @skill_build, :status => :created, :location => @skill_build }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @skill_build.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skill_builds/1
  # PUT /skill_builds/1.xml
  def update
    @skill_build = @strategy_guide.skill_build

    respond_to do |format|
      if @skill_build.update_attributes(params[:skill_build])
        format.html { redirect_to(strategy_items_strategy_guide_path(@strategy_guide)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @skill_build.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_builds/1
  # DELETE /skill_builds/1.xml
  def destroy
    @skill_build = SkillBuild.find(params[:id])
    @skill_build.destroy

    respond_to do |format|
      format.html { redirect_to(skill_builds_url) }
      format.xml  { head :ok }
    end
  end
end
