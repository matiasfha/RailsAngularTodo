window.App = angular.module('App', ['restangular','ui.bootstrap','ui.event','duScroll'])

App.config ['RestangularProvider','$locationProvider',(RestangularProvider,$locationProvider) -> 
	RestangularProvider.setBaseUrl('/api')
	RestangularProvider.setFullResponse(true);
	RestangularProvider.setRequestSuffix('.json');
	RestangularProvider.setDefaultHeaders {'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')}
	$locationProvider.html5Mode(false);
]

App.run ['$rootScope','$location','$document',($rootScope,$location,$document) ->
	$rootScope.$on '$locationChangeSuccess',(event,newRoute,oldRoute ) ->
		hash = $location.$$path.split('/')[1]
		element = angular.element(document.getElementById(hash))
		$document.scrollToElement(element,30,2000)

		


]