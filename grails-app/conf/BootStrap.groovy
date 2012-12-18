import com.oldwinner.document.DocumentTag
import com.oldwinner.Identity.Role
import com.oldwinner.Identity.UserRole
import com.oldwinner.project.ProjectCategory
import com.oldwinner.project.Project
import com.oldwinner.Identity.User

class BootStrap {

    def init = { servletContext ->

      //  GoogleChartTagLib.apiString = "http://localhost:8080/junjie/chart?"

        if(DocumentTag.count()==0){
           // createDefaultDocumentTags()
        }
        if(UserRole.count() == 0) {
          //  createDefaultUserRoles()
        }
        if(ProjectCategory.count() == 0) {
            createDefaultCategories()
        }

    }
    def destroy = {
    }

    private void createDefaultDocumentTags(){
        new DocumentTag(name: '项目专家信息').save(flush: true)
        new DocumentTag(name: '项目立项文件').save(flush: true)
        new DocumentTag(name: '项目图纸').save(flush: true)
        new DocumentTag(name: '项目行政许可文件').save(flush: true)
        new DocumentTag(name: '项目会议纪要文件').save(flush: true)
    }

    private void createDefaultUserRoles(){
        new Role(id: 'ROLE_ADMIN', authority: 'ROLE_ADMIN', name: '管理员').save()
        new Role(id: 'ROLE_FIELD_REPRESENTITIVE', authority: 'ROLE_FIELD_REPRESENTITIVE', name: '业主工地代表').save()
        new Role(id: 'ROLE_CONTRACT_REPRESENTITIVE', authority: 'ROLE_CONTRACT_REPRESENTITIVE', name: '业主工地代表').save()
    }

    private void createDefaultCategories(){
        new ProjectCategory(name: '招标').save(flush: true)
        new ProjectCategory(name: '采购').save(flush: true)
        new ProjectCategory(name: '设计').save(flush: true)
    }


}
