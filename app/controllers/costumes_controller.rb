class CostumesController < ApplicationController
  before_action :set_costume, only: [:show, :edit, :update, :destroy]

  # GET /costumes
  # GET /costumes.json
  def index
    @costumes = Costume.all
  end

  # GET /costumes/1
  # GET /costumes/1.json
  def show
  end

  # GET /costumes/new
  def new
    @costume = Costume.new
  end

  # GET /costumes/1/edit
  def edit
  end

  # POST /costumes
  # POST /costumes.json
  def create
    @costume = Costume.new(costume_params)
    @costume.photo = upload_photo(@costume.photo)

    respond_to do |format|
      if @costume.save
        format.html { redirect_to @costume, notice: 'Costume was successfully created.' }
        format.json { render action: 'show', status: :created, location: @costume }
      else
        format.html { render action: 'new' }
        format.json { render json: @costume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costumes/1
  # PATCH/PUT /costumes/1.json
  def update
    update_photo
    respond_to do |format|
      if @costume.update(costume_params)
        format.html { redirect_to @costume, notice: 'Costume was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @costume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costumes/1
  # DELETE /costumes/1.json
  def destroy
    @costume.destroy
    respond_to do |format|
      format.html { redirect_to costumes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_costume
      @costume = Costume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def costume_params
      params.require(:costume).permit(:cid, :description, :wd, :photo, :back)
    end

    def upload_photo (img_file)
      unless (img_file == nil)
        img = Imgur::API.new '90b4d040607755992895fdd5bb586ba2'
        
        path = img_file.path

        uploaded_img = img.upload_file path
        return uploaded_img["image_hash"]
      end
    end

    def update_photo
      if params[:costume][:photo] == nil
        params[:costume][:photo] = @costume.photo
      else
        params[:costume][:photo] = upload_photo(params[:costume][:photo])
      end
    end



end
