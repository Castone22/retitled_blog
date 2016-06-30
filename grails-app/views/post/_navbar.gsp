
    <ul>
        <li class="left-align"><g:link class="" action="index"><span class="glyphicon glyphicon-home"></span> <g:message code="default.home.label"/></g:link></li>
        <li class="left-align"><g:link class="" action="create"><span class="glyphicon glyphicon-plus"></span> <g:message code="default.new.label" args="[entityName]" /></g:link></li>
        <li class="right-align"><g:remoteLink class="logout" controller="logout" method="post" asynchronous="false" onSuccess="location.reload()"><span class="glyphicon glyphicon-log-out"></span> Logout</g:remoteLink></li>
    </ul>