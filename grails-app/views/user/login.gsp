<%@ page import="org.grateds.inmoweb.User" %>
<!doctype html>
<html>
	<head>
      	<meta charset="utf-8">
    	<link rel='shortcut icon' href='../images/main.png'>
    	<g:set var="entityName" value="Sign In" />
        <title><g:message code="Sign In" args="[entityName]" /></title>
    	
    	<!-- Bootstrap core CSS -->
    	<link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">

	    <!-- Custom styles for this template -->
    	<link href="http://getbootstrap.com/examples/signin/signin.css" rel="stylesheet">
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
          			<a class="navbar-brand" href="/inmoweb">Inmoweb</a>
        		</div>
        		<div class="navbar-collapse collapse">
          			<ul class="nav navbar-nav navbar-right">
            			<li><a href="/inmoweb/help/login">Help</a></li>
          			</ul>
        		</div>
      		</div>
    	</div>	
        <div class="container content scaffold-create">
	  		<g:form action="authenticate" class="form-signin">
	  			<center>
      				<h1>We don't know you..</h1>
      				<g:img dir="images" file="anonymous.gif" width="125" height="125" class="img-responsive img-circle" alt="Responsive image"/>
      				<h2 class="form-signin-heading">Please sign in</h2>
       			</center>
            	<g:hasErrors bean="${UserInstance}">
            		<ul class="errors" role="alert">
                		<g:eachError bean="${UserInstance}" var="error">
                			<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                		</g:eachError>
            		</ul>
            	</g:hasErrors>
               	<fieldset class="form">
               		<div class="fieldcontain ${hasErrors(bean: UserInstance, field: 'username', 'error')} required">
                        <label for="username">
                            <g:message code="User.username.label" default="" />
                        </label>
                        <g:textField required="required" class="form-control" placeholder="Username" name="username" value="${UserInstance?.username}"/>
                    </div>
                    <div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
                        <label for="password">
                            <g:message code="User.password.label" default="" />
                        </label>
                        <g:field required="required" class="form-control" type="password" placeholder="Password" name="password" value="${UserInstance?.password}"/>
                    </div>
            	</fieldset>
            	<label class="checkbox">
        			<input type="checkbox" value="remember-me"> Remember me 
        		</label>
               	<fieldset class="buttons">
                	<g:submitButton name="login" class="save btn btn-lg btn-primary btn-block" value="Login" />
               	</fieldset>
               	<h6><a href="/inmoweb/help/login">Need help?</a></h6>
           	</g:form>
           	<center><g:link class="btn btn-success" action="create"><g:message code="Sign Up" args="[entityName]" /></g:link></center>
         	<hr>
         	<div class="container">
         		<g:if test="${flash.message}">
            		<div class="message alert alert-danger alert-dismissable" role="status">
            			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            			${flash.message}
            		</div>
            	</g:if>
            </div>
           	<hr>
			<div class="container">
      			<footer>
        			<p>&copy; Grateds 2014</p>
      			</footer>
    		</div> <!-- /container -->
        </div><!-- /container -->
    	<!-- Bootstrap core JavaScript
    	================================================== -->
    	<!-- Placed at the end of the document so the pages load faster -->
    	<script src="../js/jquery.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
    </body>
</html>
