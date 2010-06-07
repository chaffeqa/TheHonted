class TextContentsController < ApplicationController
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

    respond_to do |format|
      if @text_content.save
        format.html { redirect_to(@text_content, :notice => 'Text content was successfully created.') }
        format.xml  { render :xml => @text_content, :status => :created, :location => @text_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @text_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /text_contents/1
  # PUT /text_contents/1.xml
  def update
    @text_content = TextContent.find(params[:id])

    respond_to do |format|
      if @text_content.update_attributes(params[:text_content])
        format.html { redirect_to(@text_content, :notice => 'Text content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @text_content.errors, :status => :unprocessable_entity }
      end
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
