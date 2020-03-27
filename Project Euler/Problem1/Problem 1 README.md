Problem </br>
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. </br>
Find the sum of all the multiples of 3 or 5 below 1000. lets generilze this to and number N and any two numbers.

Solution:
First the sum of consecutive integers can be written as </br>
![1+2+3+\cdot \cdot \cdot + N = \dfrac{N(N+1)}{2}](https://render.githubusercontent.com/render/math?math=1%2B2%2B3%2B%5Ccdot%20%5Ccdot%20%5Ccdot%20%2B%20N%20%3D%20%5Cdfrac%7BN(N%2B1)%7D%7B2%7D)
Therefor the sum of multiples of 3 can be written as </br>
![3(1+2+3+\cdot \cdot \cdot + N) = 3\dfrac{N(N+1)}{2}](https://render.githubusercontent.com/render/math?math=3(1%2B2%2B3%2B%5Ccdot%20%5Ccdot%20%5Ccdot%20%2B%20N)%20%3D%203%5Cdfrac%7BN(N%2B1)%7D%7B2%7D)
There will be duplicates counted, the comman multiples of 3 and 5. Subtract the sum of the LCM.
Therefor the solution is</br>
![3\dfrac{333(334)}{2} + 5\dfrac{199(200)}{2}-15\dfrac{66(67)}{2}=233168](https://render.githubusercontent.com/render/math?math=3%5Cdfrac%7B333(334)%7D%7B2%7D%20%2B%205%5Cdfrac%7B199(200)%7D%7B2%7D-15%5Cdfrac%7B66(67)%7D%7B2%7D%3D233168)</br>

