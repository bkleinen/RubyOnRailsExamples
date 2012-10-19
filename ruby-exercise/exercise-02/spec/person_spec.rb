project_root = File.dirname(__FILE__).gsub(/(.*)\/spec\/?.*$/,"\\1")
$LOAD_PATH.unshift project_root

require "rspec"
require "person.rb"

describe "Person initialization" do

  it "should initialize it's fields from a hash" do

    argument_hash =   {:name => "Dagobert", :hobbies => "Money"}
    p = Person.new(argument_hash)
    p.name.should == "Dagobert"
    p.hobbies.should == "Money"

  end

  it "should raise an UnknownAttributeError if a field is unknown" do
    argument_hash =   {:name => "Dagobert", :hobbies => "Money",:nonexistentfield => "some Value"}
    expect { p = Person.new(argument_hash) }.to raise_error(UnknownAttributeError)
  end

  it "should still be initializable without any parameters" do
    p = Person.new
  end

end