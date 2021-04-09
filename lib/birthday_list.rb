class Birthday

  def initialize
    @friends = []
  end

  def add(name, day)
    @friends << { name: name, day: day }
  end
  
  def track
    @friends.each do |birth|
      puts "#{birth[:name]} = #{birth[:day]}"
    end
  end

  def show
    @friends.each do |birth|
      puts "Today's birthday: #{birth[:name]}. This friend has #{birth} years old."
    end  
      
  end
end

