<%@ page import="org.grateds.inmoweb.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'e_mail', 'error')} required">
	<label for="e_mail">
		<g:message code="user.e_mail.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="e_mail" required="" value="${userInstance?.e_mail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'adress', 'error')} required">
	<label for="adress">
		<g:message code="user.adress.label" default="Adress" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="adress" name="adress.id" from="${org.grateds.inmoweb.Adress.list()}" optionKey="id" required="" value="${userInstance?.adress?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'buildings', 'error')} ">
	<label for="buildings">
		<g:message code="user.buildings.label" default="Buildings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.buildings?}" var="b">
    <li><g:link controller="building" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="building" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'building.label', default: 'Building')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'first_name', 'error')} ">
	<label for="first_name">
		<g:message code="user.first_name.label" default="Firstname" />
		
	</label>
	<g:textField name="first_name" value="${userInstance?.first_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'last_name', 'error')} ">
	<label for="last_name">
		<g:message code="user.last_name.label" default="Lastname" />
		
	</label>
	<g:textField name="last_name" value="${userInstance?.last_name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'realEstates', 'error')} ">
	<label for="realEstates">
		<g:message code="user.realEstates.label" default="Real Estates" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.realEstates?}" var="r">
    <li><g:link controller="realEstate" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="realEstate" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'realEstate.label', default: 'RealEstate')])}</g:link>
</li>
</ul>

</div>

