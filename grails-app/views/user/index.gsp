<%@ page import="org.grateds.inmoweb.User" %>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
    	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
   	    <g:external dir="images" file="main.png" />
		<g:set var="entityName" value="Users" />
        <title><g:message code="Users" args="[entityName]" /></title>
        
    	<!-- Bootstrap core CSS -->
        <g:external dir="css" file="bootstrap.min.css" />
	 
    	<!-- Custom styles for this template -->
		<g:external dir="css" file="dashboard.css" />
  	</head>
  	<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      		<div class="container-fluid">
        		<div class="navbar-header">
          			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          			</button>
          			<a class="navbar-brand" href="/inmoweb">Inmoweb</a>
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
                  						<td><g:link action="show" id="${user.id}">${user.username}</g:link></td>
                  						<td>${user.password}</td>
                					</tr>
              					</g:each>
              				</tbody>
            			</table>
					</div>
        		</div>
      		</div>
 
			<!-- Bootstrap core JavaScript
    		================================================== -->
    		<!-- Placed at the end of the document so the pages load faster --> 
            <g:javascript src="karakakas.js"/>
            <g:javascript src="table-sorter.js"/>
    	</div>
    	<hr>
		<div class="container">
      		<footer>
        		<p>&copy; Grateds 2014</p>
      		</footer>
    	</div> <!-- /container -->
    </body>
     	
</html>

