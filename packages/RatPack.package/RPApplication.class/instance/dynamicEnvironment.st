private
dynamicEnvironment

	^ dynamicEnv at: Processor activeProcess ifAbsentPut: [IdentityDictionary new]