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
String oldString = word;
String oldStringTwo = new String();
String newString = new String();
String newStringTwo = new String();

String count = new String();
int last = word.length() - 1;
for(int i = last; i >= 0; i--){
  newString = newString + word.substring(i, i + 1);
}


for(int i = 0; i < newString.length(); i++){
  if(newString.charAt(i) != '!' && newString.charAt(i) != ',' && newString.charAt(i) != ' ' && newString.charAt(i) != '\'' && newString.charAt(i) != '.'){
    newStringTwo = newStringTwo + newString.charAt(i);
  }
}


for(int i = 0; i< oldString.length(); i++){
    if(oldString.charAt(i) != '!' && oldString.charAt(i) != ',' && oldString.charAt(i) != ' ' && oldString.charAt(i) != '\'' && oldString.charAt(i) != '.'){
    oldStringTwo = oldStringTwo + oldString.charAt(i);
}
}
newStringTwo = newStringTwo.toLowerCase();
oldStringTwo = oldStringTwo.toLowerCase();

if(newStringTwo.equals(oldStringTwo)){
  return true;
}
else{
  return false;
}


// for(int i = 0; i < word.length(); i++)
// {
//   if(word.charAt(i) != ' '){
//     count = count + word.charAt(i);
//   }
// }
//return false;
}

// 2. Run the program. You should see the following output:  
// there are 6 lines  
// test is NOT a palidrome.  
// rotator is NOT a palidrome.  
// rewriter is NOT a palidrome.  
// nurses run is NOT a palidrome.  
// Madam, I'm Adam! is NOT a palidrome.  
// A Man! A Plan! A Canal! Panama! is NOT a palidrome.  
// 3. You need to finish the `palindrome()` method 
// 4. Start by getting the `palindrome()` method to return `true` for `"rotator"` and `false` for`'"test"` and `"rewriter"`
// 5. Once you get those three working correctly, you'll need to devise a strategy for working with spaces and capital letters. You may find the `String` functions like `charAt()` and `toLowerCase()` helpful
// 6. Submit the URL of your GitHub repository to the School Loop drop box for the assignment. Note that like the previous two assignments, this assignment has no graphics or website. 
