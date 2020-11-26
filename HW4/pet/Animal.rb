class Animal
  attr_accessor :animal, :name

  def initialize(animal, name)
    @animal = animal
    @name = name
  end
  ANIMAL_VOICES = {
    panda: 'arrrr',
    grizzly: 'ARRR RRR'
  }

  def voice
    voice = ANIMAL_VOICES.keys.include?(@animal) ? ANIMAL_VOICES[@animal] : "hey"
    p voice
  end
end
