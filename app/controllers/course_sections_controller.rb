class CourseSectionsController < ApplicationController
  before_action :set_course_section, only: [:show, :edit, :update, :destroy]

  # GET /course_sections
  # GET /course_sections.json
  def index
    @course_sections = CourseSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @course_sections }
    end
  end

  # GET /course_sections/1
  # GET /course_sections/1.json
  def show
    @course = Course.find(params[:course_id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @course_section }
    end
  end

  # GET /course_sections/new
  def new
    @course = Course.find(params[:course_id])
    @course_section = CourseSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @course_section }
    end
  end

  # GET /course_sections/1/edit
  def edit
    @course = Course.find(params[:course_id])
  end

  # POST /course_sections
  # POST /course_sections.json
  def create
    @course = Course.find(params[:course_id])
    @course_section = @course.course_sections.new(params[:course_section])

    respond_to do |format|
      if @course_section.save
        format.html { redirect_to course_course_section_path(@course, @course_section), notice: 'Course section was successfully created.' }
        format.json { render :show, status: :created, location: @course_section }
      else
        format.html { render :new }
        format.json { render json: @course_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_sections/1
  # PATCH/PUT /course_sections/1.json
  def update
    @course = @course_section.course

    respond_to do |format|
      if @course_section.update_attributes(params[:course_section])
        format.html { redirect_to course_course_section_path(@course_section.course, @course_section), notice: 'Course section was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @course_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_sections/1
  # DELETE /course_sections/1.json
  def destroy
    @course_section.destroy
    respond_to do |format|
      format.html { redirect_to course_sections_url, notice: 'Course Section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_section
      @course_section = CourseSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_section_params
      params.require(:course_section).permit(:course_id, :section_id, :title, :lecture_notes, :lecture_url, :video, :video_file_name, :video_content_type, :video_file_size, :image)
    end
end
