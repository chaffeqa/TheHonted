class HeroProsController < ApplicationController
  # GET /hero_pros
  # GET /hero_pros.xml
  def index
    @hero_pros = HeroPro.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hero_pros }
    end
  end

  # GET /hero_pros/1
  # GET /hero_pros/1.xml
  def show
    @hero_pro = HeroPro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hero_pro }
    end
  end

  # GET /hero_pros/new
  # GET /hero_pros/new.xml
  def new
    @hero_pro = HeroPro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hero_pro }
    end
  end

  # GET /hero_pros/1/edit
  def edit
    @hero_pro = HeroPro.find(params[:id])
  end

  # POST /hero_pros
  # POST /hero_pros.xml
  def create
    @hero_pro = HeroPro.new(params[:hero_pro])

    respond_to do |format|
      if @hero_pro.save
        format.html { redirect_to(@hero_pro, :notice => 'Hero pro was successfully created.') }
        format.xml  { render :xml => @hero_pro, :status => :created, :location => @hero_pro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hero_pro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hero_pros/1
  # PUT /hero_pros/1.xml
  def update
    @hero_pro = HeroPro.find(params[:id])

    respond_to do |format|
      if @hero_pro.update_attributes(params[:hero_pro])
        format.html { redirect_to(@hero_pro, :notice => 'Hero pro was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hero_pro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_pros/1
  # DELETE /hero_pros/1.xml
  def destroy
    @hero_pro = HeroPro.find(params[:id])
    @hero_pro.destroy

    respond_to do |format|
      format.html { redirect_to(hero_pros_url) }
      format.xml  { head :ok }
    end
  end

end
