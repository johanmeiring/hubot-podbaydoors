# Description:
#   HAL cannot open the pod bay doors...
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot open the pod bay doors - Display the expected message
#
# Author:
#   johanmeiring

module.exports = (robot) ->
  regex = /open the pod bay doors/i
  robot.respond regex, (msg) ->
    msg.send "I'm sorry, #{msg.message.user.name}. I'm afraid I can't do that."
