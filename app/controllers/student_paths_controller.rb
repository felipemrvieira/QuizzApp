class StudentPathsController < ApplicationController
  before_action :set_student_path, only: [:show, :edit, :update, :destroy]

  # GET /student_paths
  # GET /student_paths.json
  def index
    @student_paths = StudentPath.all
  end

  # GET /student_paths/1
  # GET /student_paths/1.json
  def show
  end

  # GET /student_paths/new
  def new
    @student_path = StudentPath.new
  end

  # GET /student_paths/1/edit
  def edit
  end

  # POST /student_paths
  # POST /student_paths.json
  def create
    @student_path = StudentPath.new(student_path_params)

    respond_to do |format|
      if @student_path.save
        format.html { redirect_to @student_path, notice: 'Student path was successfully created.' }
        format.json { render :show, status: :created, location: @student_path }
      else
        format.html { render :new }
        format.json { render json: @student_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_paths/1
  # PATCH/PUT /student_paths/1.json
  def update
    respond_to do |format|
      if @student_path.update(student_path_params)
        format.html { redirect_to @student_path, notice: 'Student path was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_path }
      else
        format.html { render :edit }
        format.json { render json: @student_path.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_paths/1
  # DELETE /student_paths/1.json
  def destroy
    @student_path.destroy
    respond_to do |format|
      format.html { redirect_to student_paths_url, notice: 'Student path was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_path
      @student_path = StudentPath.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_path_params
      params.require(:student_path).permit(:student_id, :path_id)
    end
end
