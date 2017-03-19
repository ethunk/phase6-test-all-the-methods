require "simplecov"
SimpleCov.start
require "pry"
require_relative "../code"

# YOUR TEST CODE HERE

describe "perimeter calculator" do
  it "should return the value 14 for a rectangle of width=4 and height =3" do
    expect(perimeter(4,3)).to eq(14)
  end
  it "should return the perimeter of a square with one input" do
  expect(perimeter(3)).to eq(12)
  end
end

describe "average grade list" do
  it "should return the average grade from an input of grades" do
    grade_list = [100,99,98,97,96]
    expect(average(grade_list)).to eq(98)
  end
end

describe "rankings method" do
  it "should return the list of student names in an ordinal order" do
    students = ["john", "mary"]
    expect(rankings(students)).to eq("1. john\n2. mary\n")
  end
end

describe "greet method" do
  context "should return a greeting of the inputted name in the inputted language" do
    name = "Eric"
    it "should return a greeting in spanish" do
      expect(greet(name, "spanish")).to eq("Hola Eric!")
    end
    it "should return a greeting in italian" do
      expect(greet(name, "italian")).to eq("Ciao Eric!")
    end
    it "should return a greeting in french" do
      expect(greet(name, "french")).to eq("Bonjour Eric!")
    end
  end
  context "if no given language input, should defauult to english" do
    it "should return a greeting in english" do
      expect(greet("Eric")).to eq("Hi Eric!")
    end
  end
end

describe "create puzzle" do
  it "takes a word and guesses and displays which guesses are correct" do
    word = "word"
    guesses = ["o","e","i","u","d"]
    should_equal = "_ o _ d"
    expect(create_puzzle(word, guesses)).to eq(should_equal)
  end
end

describe "divisibility by three" do
  it "should return true for values that are divisible by three" do
  expect(divisible_by_three(3)).to eq(true)
  end
end

describe "perfect square?" do
  it "tell you that 9 is a perfect square" do
    expect(perfect_square?(9)).to eq(true)
  end
  it "tell you that 8 is false" do
    expect(perfect_square?(8)).to eq(false)
  end
  it "give an error message" do
    expect{ perfect_square?(-2) }.to raise_error(ArgumentError)
  end
end
