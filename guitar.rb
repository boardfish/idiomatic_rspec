class Guitar
  DEFAULT_TUNING = %w[E2 A2 D3 G3 B3 E4].freeze

  def initialize(tuning: Hash.new(0))
    @string_pitches = DEFAULT_TUNING
    tune(tuning)
  end

  def strum(string)
    string_pitches.fetch(string)
  end

  private

  attr_accessor :string_pitches

  def tune(tuning)
    # Unimplemented
  end
end
