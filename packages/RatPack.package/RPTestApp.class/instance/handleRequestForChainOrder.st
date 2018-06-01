routes
handleRequestForChainOrder
	
	<get: '/chainOrder'>
	<middleware: #(#RPWordCountMiddleware #globalMiddleware #RPUppercaseMiddleware) >