class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end

    def my_pb_instance
        ProjectBacker.all.select {|project_instance| project_instance.project == self}
        end

    def backers
        self.my_pb_instance.map {|bi| bi.backer}
    end
end