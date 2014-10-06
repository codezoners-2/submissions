int[]number= new int [10];
int  total=0;
void setup ()
{
  
  for (int i =0; i<10; i=i+1)
  {
    number [i] = int (random(1, 10)); 
    println (i);
total = total+ number [i];  

}
println(total);
}

