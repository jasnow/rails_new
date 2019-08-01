# typed: strong
MiniTest::Runnable = Minitest::Runnable

class Minitest::Runnable
  SIGNALS = ::T.let(nil, ::T.untyped)
end