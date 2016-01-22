Comments = require 'comments'
Server = require 'server'
Toast = require 'toast'
{tr} = require 'i18n'

exports.render = !->

	Comments.enable
		invertBar: false
		placeholder: tr "Anonymous message..."
		likes: false
		isTyping: false
		commentsModal: false
		onSend: (comment) ->
			Server.sync 'post', comment
			Toast.show tr "Message will show up in 10s. Act surprised!"
			true
		render: (comment) !->
			if !comment.s
				comment.icon = 'comedy'
				comment.user = tr "Anonymous Coward"

