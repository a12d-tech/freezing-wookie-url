controllers = angular.module('controllersModule')

controllers.controller "LinksController", ['$scope', 'Link',
  ($scope, Link)->

    $scope.link        = ''
    $scope.originalUrl = ''

    $scope.addLink = ->
      url = $scope.originalUrl

      Link.create(url).then (response)->
        $scope.link = response.data.link

      $scope.originalUrl = ''

]
