#include <iostream>
#include <vector>

class HeavyStuff
{
  public:
    HeavyStuff() { std::cout << "constructor" << std::endl; }

    void
    bleet()
    {
        std::cout << "bleet" << std::endl;
    }

    ~HeavyStuff() { std::cout << "destructor" << std::endl; }
};

void
use_heavy_stuffs(std::vector<HeavyStuff> stuffs)
{
    for (auto stuff : stuffs)
    {
        stuff.bleet();
    }
}

int
main(int argc, char **argv)
{
    std::vector<HeavyStuff> stuffs;
    stuffs.push_back(HeavyStuff());
    stuffs.push_back(HeavyStuff());
    stuffs.push_back(HeavyStuff());
    use_heavy_stuffs(stuffs);
}
