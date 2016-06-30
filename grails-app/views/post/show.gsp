
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
		<div class="nav row" role="navigation">
			<ul>
				<li class="left-align"><g:link class="" action="index"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></g:link></li>
				<li class="left-align"><g:link class="" action="create"><span class="glyphicon glyphicon-plus"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li class="right-align">
                    <g:form url="[resource:postInstance, action:'delete']" method="DELETE">
                        <g:actionSubmit class="delete btn btn-danger right-align" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                    </g:form>
                </li>
                <li class="right-align">
                    <g:form url="[resource:postInstance, action:'edit']">
                        <g:actionSubmit class="delete btn btn-success right-align" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" />
                    </g:form>
                </li>
			</ul>
		</div>
		<div id="show-post" class="content row" role="main">
            <g:if test="${postInstance?.title}">
                <div class="fieldcontain">
                    <h1>
                        <span aria-labelledby="title-label"><g:fieldValue bean="${postInstance}" field="title"/></span>
                    </h1>
                </div>
            </g:if>


                <g:if test="${postInstance?.user && postInstance?.dateCreated}">
                    <div class="fieldcontain">
                        <div class = "row">
                            <div class = col-md-6>
                                <span id="user-name-label" class="property-label"><g:message code="post.user.username.label" default="Author" /></span>
                                <span class="property-value" aria-labelledby="user.username.label-label"><g:fieldValue bean="${postInstance}" field="user.username"/></span>
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

		</div>
    <div id = "comment" class = "row">
        <div class = "col-md-1"></div>
        <div class = "col-md-4">
            <g:render template="comment"/>
        </div>
        <div class="col-md-2">

        </div>
        <div class = "col-md-4"></div>



    </div>
	</body>
</html>
