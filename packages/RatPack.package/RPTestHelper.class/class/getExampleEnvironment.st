helper functions
getExampleEnvironment

	^ RPDynamicEnv newFrom: {#rpRouteHandler ->#handler . #preHookCounter -> 0 . #postHookCounter -> 0 . #rpRequest -> (HttpRequest new url: ''). #rpResponse -> (HttpResponse fromString: '')}.