# typed: strong

require 'sorbet-runtime'

# no compile errors, but breaks at runtime
T.let({ 'beep' => 30 }, T::Hash[String, String])
T.let({ 'beep' => 'boop' }, T::Hash[Symbol, String])
