
<%@ page import="com.manifestcorp.retitledengine.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()">Logout</g:remoteLink></li>
			</ul>
		</div>
		<div id="list-post" class="content" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <g:each in="${postInstanceList}" status="i" var="postInstance">
                <div id="show-post" class="content" role="main">
                <g:if test="${postInstance?.title}">
                    <div class="fieldcontain">
                        <h2>
                             <g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "title")}</g:link>
                        </h2>
                    </div>
                </g:if>


                <g:if test="${postInstance?.author && postInstance?.dateCreated}">
                    <div class="fieldcontain">
                        <div class = "row">
                            <div class = col-md-6>
                                <span id="author-label" class="property-label"><g:message code="post.author.label" default="Author" /></span>
                                <span class="property-value" aria-labelledby="author-label"><g:fieldValue bean="${postInstance}" field="author"/></span>
                            </div>
                            <div class = "col-md-2"></div>
                            <div class = "col-md-4">
                                <span id="dateCreated-label" class="property-label"><g:message code="post.dateCreated.label" default="Date Posted" /></span>
                                <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${postInstance?.dateCreated}" /></span>
                            </div>
                        </div>
                    </div>
                </g:if>

                <g:if test="${postInstance?.content}">
                    <div class="fieldcontain col-md-12">
                        <span class="col-md-1"></span>

                        <span class="col-md-10" aria-labelledby="content-label"><p><g:fieldValue bean="${postInstance}" field="content"/></p></span>
                        <span class="col-md-1"></span>
                    </div>

                </g:if>

            </g:each>
			<div class="pagination">
				<g:paginate total="${postInstanceCount ?: 0}" />
			</div>
		</div>

	</body>
</html>
