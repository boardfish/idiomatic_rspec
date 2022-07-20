class Guitar
  DEFAULT_TUNING = %w[E2 A2 D3 G3 B3 E4].freeze
  SCALE = %w[C C# D Eb E F F# G Ab A Bb B].freeze

  def initialize(tuning: Hash.new(0))
    @string_pitches = DEFAULT_TUNING.dup
    tune(tuning)
  end

  def strum(string)
    string_pitches.fetch(string)
  end

  private

  attr_accessor :string_pitches

  def tune(tuning)
    (0..5).each do |string|
      change_string_pitch(string, by: tuning.fetch(string, 0))
    end
  end

  def change_string_pitch(string, by: 0)
    string_pitches[string] = change_note_pitch(string_pitches[string], by:)
  end

  def change_note_pitch(note, by: 0)
    note.split('').then do |key, octave|
      "#{change_key(key, by:)}#{change_octave(octave.to_i, by:)}"
    end
  end

  def change_key(key, by:)
    SCALE.rotate(by)[SCALE.index(key)]
  end

  def change_octave(octave, by:)
    octave + (by.zero? ? 0 : (by.abs / SCALE.length) * (by / by.abs))
  end
end
