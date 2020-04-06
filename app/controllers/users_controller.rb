class UsersController < ApplicationController

  # def new
  #   user = User.new
  #   render json: user
  # end

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def create
    p params
    p params[:first_name]
    user = User.create(first_name: params[:first_name], last_name: params[:last_name], voice_type: params[:voice_type], email: params[:email], password_digest: params[:password_digest])
    render json: user
  end

  def update
    p params
    user = User.find_by(id: params[:id])
    user.update(first_name: params[:first_name], last_name: params[:last_name], degree: params[:degree], institution: params[:institution], voice_type: params[:voice_type], biography: params[:biography], website: params[:website], email: params[:email], password_digest: params[:password_digest])
    render json: user
  end

end

# def create
#   date = params[:datetime]
#   p = DateTime.parse(date).to_date.to_s
#   appointment = Appointment.create(date: p, time: date, patient_id: params[:patient_id], doctor_id: params[:doctor_id])
#   render json: appointment
# end
#
# def show
#   appointment = Appointment.find_by(id: params[:id])
#   render json: appointment
# end
#
# def update
#   appointment = Appointment.find_by(id: params[:id])
#   appointment.update(diagnosis: params[:diagnosis])
#   appointment.update(directions: params[:directions])
#
#   render json: appointment
# end
#
# def destroy
#   appointment = Appointment.find_by(id: params[:id])
#   appointment.destroy
#   render json: appointment
# end
