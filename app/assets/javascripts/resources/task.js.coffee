App.factory 'TaskResource',['Restangular',(Restangular) ->
	return Restangular.all('tasks')
]