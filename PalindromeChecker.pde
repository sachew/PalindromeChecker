public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String str = new String(word);
  str = noSpace(str);
  str = onlyLetters(str);
  str = noCaps(str);
  if(str.equals(reverse(str)) == true){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=str.length(); i>0; i--){
      sNew = sNew + str.substring(i-1, i);
    }
    return sNew;
}
public String noCaps(String str){
  String s = new String("");
  for(int i=0; i<str.length(); i++){
    s = s + str.substring(i, i+1).toLowerCase();
  }
  return s;
}
public String noSpace(String str){
  String s = new String("");
  for(int i=0; i<str.length(); i++){
    if(str.substring(i,i+1).equals(" ") == false){
      s = s + str.substring(i,i+1);
    }
  }
  return s;
}
public int numLetters(String str){
  int counter = 0;
  for(int i=0; i<str.length(); i++){
    if(Character.isLetter(str.charAt(i)) == true){
      counter++;
    }
  }
  return counter;
}

public String onlyLetters(String sString){
  String s = "";
  for(int i=0; i<sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      s = s + sString.charAt(i);
    }
  }
  return s;
}
