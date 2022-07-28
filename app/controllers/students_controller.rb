class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show 
    student = Student.find(params[:id])
    render json: student
  end

  def find_by_name
    students = Student.all.select {|student| student.first_name == params[name] || student.last_name == params[name]}
    render json: students
  end

end
