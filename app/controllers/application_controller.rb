class ApplicationController < ActionController::Base
  helper_method :current_student, :logged_in?

  layout "main"

  def current_student
    @current_student ||= Student.find(session[:student_id])
  end

  def logged_in?
    current_student != nil
  end

  # <% if logged_in? -%>Welcome, <%= current_user.name %><% end -%>
end
