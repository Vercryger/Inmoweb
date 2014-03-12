<%@ page import="org.grateds.inmoweb.User" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="ProjectTracker Login" />
        <title><g:message code="Inmoweb Login" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-User" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="logout"><g:message code="Logout" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-User" class="content scaffold-create" role="main">
            <h1><g:message code="Sign in" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${UserInstance}">
            <ul class="errors" role="alert">
                <g:eachError bean="${UserInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="authenticate" >
                <fieldset class="form">
                    <div class="fieldcontain ${hasErrors(bean: UserInstance, field: 'username', 'error')} ">
                        <label for="username">
                            <g:message code="User.username.label" default="User Name" />
                            
                        </label>
                        <g:textField name="username" value="${UserInstance?.username}"/>
                    </div>
                    
                    <div class="fieldcontain ${hasErrors(bean: UserInstance, field: 'password', 'error')} ">
                        <label for="password">
                            <g:message code="User.password.label" default="Password" />
                            
                        </label>
                        <g:field type="password" name="password" value="${UserInstance?.password}"/>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="login" class="save" value="Login" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>