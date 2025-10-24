// Global module fragment where #includes can happen
module;
#include <iostream>
#include <print>

// first thing after the Global module fragment must be a module command
export module foo;

export class foo {
public:
  foo();
  ~foo();
  void helloworld();
};

foo::foo() = default;
foo::~foo() = default;
void foo::helloworld() { std::println("hello world from a class"); }

