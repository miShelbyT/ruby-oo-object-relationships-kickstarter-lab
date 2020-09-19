require 'pry'

class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def project_instance
    ProjectBacker.all.select {|project_instance| project_instance.backer == self}
    end
    
    def backed_projects 
        self.project_instance.map {|pi| pi.project}
    end

end