
<%@ page import="org.grateds.inmoweb.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.e_mail}">
				<li class="fieldcontain">
					<span id="e_mail-label" class="property-label"><g:message code="user.e_mail.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="e_mail-label"><g:fieldValue bean="${userInstance}" field="e_mail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.adress}">
				<li class="fieldcontain">
					<span id="adress-label" class="property-label"><g:message code="user.adress.label" default="Adress" /></span>
					
						<span class="property-value" aria-labelledby="adress-label"><g:link controller="adress" action="show" id="${userInstance?.adress?.id}">${userInstance?.adress?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.buildings}">
				<li class="fieldcontain">
					<span id="buildings-label" class="property-label"><g:message code="user.buildings.label" default="Buildings" /></span>
					
						<g:each in="${userInstance.buildings}" var="b">
						<span class="property-value" aria-labelledby="buildings-label"><g:link controller="building" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.first_name}">
				<li class="fieldcontain">
					<span id="first_name-label" class="property-label"><g:message code="user.first_name.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="first_name-label"><g:fieldValue bean="${userInstance}" field="first_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.last_name}">
				<li class="fieldcontain">
					<span id="last_name-label" class="property-label"><g:message code="user.last_name.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="last_name-label"><g:fieldValue bean="${userInstance}" field="last_name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.realEstates}">
				<li class="fieldcontain">
					<span id="realEstates-label" class="property-label"><g:message code="user.realEstates.label" default="Real Estates" /></span>
					
						<g:each in="${userInstance.realEstates}" var="r">
						<span class="property-value" aria-labelledby="realEstates-label"><g:link controller="realEstate" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${userInstance?.id}" />
					<g:link class="edit" action="edit" id="${userInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
