# Idiomatic RSpec

This code accompanies a talk I'm planning on how to leverage RSpec's features to
write tests cleanly. It uses:

- `let`
- `context`
- `describe`
- `subject`
- `shared_context` and `include_context`
- `described_class`, and
- implicit subject syntax.

This is all done with the aim of extracting setup outside your tests, so that
your tests can be responsible for calling `subject` only in the desired
conditions.

Step through the Git history to see how this changes at each step and how each
of RSpec's features helps to clean things up.
