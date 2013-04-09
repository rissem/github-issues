Issues = new Meteor.Collection

#WIP
Meteor.setInterval ->
  user = Meteor.users.find().fetch()[0]
  accessToken = user.services.github.accessToken
  console.log "querying github with token", accessToken
  response = Meteor.http.get "https://api.github.com/rissem/issues?access_token=#{accessToken}"
  console.log response
, 5*1000