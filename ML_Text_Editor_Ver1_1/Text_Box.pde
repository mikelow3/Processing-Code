
String letters = "";
 
  
void keyPressed()  
 {  
  if (key == BACKSPACE)  
  {  
    if (letters.length() > 0)  
    {  
      letters = letters.substring(0, letters.length()-1);  
    }  
  }   
 // else if ((key == ENTER) || (key==RETURN))  
 // {  
 //   letters = "";  
 // }  
  
  else if (textWidth(letters+key) < width)  
  {  
    letters = letters+key;  
  }  
} 

  void textInput(){
    fill(0);
    textSize(12);
    textAlign(LEFT);
    text(letters,40,150,300,300); 
  }

  



