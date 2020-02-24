class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def activate
    student = Student.find(params[:id])
    @status = student.active ? false : true
    Student.find(student.id).update(active: @status)
    redirect_to "/students/#{student.id}"
  end

  def show
    @student = Student.find(params[:id])
    @status = @student.active ? "active" : "inactive"
  end


  private

    def set_student
      @student = Student.find(params[:id])
    end
end