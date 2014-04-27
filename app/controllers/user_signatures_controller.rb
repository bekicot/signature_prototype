class UserSignaturesController < ApplicationController
  before_action :set_user_signature, only: [:show, :edit, :update, :destroy]

  # GET /user_signatures
  # GET /user_signatures.json
  def index
    @user_signatures = UserSignature.all
  end

  # GET /user_signatures/1
  # GET /user_signatures/1.json
  def show
  end

  # GET /user_signatures/new
  def new
    @user_signature = UserSignature.new
  end

  # GET /user_signatures/1/edit
  def edit
  end

  # POST /user_signatures
  # POST /user_signatures.json
  def create
    @user_signature = UserSignature.new(user_signature_params)

    respond_to do |format|
      if @user_signature.save
        format.html { redirect_to @user_signature, notice: 'User signature was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_signature }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_signatures/1
  # PATCH/PUT /user_signatures/1.json
  def update
    respond_to do |format|
      if @user_signature.update(user_signature_params)
        format.html { redirect_to @user_signature, notice: 'User signature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_signatures/1
  # DELETE /user_signatures/1.json
  def destroy
    @user_signature.destroy
    respond_to do |format|
      format.html { redirect_to user_signatures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_signature
      @user_signature = UserSignature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_signature_params
      params.require(:user_signature).permit(:name, :description, :signature)
    end
end
