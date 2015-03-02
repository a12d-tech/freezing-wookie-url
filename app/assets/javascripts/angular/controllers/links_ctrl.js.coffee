controllers = angular.module('controllersModule')

controllers.controller "LinksController", ['$scope',
  ($scope)->

    $scope.link = []

]

controllers.controller "LinkFormController", ['$scope', 'Link',
  ($scope, Link)->

    $scope.originalUrl = ''

    $scope.addLink = ->
      url = $scope.originalUrl

      Link.create(url).then (response)->
        $scope.link.push response.data.link

      $scope.originalUrl = ''

]
