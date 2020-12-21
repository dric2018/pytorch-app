#include <torch/torch.h>
#include <iostream>

using namespace std;
using namespace torch;

int main() {
  torch::Tensor tensor = torch::rand({2, 3});
  cout << tensor << std::endl;
}