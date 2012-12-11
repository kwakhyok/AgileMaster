package com.oldwinner.project

class ProjectController {

   def index = {
       redirect(action: list)
   }

   def list = {
       [projects: Project.findAll(), projectTotal: Project.count()]
   }

    def create = {

    }


   def ajaxAdd={

   }



}
