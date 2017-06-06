class ArtObjectsController < ApplicationController
  before_action :set_art_object, only: [:show, :edit, :update, :destroy]

  # GET /art_objects
  # GET /art_objects.json
  def index
    @art_objects = ArtObject.all
  end

  # GET /art_objects/1
  # GET /art_objects/1.json
  def show
  end

  # GET /art_objects/new
  def new
    @art_object = ArtObject.new
  end

  # GET /art_objects/1/edit
  def edit
  end

  # POST /art_objects
  # POST /art_objects.json
  def create
    @art_object = ArtObject.new(art_object_params)

    respond_to do |format|
      if @art_object.save
        format.html { redirect_to @art_object, notice: 'Art object was successfully created.' }
        format.json { render :show, status: :created, location: @art_object }
      else
        format.html { render :new }
        format.json { render json: @art_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /art_objects/1
  # PATCH/PUT /art_objects/1.json
  def update
    respond_to do |format|
      if @art_object.update(art_object_params)
        format.html { redirect_to @art_object, notice: 'Art object was successfully updated.' }
        format.json { render :show, status: :ok, location: @art_object }
      else
        format.html { render :edit }
        format.json { render json: @art_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /art_objects/1
  # DELETE /art_objects/1.json
  def destroy
    @art_object.destroy
    respond_to do |format|
      format.html { redirect_to art_objects_url, notice: 'Art object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def import
    ArtObject.import(params[:file])
    redirect_to art_objects_path, notice: "Art Objects Added Successfully!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_art_object
      @art_object = ArtObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def art_object_params
      params.require(:art_object).permit(:department, :title)
    end
end
