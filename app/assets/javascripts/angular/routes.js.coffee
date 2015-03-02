routes = angular.module('routesModule')

routes.config ['$routeProvider', ($routeProvider) ->

  $routeProvider
    .when "/",
      templateUrl: 'links/new.html'
      controller:  'LinksController'

    .otherwise
      redirectTo: '/'

]
