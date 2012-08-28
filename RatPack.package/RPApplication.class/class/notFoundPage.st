constants
notFoundPage

	 ^ '<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	text-align: center;
	font-family: helvetica,arial;
	font-size: 22px;
	color: #888;
	margin:20px
}
#c {
	margin: 0 auto;
	width: 500px;
	text-align: left
}
.methodName { color: black; }
.pragmaKey { color: green; }
.string { color: purple; }
.return { color: darkRed; }
</style>
</head>
<body>
<h2>The Rat Pack doesn&rsquo;t appear in this flick.</h2>
<div id="c">
Try this:
<pre>
<span class="methodName">handleRequestFor<%=

	(self request pathParts ifNil: [#('''')]) inject: '''' into: [:acc :next | acc, next capitalized]
	
%>
</span>
  &lt;<span class="pragmaKey"><%=

self request method asLowercase 

%></span>: <span class="string">''<%=

self request url

%>''</span>&gt;
  <span class="return">^</span> <span class="string">''Hello World''</span>
</pre>
</div>
<div id="c">
Or that:
<pre>
<span class="methodName">handleRequestFor<%=

	(self request pathParts ifNil: [#('''')]) inject: '''' into: [:acc :next | acc, next capitalized]

%>: argument</span>
  &lt;<span class="pragmaKey"><%=

self request method asLowercase

%></span>: <span class="string">''<%=

	self request pathParts isEmpty
		ifTrue: [''(.*)'']
		ifFalse: [(self request pathParts allButLast inject: '''' into: [:acc :next | acc, ''/'', next]), ''/%'']

%>''</span>&gt;
  <span class="return">^</span> <span class="string">''Hello ''</span>, argument
</pre>
</div>
<% self request pathParts ifNotEmpty: [ %>
<div id="c">
Or even this:
<pre>
<span class="methodName">handleRequestFor<%=

	(self request pathParts ifNil: [#('''')]) inject: '''' into: [:acc :next | acc, next capitalized]

%>: argument</span>
  &lt;<span class="pragmaKey"><%=

self request method asLowercase

%></span>: <span class="string">''<%=

	(self request pathParts allButLast inject: '''' into: [:acc :next | acc, ''/'', next]), ''/(.+)''

%>''</span>&gt;
  <span class="return">^</span> <span class="string">''Hello ''</span>, argument
</pre>
</div>
<% ]. %>
</body>
</html>'
