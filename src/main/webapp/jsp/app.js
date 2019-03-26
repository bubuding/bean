(function (angular) {
    'use strict';
var routeModule = angular.module('routeModule',['ui.router']);
routeModule.config(['$stateProvider','$urlRouterProvider',function ($stateProvider,$urlRouterProvider) {
    $urlRouterProvider.otherwise("/");
    $stateProvider.state('cargo',{
        url:"/cargo",
        templateUrl:'cargo/view.jsp'
    });
    $stateProvider.state('spend',{
        url:"/spend",
        templateUrl:'spend/view.jsp'
    });
    $stateProvider.state('employ',{
        url:"/employ",
        templateUrl:'employ/view.jsp'
    });
    $stateProvider.state('account',{
        url:"/account",
        templateUrl:'account/view.jsp'
    });
    // $routeProvider.
    // when("/load",{
    //     templateUrl:'load/view.jsp',
    //     controller:''
    // }).
    // when("/hhh",{
    //     templateUrl:'spend/view.jsp',
    //     // controller:''
    // }).
    // when("/employ",{
    //     templateUrl:'employ/view.jsp'
    // }).
    // when('/account',{
    //     templateUrl:"account/view.jsp"
    // }).otherwise({
    //     redirectTo:'/account'
    // });
    // $locationProvider.html5Mode(true);

}]);
})(window.angular);
