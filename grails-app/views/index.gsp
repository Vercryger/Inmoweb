<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel='shortcut icon' href='images/main.png'>

    <title>Welcome to Grails</title>

    <!-- Bootstrap core CSS -->
    <link href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${resource(dir: 'css', file: 'jumbotron.css')}" type="text/css" rel="stylesheet">
	
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          </button>
          <a class="navbar-brand" href="/inmoweb">Inmoweb</a>
        </div>
      </div>
    </div>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Welcome to Grails!</h1>
        <p>Congratulations, you have successfully started your first Grails application! At the moment
			   this is the default page, feel free to modify it to either redirect to a controller or display whatever
			   content you may choose. Below is a list of controllers that are currently deployed in this application,
			   click on each to execute its default action:</p>
      </div>
    </div>
	<div class="container"id="controller-list" role="navigation">
		<h2>Available Controllers:</h2>
		<ul>
			<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
				<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
			</g:each>
		</ul>
	</div>
	<hr>
	<div class="container">
      <footer>
        <p>&copy; Grateds 2014</p>
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
