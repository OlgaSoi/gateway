module Api
  class CoursesController < Api::BaseController
    def index
      p "*** CoursesController"
      p "*** CoursesController #{params}"
      render :json => MyApi::CourseResult.all()
    end

    def history
      render :json => MyApi::CourseResultHistory.all()
    end
  end
end