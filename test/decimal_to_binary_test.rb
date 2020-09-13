require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



describe "decimal to binary" do
  it "From 153 to 10011001" do
    decimal = 153
    expected_binary = [1, 0, 0, 1, 1, 0, 0, 1]

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end

  it "From 13 to 1101" do
    expected_binary = [1, 1, 0, 1]
    decimal = 13

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end

  it "From 128 to 10000000" do
    expected_binary = [1, 0, 0, 0, 0, 0, 0, 0]
    decimal = 128

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end

  it "From random decimal to binary" do

    decimal = rand(500)
    expected_binary =  decimal.to_s(2).split(//).map {|bit| bit.to_i}

    expect(decimal_to_binary(decimal)).must_equal expected_binary
  end
end

