<h1>New Project</h1>

<div id="newProject" class="standardForm">
    <input id="charLeft" name="charLeft" size="5" value="160" readonly="true"/>
    <g:if test="${flash.message}">
        <div class="flash">
            ${flash.message}
        </div>
    </g:if>

    <p>
        <g:form action="ajaxAdd" name="projectMessage">
            <label for="name">Name</label>
            <g:textField name="name" id="projectName"/>
            <label for="description">Short Info</label>
            <g:textArea id="description" name="description" rows="8" cols="1" class="formHuge"
                        onkeydown="updateCounter()"/>
            <br/>
            <label for="startDate">Start Date</label>
            <g:datePicker name="startDate"/>
            <label for="endDate">End Date</label>
            <g:datePicker name="endDate"/>
            <label for="category">Category</label>
            <g:select optionKey="id" from="${com.oldwinner.project.ProjectCategory.list()}" name="project.id"
                      value="${project?.category?.id}"></g:select>
            <g:submitToRemote value="Add Project" url="[controller: 'project', action: 'addProjectAjax']"
                              update="allProjects" onSuccess="clearProject(e)" onLoading="showSpinner(true)"
                              onComplete="showSpinner(false)">
            </g:submitToRemote>

        </g:form>

        <g:javascript>

            function showSpinner(visible){
                $('spinner').style.display = visible ? "inline" : "none"
            }

            function clearProject(e){

            }

            function updateCounter(){
                $('charLeft').value = 160 - $F("description").length
            }
            updateCounter()
        </g:javascript>

    </p>

</div>