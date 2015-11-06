
class Calculation {
  
  String result = "";
  
  Calculation(){
  }

    
    void calculate(String value){
      String finalCalculation = result;
      
     // clear
    if (value == "R") {
      finalCalculation = "";
      value = "";
    }
    
    // delete
    if (value == "Del") {
      value = "";
      if (result.length() >0) {
        finalCalculation=finalCalculation.substring(0, finalCalculation.length()-1);
      }
    }
      
     // result = result + value;
     
    finalCalculation = finalCalculation + value;
    result = finalCalculation;

        
   //  String[] result = splitTokens(value);
   //  println(value);
       
    
  }
    
    
    //method to return button character when mouse is pressed
    String showResult(){
      return result;
    }
 }
