class AgreementsController < ApplicationController
  before_action :set_agreement, only: [:show, :edit, :update, :destroy]

  # GET /agreements
  # GET /agreements.json
  def index
    @agreements = Agreement.all
  end

  # GET /agreements/1
  # GET /agreements/1.json
  def show
  end

  # GET /agreements/new
  def new
    @agreement = Agreement.new
    @agreement.costumes.build
    @agreement.drycleans.build
  end

  # GET /agreements/1/edit
  def edit
  end

  # POST /agreements
  # POST /agreements.json
  def create
    @agreement = Agreement.new(agreement_params)

    for costume in @agreement.costumes
      costume.photo = upload_photo(costume.photo)
    end

    respond_to do |format|
      if @agreement.save
        AgreementMailer.welcome_email(@agreement).deliver        
        format.html { redirect_to @agreement, notice: 'Agreement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @agreement }
      else
        format.html { render action: 'new' }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agreements/1
  # PATCH/PUT /agreements/1.json
  def update
    # For photo updates
    x = 0 # Counter for updating costumes
    for costume in params[:agreement][:costumes_attributes].values
      update_photo(costume, x)
      x = x + 1 # incrementing
    end
    respond_to do |format|
      if @agreement.update(agreement_params)
        format.html { redirect_to @agreement, notice: 'Agreement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @agreement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agreements/1
  # DELETE /agreements/1.json
  def destroy
    @agreement.destroy
    respond_to do |format|
      format.html { redirect_to agreements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agreement
      @agreement = Agreement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agreement_params
      params.require(:agreement).permit(:name, :phone, :email, :mailbox, :wesid, :title, :start, :end, :due, :financer, :employee, costumes_attributes: [:id, :cid, :description, :wd, :photo, :back], drycleans_attributes: [:id, :_destroy, :invoice, :garment])
    end

    def upload_photo (img_file)
      unless (img_file == nil)
        img = Imgur::API.new '90b4d040607755992895fdd5bb586ba2'
        
        path = img_file.path

        uploaded_img = img.upload_file path
        return uploaded_img["image_hash"]
      end
    end

    def update_photo (costume, index)
      if costume[:photo] == nil
        costume[:photo] = @agreement.costumes[index].photo
      else
        costume[:photo] = upload_photo(costume[:photo])
      end
    end

end
