#include <print>

import foo;

import foo_project.module_1;
import foo_project.module_2;
import foo_project.module_3;


int main()
{
    foo f;
    f.helloworld();

    say_hello_from_1();
    say_hello_from_2();
    say_hello_from_3();

    std::print("just calling print here from the standard lib");

    return 0;
}

