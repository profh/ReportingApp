# require needed files
require './test/sets/user_contexts'
require './test/sets/visit_contexts'
require './test/sets/visit_action_contexts'

module Contexts
	# explicitly include all sets of contexts used for testing
	include Contexts::UserContexts
	include Contexts::VisitContexts 
	include Contexts::VisitActionContexts 
end