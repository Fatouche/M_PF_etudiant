#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>


int main(){

  std::vector<int> liste {1,2,3};
  
  std::cout << std::accumulate(liste.begin(), liste.end(), 0, std::plus<int>()) << std::endl;

  std::cout << std::accumulate(liste.begin(), liste.end(), 0, [](int acc,int x){return x>acc ? x:acc;}) << std::endl;
  
  std::cout << *max_element(liste.begin(), liste.end()) << std::endl;

}
