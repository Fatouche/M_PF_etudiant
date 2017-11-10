#include <algorithm>
#include <functional>
#include <iostream>
#include <vector>

int main(){

  std::vector<int> x {1,-2,3};
  std::vector<int> x1;
  
  std::copy_if (x.begin(), x.end(), back_inserter(x1),[](int i){return i>0;});

  for(int res : x1 )
    std::cout << res << std::endl;
  
  auto it = remove_if(x.begin(),x.end(),[](int i){return i>0;});
  x.erase(it);
  
  for(int res : x )
    std::cout << res << std::endl;
}
