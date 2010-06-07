class RemoteImageContentsController < ApplicationController
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

    respond_to do |format|
      if @remote_image_content.save
        format.html { redirect_to(@remote_image_content, :notice => 'Remote image content was successfully created.') }
        format.xml  { render :xml => @remote_image_content, :status => :created, :location => @remote_image_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @remote_image_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /remote_image_contents/1
  # PUT /remote_image_contents/1.xml
  def update
    @remote_image_content = RemoteImageContent.find(params[:id])

    respond_to do |format|
      if @remote_image_content.update_attributes(params[:remote_image_content])
        format.html { redirect_to(@remote_image_content, :notice => 'Remote image content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @remote_image_content.errors, :status => :unprocessable_entity }
      end
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
