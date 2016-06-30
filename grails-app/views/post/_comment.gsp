<g:formRemote name="comment" url="[controller:'comment', action:'save']">
    <div class="${hasErrors(bean: commentInstance, field: 'content', 'error')} required">
        <div class="input-group">
             <g:textArea class = "form-control" id="content" name="content" maxlength="5000" required="" value="${content}" placeholder="Comment"/>
            <span class="input-group-btn">
                <g:submitButton name="create" id="commentSubmit" class="btn btn-primary" type="button" value="Go!" />
            </span>
        </div>
    </div>
</g:formRemote>