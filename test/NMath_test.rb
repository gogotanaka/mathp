require 'test_helper'

###########
# Adapted from Mathn: https://github.com/ruby/ruby/blob/trunk/test/test_mathn.rb
###########

# mathn redefines too much. It must be isolated to child processes.
class NMathTest < Minitest::Test
  # def test_power
  #   stderr = $VERBOSE ? ["lib/mathn.rb is deprecated"] : []
  #   assert_in_out_err ['-r', 'mathn', '-e', 'a=1**2;!a'], "", [], stderr, '[ruby-core:25740]'
  #   assert_in_out_err ['-r', 'mathn', '-e', 'a=(1 << 126)**2;!a'], "", [], stderr, '[ruby-core:25740]'
  #   assert_in_out_err ['-r', 'mathn/complex', '-e', 'a=Complex(0,1)**4;!a'], "", [], [], '[ruby-core:44170]'
  #   assert_in_out_err ['-r', 'mathn/complex', '-e', 'a=Complex(0,1)**5;!a'], "", [], [], '[ruby-core:44170]'
  # end
  #
  # def test_quo
  #   stderr = $VERBOSE ? ["lib/mathn.rb is deprecated"] : []
  #   assert_in_out_err ['-r', 'mathn'], <<-EOS, %w(OK), stderr, '[ruby-core:41575]'
  #     1.quo(2); puts :OK
  #   EOS
  # end

  def test_floor
    assert_equal( 2, ( 13/5).floor)
    assert_equal( 2, (  5/2).floor)
    assert_equal( 2, ( 12/5).floor)
    assert_equal(-3, (-12/5).floor)
    assert_equal(-3, ( -5/2).floor)
    assert_equal(-3, (-13/5).floor)
    assert_equal( 2, ( 13/5).floor(0))
    assert_equal( 2, (  5/2).floor(0))
    assert_equal( 2, ( 12/5).floor(0))
    assert_equal(-3, (-12/5).floor(0))
    assert_equal(-3, ( -5/2).floor(0))
    assert_equal(-3, (-13/5).floor(0))
    assert_equal(( 13/5), ( 13/5).floor(2))
    assert_equal((  5/2), (  5/2).floor(2))
    assert_equal(( 12/5), ( 12/5).floor(2))
    assert_equal((-12/5), (-12/5).floor(2))
    assert_equal(( -5/2), ( -5/2).floor(2))
    assert_equal((-13/5), (-13/5).floor(2))
    # assert_equal((2/3), ((4/9)**(1/2)).floor(2))
  end

  def test_ceil
    assert_equal( 3, ( 13/5).ceil)
    assert_equal( 3, (  5/2).ceil)
    assert_equal( 3, ( 12/5).ceil)
    assert_equal(-2, (-12/5).ceil)
    assert_equal(-2, ( -5/2).ceil)
    assert_equal(-2, (-13/5).ceil)
    assert_equal( 3, ( 13/5).ceil(0))
    assert_equal( 3, (  5/2).ceil(0))
    assert_equal( 3, ( 12/5).ceil(0))
    assert_equal(-2, (-12/5).ceil(0))
    assert_equal(-2, ( -5/2).ceil(0))
    assert_equal(-2, (-13/5).ceil(0))
    assert_equal(( 13/5), ( 13/5).ceil(2))
    assert_equal((  5/2), (  5/2).ceil(2))
    assert_equal(( 12/5), ( 12/5).ceil(2))
    assert_equal((-12/5), (-12/5).ceil(2))
    assert_equal(( -5/2), ( -5/2).ceil(2))
    assert_equal((-13/5), (-13/5).ceil(2))
  end

  def test_truncate
    assert_equal( 2, ( 13/5).truncate)
    assert_equal( 2, (  5/2).truncate)
    assert_equal( 2, ( 12/5).truncate)
    assert_equal(-2, (-12/5).truncate)
    assert_equal(-2, ( -5/2).truncate)
    assert_equal(-2, (-13/5).truncate)
    assert_equal( 2, ( 13/5).truncate(0))
    assert_equal( 2, (  5/2).truncate(0))
    assert_equal( 2, ( 12/5).truncate(0))
    assert_equal(-2, (-12/5).truncate(0))
    assert_equal(-2, ( -5/2).truncate(0))
    assert_equal(-2, (-13/5).truncate(0))
    assert_equal(( 13/5), ( 13/5).truncate(2))
    assert_equal((  5/2), (  5/2).truncate(2))
    assert_equal(( 12/5), ( 12/5).truncate(2))
    assert_equal((-12/5), (-12/5).truncate(2))
    assert_equal(( -5/2), ( -5/2).truncate(2))
    assert_equal((-13/5), (-13/5).truncate(2))
  end

  def test_round
    assert_equal( 3, ( 13/5).round)
    assert_equal( 3, (  5/2).round)
    assert_equal( 2, ( 12/5).round)
    assert_equal(-2, (-12/5).round)
    assert_equal(-3, ( -5/2).round)
    assert_equal(-3, (-13/5).round)
    assert_equal( 3, ( 13/5).round(0))
    assert_equal( 3, (  5/2).round(0))
    assert_equal( 2, ( 12/5).round(0))
    assert_equal(-2, (-12/5).round(0))
    assert_equal(-3, ( -5/2).round(0))
    assert_equal(-3, (-13/5).round(0))
    assert_equal(( 13/5), ( 13/5).round(2))
    assert_equal((  5/2), (  5/2).round(2))
    assert_equal(( 12/5), ( 12/5).round(2))
    assert_equal((-12/5), (-12/5).round(2))
    assert_equal(( -5/2), ( -5/2).round(2))
    assert_equal((-13/5), (-13/5).round(2))
  end
end
