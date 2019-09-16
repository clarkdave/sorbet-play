# typed: strong

# descriptive_statistics-2.5.1

module DescriptiveStatistics
  Collection = T.type_alias(T::Enumerable[T.untyped])
  Results = T.type_alias(T::Hash[Symbol, T.any(Integer, Float)])

  sig do
    params(block: T.nilable(T.proc.params(stats: Results).void)).returns(
      Results
    )
  end
  def descriptive_statistics(&block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def mean(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def median(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Integer).void)
    )
      .returns(Integer)
  end
  def mode(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def number(collection = nil, &block); end

  sig do
    params(
      p: Integer,
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def percentile(p, collection = nil, &block); end

  sig do
    params(
      p: Integer,
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def percentile_rank(p, collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def range(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def standard_deviation(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def sum(collection = nil, &block); end

  sig do
    params(
      collection: Collection,
      block: T.nilable(T.proc.params(result: Float).void)
    )
      .returns(Float)
  end
  def variance(collection = nil, &block); end

  def self.default_values; end
  def self.descriptive_statistics(&block); end
  def self.descriptive_statistics_empty_collection_default_value; end
  def self.descriptive_statistics_empty_collection_default_value=(value); end
  def self.empty_collection_default_value; end
  def self.empty_collection_default_value=(value); end
  def self.mean(collection = nil, &block); end
  def self.mean_empty_collection_default_value; end
  def self.mean_empty_collection_default_value=(value); end
  def self.median(collection = nil, &block); end
  def self.median_empty_collection_default_value; end
  def self.median_empty_collection_default_value=(value); end
  def self.mode(collection = nil, &block); end
  def self.mode_empty_collection_default_value; end
  def self.mode_empty_collection_default_value=(value); end
  def self.number(collection = nil, &block); end
  def self.number_empty_collection_default_value; end
  def self.number_empty_collection_default_value=(value); end
  def self.percentile(p, collection = nil, &block); end
  def self.percentile_empty_collection_default_value; end
  def self.percentile_empty_collection_default_value=(value); end
  def self.percentile_rank(p, collection = nil, &block); end
  def self.percentile_rank_empty_collection_default_value; end
  def self.percentile_rank_empty_collection_default_value=(value); end
  def self.range(collection = nil, &block); end
  def self.range_empty_collection_default_value; end
  def self.range_empty_collection_default_value=(value); end
  def self.standard_deviation(collection = nil, &block); end
  def self.standard_deviation_empty_collection_default_value; end
  def self.standard_deviation_empty_collection_default_value=(value); end
  def self.sum(collection = nil, &block); end
  def self.sum_empty_collection_default_value; end
  def self.sum_empty_collection_default_value=(value); end
  def self.variance(collection = nil, &block); end
  def self.variance_empty_collection_default_value; end
  def self.variance_empty_collection_default_value=(value); end
end

module DescriptiveStatistics::Support
  def self.convert(from_enumerable, &block); end
  def self.extend(enumerable); end
  def self.extract(from_enumerable, &block); end
  def self.to_array(enumerable); end
  def self.to_float(enumerable); end
  def self.to_value(enumerable, &block); end
end

class DescriptiveStatistics::Stats < SimpleDelegator
  include DescriptiveStatistics

  sig { params(collection: T::Enumerable[T.untyped]).void }
  def initialize(collection); end
end

module Enumerable
  def descriptive_statistics(&block); end
  def mean(collection = nil, &block); end
  def median(collection = nil, &block); end
  def mode(collection = nil, &block); end
  def number(collection = nil, &block); end
  def percentile(p, collection = nil, &block); end
  def percentile_rank(p, collection = nil, &block); end
  def range(collection = nil, &block); end
  def standard_deviation(collection = nil, &block); end
  def variance(collection = nil, &block); end

  include DescriptiveStatistics
end
