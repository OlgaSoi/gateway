#module MyApi
  # this is an "abstract" base class that
  class Base < JsonApiClient::Resource
    # set the api base url in an abstract base class
    self.site = "http://localhost:3030"
  end
#end