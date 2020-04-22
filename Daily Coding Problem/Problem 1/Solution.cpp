bool MapComp (std::vector<int> List, int k) //Use a Hash table to store the complement, for faster loopup
{
    std::unordered_map<int,int> intmap; // Hash table
    int temp=0; // What is the complement we are looking for
    int i = 0; 
    for (i; i < List.size(); i++)
    {
        temp = (k-List[i]);
        if(intmap[List[i]]==temp)
        {
            printf("Two elements found %d %d",List[i],temp);
        }
        else
        {
            intmap[temp]=List[i];
        }
        
    }
    return true;
}
//Use a vector to store the complement.
// check vector for complement, if not in there add number
bool HasComp (std::vector<int> List, int k) 
{
    int i = 0;
    std::vector<int> Comp;
    std::vector<int>::iterator InComp;

    
    for (i; i < List.size(); i++)
    {
        if(List[i]<k)
        {
            InComp = find (Comp.begin(), Comp.end(), k-List[i]);
            if (InComp != Comp.end())
                printf("Two elements found %d %d \n",List[i],k-List[i]);
            else
                Comp.push_back(List[i]);
        }
    }
    
    return true;
}
