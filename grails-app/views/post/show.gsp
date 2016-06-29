
<%@ page import="com.manifestcorp.retitledengine.Post" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body class = "container">
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content" role="main">
            <g:if test="${postInstance?.title}">
                <li class="fieldcontain">
                    <h1>
                        <span aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
                    </h1>
                </li>
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



            <div class="col-md-12"><br/></div>
            <div class = col-md-3>
			<g:form url="[resource:postInstance, action:'delete']" method="DELETE">
                <fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${postInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
            </div>
		</div>
	</body>
</html>
