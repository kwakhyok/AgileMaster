/* Copyright 2010 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import com.oldwinner.Identity.*
import com.oldwinner.project.ProjectCategory
import com.oldwinner.project.Project
import com.oldwinner.project.Task

/**
 *
 * @author <a href='mailto:limcheekin@vobject.com'>Lim Chee Kin</a>
 *
 * @since 5.4
 */

class VacationRequestBootStrap {
    def springSecurityService

    def init = { servletContext ->
        // If you are sending username using gmail, you need to uncomment this code block
        ["mail.smtp.auth": "true",
                "mail.smtp.socketFactory.port": "465",
                "mail.smtp.socketFactory.class": "javax.net.ssl.SSLSocketFactory",
                "mail.smtp.socketFactory.fallback": "false",
                "mail.smtp.starttls.required": "true"].each { k, v ->
            System.setProperty k, v
        }

        environments {
            production { createUsersAndGroups() }
            development {
                createUsersAndGroups()

            }
        }
    }

    private void createUsersAndGroups() {
        def userRole = Role.findByAuthority('ROLE_USER')
        if (!userRole) {
            userRole = new Role(authority: 'ROLE_USER', name: 'User')
            userRole.id = 'ROLE_USER'
            userRole.save(failOnError: true)
        }
        def managerRole = Role.findByAuthority('ROLE_MANAGER')
        if (!managerRole) {
            managerRole = new Role(authority: 'ROLE_MANAGER', name: 'Manager')
            managerRole.id = 'ROLE_MANAGER'
            managerRole.save(failOnError: true)
        }
        def yguo = User.findByUsername('yguo') ?: new User(
                username: 'yguo',
                email: 'guo@oldwinner.com',
                password: springSecurityService.encodePassword('yguo'),
                firstName: 'Yi',
                lastName: 'Guo',
                enabled: true).save(failOnError: true)
        def eric = User.findByUsername('eric') ?: new User(
                username: 'eric',
                email: 'eric@oldwinner.com',
                firstName: 'Eric',
                lastName: 'Guo',
                password: springSecurityService.encodePassword('eric'),
                enabled: true).save(failOnError: true)
        def neng = User.findByUsername('neng') ?: new User(
                username: 'neng',
                email: 'neng@oldwinner.com',
                firstName: 'Neng',
                lastName: 'Wang',
                password: springSecurityService.encodePassword('neng'),
                enabled: true).save(failOnError: true)

        if (!yguo.authorities.contains(userRole)) {
            UserRole.create yguo, userRole
        }

        if (!eric.authorities.contains(managerRole)) {
            UserRole.create eric, managerRole
        }

        if (!neng.authorities.contains(managerRole)) {
            UserRole.create neng, managerRole
        }


        def cat1 = ProjectCategory.findByName('招标')
        new Project(name: '幕墙招标',category: cat1, owner: eric, startDate: new Date(), endDate: new Date()).save(flush: true, failOnError: true)
        new Project(name: '设计招标',category: cat1, owner: eric, startDate: new Date(), endDate: new Date()).save(flush: true, failOnError: true)
        new Project(name: '弱电招标',category: cat1, owner: eric, startDate: new Date(), endDate: new Date()).save(flush: true, failOnError: true)
        new Project(name: '材质招标',category: cat1, owner: eric, startDate: new Date(), endDate: new Date()).save(flush: true, failOnError: true)
        new Project(name: '地板招标',category: cat1, owner: eric, startDate: new Date(), endDate: new Date()).save(flush: true, failOnError: true)


        def user1 = User.findByUsername('neng')
        new Organization( name: '烟台幕墙工程有限公司1',
                code: 'sdytmq001', profile:
                        new OrganizationProfile(fullName:'烟台幕墙工程有限公司1', address: '雁归路38号 260035', registeredCapital: 1000000)).save()
        new Organization( name: '烟台幕墙工程有限公司2', code: 'sdytmq002').save()
        new Organization(name: '烟台幕墙工程有限公司3', code: 'sdytmq003').save()


        def project = Project.findByName('幕墙招标')
        new Task(name: '幕墙招标1', project: project, description: '幕墙招标烟台幕墙工程有限公司1', startDate: new Date(112,11,5), endDate: new Date(112, 11,18)).save(failOnError: true)
        new Task(name: '幕墙招标2', project: project, description: '幕墙招标烟台幕墙工程有限公司2', startDate: new Date(112,10,15), endDate: new Date(112, 10,28)).save(failOnError: true)
        new Task(name: '幕墙招标3', project: project, description: '幕墙招标烟台幕墙工程有限公司3', startDate: new Date(112,10,11), endDate: new Date(112, 10,18)).save(failOnError: true)
        new Task(name: '幕墙招标4', project: project, description: '幕墙招标烟台幕墙工程有限公司4', startDate: new Date(112,11,2), endDate: new Date(112, 11,18)).save(failOnError: true)


    }




    def destroy = {
    }
} 