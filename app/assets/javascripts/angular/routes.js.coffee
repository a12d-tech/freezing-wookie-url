routes = angular.module('routesModule')

routes.config ['$routeProvider', ($routeProvider) ->

  $routeProvider
    .when "/",
      templateUrl: 'links/new.html'

    .otherwise
      redirectTo: '/'

]
