Comments = require 'comments'
Timer = require 'timer'

exports.client_post = (comment) !->
	Timer.set 10000, 'post', comment

exports.post = (comment) !->
	# as this is fired by a timer, no user is associated
	Comments.post comment

