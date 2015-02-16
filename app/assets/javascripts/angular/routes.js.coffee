@freezingWookie.config ['$routeProvider', ($routeProvider) ->

  $routeProvider
    .when "/",
      templateUrl: '../templates/links/new.html'
    .otherwise
      redirectTo: '/'
]


@freezingWookie.config [ '$httpProvider', ($httpProvider) ->
  csrfToken = $('meta[name=csrf-token]').attr('content')
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = csrfToken
  $httpProvider.defaults.headers.common['Accept'] = "application/json"
]