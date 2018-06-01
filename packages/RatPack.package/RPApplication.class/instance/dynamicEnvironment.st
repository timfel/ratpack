private
dynamicEnvironment

	^ dynamicEnv at: Processor activeProcess ifAbsentPut: [ RPDynamicEnv new. ]