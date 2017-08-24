module MyApi
  # this is an "abstract" base class that
  class Base < JsonApiClient::Resource
    # set the api base url in an abstract base class
    self.site = "http://localhost:3020"
  end

  class User < Base
  end

  class SourceProvider < Base
    def self.table_name
      "source-providers"
    end
  end

  class CourseResult < Base
    def self.table_name
      "course-results"
    end
  end

  class CourseResultHistory < Base
    def self.table_name
      "course-results/courses_history"
    end
  end
end
