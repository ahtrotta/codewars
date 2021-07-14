require 'minitest/autorun'

def personalise(campaign, person={})
  campaign
    .gsub('<NAME>', person[:name])
    .gsub('<CITY>', person[:city])
    .gsub('<FAVOURITE PRODUCTS>', person[:favourite_product])
end

person = {:name=>"Sally", :city=>"Glasgow", :age=>44, :favourite_product=>"toasters"}

describe "Personalise" do
  it "should return a string" do
    personalise("", person).must_be_instance_of(String)
  end
  
  it "should return 'Hello, World!' when given 'Hello, World!'" do
    personalise("Hello, World!", person).must_equal "Hello, World!"
  end
  
  it "should return 'Sally' when given '<NAME>'" do
    personalise("<NAME>", person).must_equal "Sally"
  end

  it "should return 'Glasgow' when given '<CITY>'" do
    personalise("<CITY>", person).must_equal "Glasgow"
  end
  
  it "should return 'toasters' when given '<FAVOURITE PRODUCTS>'" do
    personalise("<FAVOURITE PRODUCTS>", person).must_equal "toasters"
  end
	
  #new set of variables for next test
  person = {:name=>"Scott", :city=>"Fort William", :age=>32, :favourite_product=>"hiking boots"}
  longer_string = "Hello <NAME>, how is the weather in <CITY> today? We wanted to let you know that <FAVOURITE PRODUCTS> are on sale today only!"
  longer_string_answer = "Hello Scott, how is the weather in Fort William today? We wanted to let you know that hiking boots are on sale today only!"
  
  it "should be able to deal with longer text" do
    personalise(longer_string, person).must_equal longer_string_answer
  end
end
