# typed: strict

stats = DescriptiveStatistics::Stats.new([1, 1, 2, 3, 10])
stats.mean
stats.median
stats.mode

stats.descriptive_statistics[:min]

# class Foo
#   extend T::Sig
#   include Enumerable

#   sig { returns(T::Enumerator[Integer]) }
#   def each
#     [5, 10, 15].each
#   end
# end

# class Boop; end

DescriptiveStatistics::Stats.new(Foo.new)
