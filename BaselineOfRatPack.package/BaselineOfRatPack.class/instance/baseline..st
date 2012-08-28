baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec configuration: 'KomHttpServer' with: [
			spec
				version: #stable;
				repository: 'http://www.squeaksource.com/MetacelloRepository'].

		spec package: 'RatPack' with: [spec requires: #('KomHttpServer')]].

	spec for: #squeak do: [
		spec package: 'VB-Regex' with: [
			spec repository: 'http://www.squeaksource.com/Regex' ].
		spec package: 'RatPack' with: [
			spec requires: #('VB-Regex').
			spec postLoadDoIt: #squeakRegisterInWorldMenu]]..
