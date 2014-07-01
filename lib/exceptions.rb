module Exceptions
  # a general error
  class Error < StandardError; end

  # a custom exception when query could not be executed on target db
  class QueryNotExecuted < Error; end

end