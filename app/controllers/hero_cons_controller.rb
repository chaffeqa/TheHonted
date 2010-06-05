class HeroConsController < ApplicationController
  # GET /hero_cons
  # GET /hero_cons.xml
  def index
    @hero_cons = HeroCon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hero_cons }
    end
  end

  # GET /hero_cons/1
  # GET /hero_cons/1.xml
  def show
    @hero_con = HeroCon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hero_con }
    end
  end

  # GET /hero_cons/new
  # GET /hero_cons/new.xml
  def new
    @hero_con = HeroCon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hero_con }
    end
  end

  # GET /hero_cons/1/edit
  def edit
    @hero_con = HeroCon.find(params[:id])
  end

  # POST /hero_cons
  # POST /hero_cons.xml
  def create
    @hero_con = HeroCon.new(params[:hero_con])

    respond_to do |format|
      if @hero_con.save
        format.html { redirect_to(@hero_con, :notice => 'Hero con was successfully created.') }
        format.xml  { render :xml => @hero_con, :status => :created, :location => @hero_con }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hero_con.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hero_cons/1
  # PUT /hero_cons/1.xml
  def update
    @hero_con = HeroCon.find(params[:id])

    respond_to do |format|
      if @hero_con.update_attributes(params[:hero_con])
        format.html { redirect_to(@hero_con, :notice => 'Hero con was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hero_con.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hero_cons/1
  # DELETE /hero_cons/1.xml
  def destroy
    @hero_con = HeroCon.find(params[:id])
    @hero_con.destroy

    respond_to do |format|
      format.html { redirect_to(hero_cons_url) }
      format.xml  { head :ok }
    end
  end
end
