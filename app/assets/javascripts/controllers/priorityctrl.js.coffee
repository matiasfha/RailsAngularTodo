App.controller 'PriorityCtrl',['$scope','TaskResource','NewTaskService',($scope,TaskResource,NewTaskService) ->
	$scope.taskList = []
	$scope.getCollection = () ->
		if $scope.priority 
			TaskResource.get($scope.priority).then (tasks) ->
								$scope.taskList = tasks.data
	
	$scope.$watch (->
	  NewTaskService.task
	), (value) ->
	  if value? 
	  	$scope.taskList.push value

]

