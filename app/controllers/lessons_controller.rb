class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_enrolled_in_course

	def show

	end

	private

	def require_enrolled_in_course
		if current_user.enrolled_in?(current_lesson.section.course) == false
			redirect_to course_path(current_lesson.section.course), :alert => "You are not enrolled in #{current_lesson.title}."
		end

	end
	helper_method :current_lesson

	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end
	
end
