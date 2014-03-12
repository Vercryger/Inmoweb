<%@ page import="org.grateds.inmoweb.User" %>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<meta name="description" content="">
    	<meta name="author" content="">
		<link rel='shortcut icon' href='../images/main.png'>
    	<title>Inmoweb . Users</title>

    	<!-- Bootstrap core CSS -->
    	<link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css" rel="stylesheet">
	 
    	<!-- Custom styles for this template -->
		<link href="${resource(dir: 'css', file: 'dashboard.css')}" type="text/css" rel="stylesheet">
  	</head>
  	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      		<div class="container-fluid">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            			<span class="sr-only">Toggle navigation</span>
           	 			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
            			<span class="icon-bar"></span>
          			</button>
          			<a class="navbar-brand" href="http://localhost:8080/inmoweb">Inmoweb</a>
        		</div>
        		<div class="navbar-collapse collapse">
          			<ul class="nav navbar-nav navbar-right">
            			<li><a href="#">Dashboard</a></li>
            			<li><a href="#">Settings</a></li>
            			<li><a href="#">Profile</a></li>
            			<li><a href="#">Help</a></li>
          			</ul>
        		</div>
      		</div>
    	</div>
		<div class="container-fluid">
      		<div class="row">
        		<div class="col-sm-3 col-md-2 sidebar">
          			<ul class="nav nav-sidebar">
            			<li class="active"><a href="#">Users</a></li>
            			<li><a href="#">Reports</a></li>
            			<li><a href="#">Analytics</a></li>
            			<li><a href="#">Export</a></li>
          			</ul>
          			<ul class="nav nav-sidebar">
            			<li><a href="">Nav item</a></li>
            			<li><a href="">Nav item again</a></li>
            			<li><a href="">One more nav</a></li>
            			<li><a href="">Another nav item</a></li>
            			<li><a href="">More navigation</a></li>
          			</ul>
          			<ul class="nav nav-sidebar">
            			<li><a href="">Nav item again</a></li>
            			<li><a href="">One more nav</a></li>
            			<li><a href="">Another nav item</a></li>
          			</ul>
        		</div>
        		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
        	 		<h2 class="sub-header">User list</h2>
          			<div class="table-responsive">
          				<table class="zebra-striped" id="sortTableExample">
              				<thead>
                				<tr>
                  					<th>Id</th>
                  					<th class="yellow">Version</th>
                  					<th class="purple">First name</th>
                  					<th class="green">Last name</th>
                  					<th class="red">e-mail</th>
                  					<th class="blue">Username</th>
                  					<th>Password</th>
                				</tr>
              				</thead>
              				<tbody>
              					<g:each in="${users}" var="user">
              						<tr>
              							<td>${user.id}</td>
                  						<td>${user.version}</td>
                  						<td>${user.first_name}</td>
                  						<td>${user.last_name}</td>
                  						<td>${user.e_mail}</td>
                  						<td><a href="/inmoweb/user/show/${user.id}">${user.username}</a></td>
                  						<td>${user.password}</td>
                					</tr>
              					</g:each>
              				</tbody>
            			</table>
					</div>
        		</div>
      		</div>
      		<footer>
        		<p>&copy; Grateds 2014</p>
      		</footer>
			<!-- Bootstrap core JavaScript
    		================================================== -->
    		<!-- Placed at the end of the document so the pages load faster --> 
    		<script src="../js/karakakas.js" type="text/javascript"></script>
    		<script src="../js/table-sorter.js" type="text/javascript"></script>
    	</div>
    </body>
</html>

