# require needed files
require './test/sets/user_contexts'

module Contexts
	# explicitly include all sets of contexts used for texting
	include Contexts::UserContexts
end