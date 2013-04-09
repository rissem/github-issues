Meteor.setInterval ->
  console.log "querying github"
  #query github
  #write to collection
  #handle duplicates
, 5*1000

console.log Meteor.users.find().fetch()[0]

Meteor.publish "stuff", ->
  console.log @userId