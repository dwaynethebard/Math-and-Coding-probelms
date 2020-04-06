First the brute force way of solving this would be to loop through the array for each index making this 

![O(n^2)](https://render.githubusercontent.com/render/math?math=O(n%5E2)).

To reduce the time we need slove this without muiltiple loops, it turns out we can solve this in 
[O(n)](https://render.githubusercontent.com/render/math?math=O(n).

We are going to create two new arrays. LeftProd and RightProd. let List be the original array
Where each index for the new arrays are
Leftprod[i]=Prod(List[0..i-1])
Rightprod[i]=Prod(List[i+1..n])

Then just loop through the list and each index for the new array will be
list[i]=Leftprod[i]*Right[Prod[i]

This is done in 3 loops hence [O(n)](https://render.githubusercontent.com/render/math?math=O(n).

Given an array of integers, return a new array such that each element at index i of the new array is the product of all the 
numbers in the original array except the one at i.
