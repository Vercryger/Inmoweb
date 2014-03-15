<%@ page import="org.grateds.inmoweb.User" %>
<!doctype html>
<html>
	<head>
      	<meta charset="utf-8">
    	<link rel='shortcut icon' href='../images/main.png'>
    	<title><g:message code="Sign In" args="[entityName]" /></title>
    
    	<!-- Bootstrap core CSS -->
    	<link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

	    <!-- Custom styles for this template -->
    	<link href="http://getbootstrap.com/examples/signin/signin.css" rel="stylesheet">
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top" role="main">
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
      		</div>
      	</div>
        <div id="create-User" class="container content scaffold-create">
	  		<g:form action="authenticate" class="form-signin">
	  			<center>
      				<h1>We don't know you..</h1>
      				<img src="../images/anonymous.gif" class="img-responsive img-circle" alt="Responsive image">
      				<h2 class="form-signin-heading">Please sign in</h2>
       			</center>
               	<fieldset class="form">
              		<g:textField class="form-control" placeholder="Username" name="username" value="${UserInstance?.username}"/>
            		<g:field class="form-control" type="password" placeholder="Password" name="password" value="${UserInstance?.password}"/>
            	</fieldset>
            	<label class="checkbox">
        			<input type="checkbox" value="remember-me"> Remember me 
        		</label>
               	<fieldset class="buttons">
                	<g:submitButton name="login" class="save btn btn-lg btn-primary btn-block" value="Login" />
               	</fieldset>
               	<h6><a href="/inmoweb/help/login">Need help?</a></h6>
           	</g:form>
        </div><!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    </body>
</html>
