@freezingWookie.controller "LinksController", ['$scope', ($scope) ->
  
  $scope.link = []

]

@freezingWookie.controller "LinkFormController", ['$scope', 'Link', ($scope, Link) ->
  
  @originalUrl = ''

  @addLink = ->
    url = @originalUrl

    Link.create(url).then (response)->
      $scope.link.push response.data.link

    @originalUrl = ''

]