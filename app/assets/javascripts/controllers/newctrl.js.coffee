App.controller 'NewCtrl',['$scope','TaskResource','NewTaskService',($scope,TaskResource,NewTaskService) ->
	
	$scope.sendForm = () ->
		if $scope.newTask.$valid
			task = $scope.task
			TaskResource.post({task: task}).then (t) ->
				NewTaskService.task = t.data
			$scope.task = {}
			

]