class Network
  attr_reader :name, :shows

  def initialize(network_name)
    @name = network_name
    @shows = []
  end

  def add_show(show_added)
    @shows = show_added
  end

end
