﻿app.controller("ViewMedia", ["$scope", "$route", "$http", "$location", "$routeParams", "moment", "toastr",
    function ($scope, $route, $http, $location, $routeParams, moment, toastr) {

        $scope.message = "My Media";

        $http.get("/api/media").then(function (results) {
            $scope.mediaItems = results.data;

            var mediaTypeData = $scope.mediaItems.map(function (item) {
                return item.MediaType;
            });
            console.log(mediaTypeData);
            $scope.data = mediaTypeData;
        });

        $scope.viewMediaItemDetails = function (id) {
            $location.path(`/viewMedia/${id}`);
        }

        $scope.editMediaItem = function (id) {
            $location.path(`/viewMedia/edit/${id}`);
        };

        $scope.lendMediaItem = function (id) {
            $location.path(`/viewLentMedia/${id}`);
        }


        //$route.reload();

        $scope.deleteMediaItem = function (id) {
            //$location.path(`/viewMedia/delete/${id}`);
            $http.delete(`api/media/${id}`).then(function () {
                toastr.error('Item deleted', 'You successfully deleted that item from your list.');
                //$route.reload = id;
                $route.reload();
            }).catch(function (error) {
                console.log("error in deleteMediaItem", error);
            });
        };
        
    }
]);

