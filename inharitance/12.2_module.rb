
module University
  ROLE = %w[student manager].freeze

  class User

    attr_accessor :role, :nick_name

    def initialize(nick, role = ROLE[0])
      @role = role if ROLE.include?(role)
      @nick_name = nick
    end

    def to_s
      "#{@role} with nick #{@nick_name}"
    end
  end

  class Group
    attr_reader :students

    def initialize(students = [])
      @students = students
    end

    def add(user)
      students.push(user) if user.role == 'student'
    end
  end

end


st = University::User.new('Student 1')
user = University::User.new('Manager', 'manager')
admin = University::User.new('Admin', 'admin')
group = University::Group.new
group.add(st)
group.add(user)
group.add(admin)
p st
p user
p admin
p group