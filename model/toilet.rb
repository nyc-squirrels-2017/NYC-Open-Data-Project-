class Toilet
  attr_reader :borough, :location, :name, :open_year_round

  def initialize(args={})
    @borough = args.fetch('borough', "")
    @location = args.fetch('location', "")
    @name = args.fetch('name', "")
    @open_year_round = args.fetch('open_year_round', "Yes")
  end

end
