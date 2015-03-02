routes = angular.module('routesModule')

routes.config ['$routeProvider', ($routeProvider) ->

  $routeProvider
    .when "/",
      templateUrl: '../templates/links/new.html'

    .otherwise
      redirectTo: '/'

]
