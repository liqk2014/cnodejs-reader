
React = require 'react'
Router = require 'react-router'

Route = Router.Route
Routes = Router.Routes
DefaultRoute = Router.DefaultRoute
NotFoundRoute = Router.NotFoundRoute

$ = React.DOM

Page = require './app/page'
MessagesPage = require './app/message-page'
TopicPage = require './app/topic-page'
UserPage = require './app/user-page'
PostPage = require './app/post-page'

routes = Routes location: 'hash',
  Route page: '/', handler: Page,
    Route name: 'messages', page: '/messages', handler: MessagesPage
    Route name: 'topic', path: '/topic/:topicid', handler: TopicPage
    Route name: 'user', path: '/user/:userid', handler: UserPage
    Route name: 'post', path: '/post', handler: PostPage

React.render routes, document.body