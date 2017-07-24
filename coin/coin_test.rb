require 'minitest/autorun'
require_relative 'coin.rb'

class TestCoinChanger < Minitest::Test

def test_class_
		results = coin_changers(1) 
assert_equal(Hash, results.class)
end
def test_penny
	assert_equal({quarter: 0 , Dime: 0, nickel: 0, penny: 1},coin_changers(1))
end
def test_penny3
	assert_equal({quarter: 0 , Dime: 0, nickel: 0, penny: 3},coin_changers(3))
end
def test_quarter
	assert_equal({quarter: 1 , Dime: 0, nickel: 0, penny: 0},coin_changers(25))
end
def test_quarterandpenny
	assert_equal({quarter: 1 , Dime: 0, nickel: 0, penny: 1},coin_changers(26))
end
def test_dime
	assert_equal({quarter: 0 , Dime: 1, nickel: 0, penny: 0},coin_changers(10))
end
end
# def test
# coin = {quater:25,Dime:10,nickel:5,penny:1}
# assert_equal ({},function(coin))
# def test_penny
# assert _equal (penny:1,function(1))
# end  