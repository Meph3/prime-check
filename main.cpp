#include <iostream>
#include <cstdlib>

bool is_prime(int n) {
    if (n < 2) return false;
    for (int i = 2; i * i <= n; i++) {
        if (n % i == 0) return false;
    }
    return true;
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        std::cout << "Usage: " << argv[0] << " <number>\n";
        return 1;
    }

    int num = std::atoi(argv[1]);
    std::cout << num << (is_prime(num) ? " is a prime number.\n" : " is not a prime number.\n");

    return 0;
}
