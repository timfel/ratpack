constants
errorPage

	^ '<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title><%= anException class %> at <%= self request url %></title>

<script type="text/javascript">
//<!--
function toggle(id) {
var pre = document.getElementById("pre-" + id);
var post = document.getElementById("post-" + id);
var context = document.getElementById("context-" + id);

if (pre.style.display == ''block'') {
pre.style.display = ''none'';
context.style.background = "none";
} else {
pre.style.display = ''block'';
context.style.background = "#fffed9";
}
}

function toggleBacktrace(){
var bt = document.getElementById("backtrace");
var toggler = document.getElementById("expando");

if (bt.className == ''condensed'') {
bt.className = ''expanded'';
toggler.innerHTML = "(condense)";
} else {
bt.className = ''condensed'';
toggler.innerHTML = "(expand)";
}
}
//-->
</script>

<style type="text/css" media="screen">
* {margin: 0; padding: 0; border: 0; outline: 0;}
div.clear {clear: both;}
body {background: #EEEEEE; margin: 0; padding: 0;
font-family: ''Lucida Grande'', ''Lucida Sans Unicode'',
''Garuda'';}
code {font-family: ''Lucida Console'', monospace;
font-size: 12px;}
li {height: 18px;}
ul {list-style: none; margin: 0; padding: 0;}
ol:hover {cursor: pointer;}
ol li {white-space: pre;}
#explanation {font-size: 12px; color: #666666;
margin: 20px 0 0 100px;}
/* WRAP */
#wrap {width: 1000px; background: #FFFFFF; margin: 0 auto;
padding: 30px 50px 20px 50px;
border-left: 1px solid #DDDDDD;
border-right: 1px solid #DDDDDD;}
/* HEADER */
#header {margin: 0 auto 25px auto;}
#header img {float: left;}
#header #summary {float: left; margin: 12px 0 0 20px; width:660px;
font-family: ''Lucida Grande'', ''Lucida Sans Unicode'';}
h1 {margin: 0; font-size: 36px; color: #981919;}
h2 {margin: 0; font-size: 22px; color: #333333;}
#header ul {margin: 0; font-size: 12px; color: #666666;}
#header ul li strong{color: #444444;}
#header ul li {display: inline; padding: 0 10px;}
#header ul li.first {padding-left: 0;}
#header ul li.last {border: 0; padding-right: 0;}
/* BODY */
#backtrace,
#get,
#post,
#cookies,
#rack {width: 980px; margin: 0 auto 10px auto;}
p#nav {float: right; font-size: 14px;}
/* BACKTRACE */
a#expando {float: left; padding-left: 5px; color: #666666;
font-size: 14px; text-decoration: none; cursor: pointer;}
a#expando:hover {text-decoration: underline;}
h3 {float: left; width: 100px; margin-bottom: 10px;
color: #981919; font-size: 14px; font-weight: bold;}
#nav a {color: #666666; text-decoration: none; padding: 0 5px;}
#backtrace li.frame-info {background: #f7f7f7; padding-left: 10px;
font-size: 12px; color: #333333;}
#backtrace ul {list-style-position: outside; border: 1px solid #E9E9E9;
border-bottom: 0;}
#backtrace ol {width: 920px; margin-left: 50px;
font: 10px ''Lucida Console'', monospace; color: #666666;}
#backtrace ol li {border: 0; border-left: 1px solid #E9E9E9;
padding: 2px 0;}
#backtrace ol code {font-size: 10px; color: #555555; padding-left: 5px;}
#backtrace-ul li {border-bottom: 1px solid #E9E9E9; height: auto;
padding: 3px 0;}
#backtrace-ul .code {padding: 6px 0 4px 0;}
#backtrace.condensed .system,
#backtrace.condensed .framework {display:none;}
/* REQUEST DATA */
p.no-data {padding-top: 2px; font-size: 12px; color: #666666;}
table.req {width: 980px; text-align: left; font-size: 12px;
color: #666666; padding: 0; border-spacing: 0;
border: 1px solid #EEEEEE; border-bottom: 0;
border-left: 0;
clear:both}
table.req tr th {padding: 2px 10px; font-weight: bold;
background: #F7F7F7; border-bottom: 1px solid #EEEEEE;
border-left: 1px solid #EEEEEE;}
table.req tr td {padding: 2px 20px 2px 10px;
border-bottom: 1px solid #EEEEEE;
border-left: 1px solid #EEEEEE;}
/* HIDE PRE/POST CODE AT START */
.pre-context,
.post-context {display: none;}

table td.code {width:750px}
table td.code div {width:750px;overflow:hidden}
</style>
</head>
<body>

<% startContext := anException signalerContext 
   		   	       ifNotNilDo: [:ctxt | ctxt]
				ifNil: [thisContext]. %>

<div id="wrap">
<div id="header">
<img src="<%= self request url %>/__sinatra__/500.png" alt="application error" height="161" width="313" />
<div id="summary">
<h1><strong><%= anException class %></strong> at <strong><%= self request url %>
</strong></h1>
<h2><%= anException messageText  %></h2>
<ul>
<li class="first"><strong>file:</strong> <code>
<%= startContext methodClass  %></code></li>
<li><strong>location:</strong> <code><%= startContext selector  %>
</code></li>
<li class="last"><strong>line:
</strong> <%= startContext pc %></li>
</ul>
</div>
<div class="clear"></div>
</div>

<div id="backtrace" class=''condensed''>
<h3>BACKTRACE</h3>
<p><a href="#" id="expando"
onclick="toggleBacktrace(); return false">(expand)</a></p>
<p id="nav"><strong>JUMP TO:</strong>
<a href="#get-info">GET</a>
<a href="#post-info">POST</a>
<a href="#cookie-info">COOKIES</a>
<a href="#env-info">ENV</a>
</p>
<div class="clear"></div>

<ul id="backtrace-ul">

<% id := 1. %>
<% (startContext stackOfSize: 100) do: [:frame| %>

<li class="frame-info <%= frame methodClass %>">
<code><%= frame methodClass %></code> in
<code><strong><%= frame selector %></strong></code>
</li>

<li class="code <%= frame methodClass %>">
<ol start="<%= 1 %>"
class="pre-context" id="pre-<%= id %>"
onclick="toggle(<%= id %>);">
<% frame tempNames doWithIndex: [:title :index | %>
<li class="pre-context-line"><code><%= (title asString, 
    $: asString, Character space asString,
    (([frame tempAt: index] on: Error do: [nil]) printStringLimitedTo: (160 - 3 - title size max: 1))) asHtml %></code></li>
<% ]. %>
</ol>

<ol start="<%= frame pc %>" class="context" id="<%= id %>"
onclick="toggle(<%= id %>);">
<li class="context-line" id="context-<%= id %>"><code><%= frame sourceCode asString asHtml %></code></li>
</ol>

<div class="clear"></div>
</li>

<% id := id + 1. %>
<% ]. %>

</ul>
</div> <!-- /BACKTRACE -->

<div id="get">
<h3 id="get-info">GET</h3>
<% self request method = ''GET'' ifTrue: [ %>
<table class="req">
<tr>
<th>Variable</th>
<th>Value</th>
</tr>
<% self request getFields associationsDo: [:assoc| %>
<tr>
<td><%= assoc key asString asHtml %></td>
<td class="code"><div><%= assoc value printString asHtml %></div></td>
</tr>
<% ]. %>
</table>
<% ] ifFalse: [ %>
<p class="no-data">No GET data.</p>
<% ]. %>
<div class="clear"></div>
</div> <!-- /GET -->

<div id="post">
<h3 id="post-info">POST</h3>
<% self request method = ''POST'' ifTrue: [ %>
<table class="req">
<tr>
<th>Variable</th>
<th>Value</th>
</tr>
<% self request postFields associationsDo: [:assoc| %>
<tr>
<td><%= assoc key asString asHtml %></td>
<td class="code"><div><%= assoc value printString asHtml %></div></td>
</tr>
<% ]. %>
</table>
<% ] ifFalse: [ %>
<p class="no-data">No POST data.</p>
<% ]. %>
<div class="clear"></div>
</div> <!-- /POST -->

<div id="cookies">
<h3 id="cookie-info">COOKIES</h3>
<% self request cookies isEmpty ifFalse: [ %>
<table class="req">
<tr>
<th>Variable</th>
<th>Value</th>
</tr>
<% self request cookies associationsDo: [:assoc| %>
<tr>
<td><%= assoc key asString asHtml %></td>
<td class="code"><div><%= assoc value printString asHtml %></div></td>
</tr>
<% ]. %>
</table>
<% ] ifTrue: [ %>
<p class="no-data">No cookie data.</p>
<% ]. %>
<div class="clear"></div>
</div> <!-- /COOKIES -->

<p id="explanation">You''re seeing this error because you have
enabled the <code>deployment</code> mode.</p>
</div> <!-- /WRAP -->
</body>
</html>'