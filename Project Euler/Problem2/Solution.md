The Formula for the Fibonacci sequence is as follows </br>
![F_{n}=F_{n-1}-F_{n-2}](https://render.githubusercontent.com/render/math?math=F_%7Bn%7D%3DF_%7Bn-1%7D-F_%7Bn-2%7D) </br>

By looking at the Fibonacci sequence we can see that the even numbers are when n is divisible by 3. So lets rewrite the formula.

![F_{n}=F_{n-1}+F_{n-2}](https://render.githubusercontent.com/render/math?math=F_%7Bn%7D%3DF_%7Bn-1%7D%2BF_%7Bn-2%7D)</br>
![=F_{n-2}+F_{n-3}+F_{n-3}+F_{n-4}](https://render.githubusercontent.com/render/math?math=%3DF_%7Bn-2%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-4%7D)</br>
![=F_{n-3}+F_{n-4}+F_{n-3}+F_{n-3}+F_{n-4}](https://render.githubusercontent.com/render/math?math=%3DF_%7Bn-3%7D%2BF_%7Bn-4%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-4%7D)</br>
![=F_{n-3}+F_{n-4}+F_{n-3}+F_{n-3}+F_{n-5}+F_{n-6}](https://render.githubusercontent.com/render/math?math=%3DF_%7Bn-3%7D%2BF_%7Bn-4%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-5%7D%2BF_%7Bn-6%7D) </br>
![=F_{n-3}+F_{n-3}+F_{n-3}+(F_{n-4}+F_{n-5})+F_{n-6}](https://render.githubusercontent.com/render/math?math=%3DF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2B(F_%7Bn-4%7D%2BF_%7Bn-5%7D)%2BF_%7Bn-6%7D) </br>
![=F_{n-3}+F_{n-3}+F_{n-3}+F_{n-3}+F_{n-6}](https://render.githubusercontent.com/render/math?math=%3DF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-3%7D%2BF_%7Bn-6%7D) </br>
![=4F_{n-3}+F_{n-6}](https://render.githubusercontent.com/render/math?math=%3D4F_%7Bn-3%7D%2BF_%7Bn-6%7D) </br>

hence the formula for only the even numbers is</br>
![F_{N}=4F_{N-1}+F_{N-2}](https://render.githubusercontent.com/render/math?math=F_%7BN%7D%3D4F_%7BN-1%7D%2BF_%7BN-2%7D) </br>

Finding the sum is just a while loop.
