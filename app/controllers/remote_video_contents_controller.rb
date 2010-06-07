class RemoteVideoContentsController < ApplicationController
  # GET /remote_video_contents
  # GET /remote_video_contents.xml
  def index
    @remote_video_contents = RemoteVideoContent.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @remote_video_contents }
    end
  end

  # GET /remote_video_contents/1
  # GET /remote_video_contents/1.xml
  def show
    @remote_video_content = RemoteVideoContent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @remote_video_content }
    end
  end

  # GET /remote_video_contents/new
  # GET /remote_video_contents/new.xml
  def new
    @remote_video_content = RemoteVideoContent.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @remote_video_content }
    end
  end

  # GET /remote_video_contents/1/edit
  def edit
    @remote_video_content = RemoteVideoContent.find(params[:id])
  end

  # POST /remote_video_contents
  # POST /remote_video_contents.xml
  def create
    @remote_video_content = RemoteVideoContent.new(params[:remote_video_content])

    respond_to do |format|
      if @remote_video_content.save
        format.html { redirect_to(@remote_video_content, :notice => 'Remote video content was successfully created.') }
        format.xml  { render :xml => @remote_video_content, :status => :created, :location => @remote_video_content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @remote_video_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /remote_video_contents/1
  # PUT /remote_video_contents/1.xml
  def update
    @remote_video_content = RemoteVideoContent.find(params[:id])

    respond_to do |format|
      if @remote_video_content.update_attributes(params[:remote_video_content])
        format.html { redirect_to(@remote_video_content, :notice => 'Remote video content was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @remote_video_content.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /remote_video_contents/1
  # DELETE /remote_video_contents/1.xml
  def destroy
    @remote_video_content = RemoteVideoContent.find(params[:id])
    @remote_video_content.destroy

    respond_to do |format|
      format.html { redirect_to(remote_video_contents_url) }
      format.xml  { head :ok }
    end
  end
end
