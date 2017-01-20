class Borough
  attr_reader :data

  def initialize(string)
    @data = JSON.parse(open("#{BASE_URL}?borough=#{string}").read)
  end

  def num_of_toilets
    @data.length
  end

  def power_level
    num_of_toilets * rand(100) + 9000
  end
end
