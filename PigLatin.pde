import java.util.*;
public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  for(int i = 0; i < sWord.length(); i++){
    if(sWord.substring(i,i+1).matches("a|e|i|o|u")){
      return i;
    }
  }
	return -1;
}
public int findFirstConsanants(String sWord)
{
   for(int j = 0; j < sWord.length(); j++){
    if(sWord.substring(j,j+1).matches("a|e|i|o|u")){
      return j;
    }
   } 
  return -1; 
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord)== -1)
	{
		return sWord + "ay";
	}
        if(sWord.substring(0,1).matches("a|e|i|o|u"))
        {
                return sWord + "way";
        }
         if(sWord.substring(0,2).equals("qu"))
        {
                return sWord.substring(2) + sWord.substring(0,2) + "ay";
        }
	else
	{
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0,findFirstVowel(sWord))+ "ay";
	}
}
