package com.oldwinner.project

import grails.converters.JSON

class TaskController {

   def listAsJson = {
       def fcal = Calendar.getInstance()
       if (params.start)
           fcal.setTime(new Date(Long.parseLong(params.start)))
       def lcal = Calendar.getInstance()
       if (params.end)
           lcal.setTime(new Date(Long.parseLong(params.end)))
       def listOfTasks = Task.findAll("from Task as t where t.startDate>:startDate AND t.endDate <:endDate",
               [startDate:fcal.getTime(), endDate: lcal.getTime()])

       def listOfJsTasks = []
       listOfTasks.each{ task ->
           def jsTask = [:]
           jsTask.id = task.id
           jsTask.name = task.name
           jsTask.title = task.description?.length()>15? task.description.substring(0,14)+"..." :task.description
           jsTask.description = task.description
           jsTask.start = task.startDate
           jsTask.end = task.endDate
           jsTask.showTime = false
           jsTask.url = "show?id=${task.id}"
           jsTask.className="scheduled"
           jsTask.allDay = true
           listOfJsTasks.add(jsTask)

       }

       render listOfJsTasks as JSON

   }

   def listAsCalendar = {
       [tasks: Task.findAll()]
   }
}
