#include <torch/torch.h>
#include <iostream>

using namespace std;

int main() {
  torch::Tensor t1 = torch::rand({2, 2});
  torch::Tensor t2 = torch::rand({2, 2});
  
  torch::Tensor t3 = t1 + t2;

  cout << t1 << endl;
  cout << t2 << endl;
  cout << t3 << endl;


}