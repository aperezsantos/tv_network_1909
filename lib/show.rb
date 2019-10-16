class Show
  attr_reader :name, :creator, :characters

  def initialize(name_of_show, creator_name, character_array)
    @name = name_of_show
    @creator = creator_name
    @characters = character_array
  end

end
