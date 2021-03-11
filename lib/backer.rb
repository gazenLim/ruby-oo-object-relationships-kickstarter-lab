class Backer

attr_accessor :name

def initialize(name)
  @name=name
end


def back_project(project)
  ProjectBacker.new(project,self)
end

def backed_projects
bek = ProjectBacker.all.select {|project| project.backer == self}
bek.map{|all| all.project}

end
 


end