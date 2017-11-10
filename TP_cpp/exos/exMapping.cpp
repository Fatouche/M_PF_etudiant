#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>


int main(){
  std::vector<int> liste1 {1,2,3};
  std::vector<int> liste2;
  
  // std::for_each(liste1.begin(),liste1.end(),[&liste2](int x) { liste2.push_back(x+=42); });

  for(int x : liste1)
    liste2.push_back(x+42);
  
  for (int x : liste2)
    std::cout << x << std::endl;
}
