freezingWookie = angular.module('freezingWookie', [
  "ngRoute"
  "routesModule"
  "servicesModule"
  "controllersModule"
])

routes      = angular.module('routesModule', [])
services    = angular.module('servicesModule', [])
controllers = angular.module('controllersModule', [])

freezingWookie.config [ '$httpProvider', ($httpProvider) ->
  csrfToken = $('meta[name=csrf-token]').attr('content')
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = csrfToken
  $httpProvider.defaults.headers.common['Accept'] = "application/json"
]
