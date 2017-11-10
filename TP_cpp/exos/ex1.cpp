#include <algorithm>
#include <functional>
#include <iostream>

using namespace std::placeholders;

int fonction(int x, int y){
  return x + y;
}

int main(){

  std::cout << fonction(13,37) << std::endl;

  std::function<int(int,int)> lambda = [](int x, int y){ return x + y ; };
  std::cout << lambda(13,37) << std::endl; 

  auto objetfonction = std::plus<int>();;
  std::cout << objetfonction(13,37) << std::endl;

  std::function<int(int)> fonctionpartiel = std::bind(fonction,42,_1);
  std::cout << fonctionpartiel(2) << std::endl;
}
