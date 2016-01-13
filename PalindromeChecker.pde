public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  for(int i=0;i<word.length();i++)
  {
    if(word.substring(i,i+1).equals(" ")||word.substring(i,i+1).equals("!")||word.substring(i,i+1).equals("?")||word.substring(i,i+1).equals(".")||word.substring(i,i+1).equals(",")||word.substring(i,i+1).equals("'"))
    {
      word=word.substring(0,i)+word.substring(i+1);
      i--;
    }
  }
  for(int i=0;i<word.length()/2;i++)
  {
    if(!word.substring(i,i+1).equalsIgnoreCase(word.substring(word.length()-1-i,word.length()-i)))
    {
      return false;
    }
  }
  return true;
}

