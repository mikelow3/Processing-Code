
class Calculation {
  
  String result = "";
  
  Calculation(){
  }

    int add(int a, int b) {
        int answer = a+b;
        return answer;          
    }
    
    int subtract(int a, int b) {
        int answer = a-b;
        return answer;          
    }

    void calculate(String value){
           String finalCalculation = result; 
             
      //checks if user has pressed math operator before selecting a number
      if( (finalCalculation.contains("+") || finalCalculation.contains("-") || finalCalculation.contains("*") || finalCalculation.contains("/")) && 
        (value == "+" || value == "-" || value == "*" || value == "/")  ){
        value = "";
    }
    
    //restrict user to one decimal point on start of calculation
  //    if( (finalCalculation.contains(".")) && 
  //      (value == ".")  ){
  //      value = "";
  //  }
      //delete string by one character       
      if (value == "Del"){
        value = "";
        if (result.length() >0){
            finalCalculation=finalCalculation.substring(0, finalCalculation.length()-1);
            //println(output);
        }
      }
      
      //Clear string value
      if (value == "Clr") {
       value = "";
        finalCalculation = "";        
      }
    
     //check final calculation
     //split string on addition
     //parse string to int
        if (value == "=") {
          if (finalCalculation.contains("+")); {
          String[] nums = split(finalCalculation, '+'); //split the string using "+"
            int one = Integer.parseInt(nums[0]); //parse from string to integer
            int two = Integer.parseInt(nums[1]); 
             
        //    int answer = add(one, two);
            finalCalculation = add(one,two) + "";
        } 
        
        value = "";
        
     /*   if (finalCalculation.contains("-")); {
          String[] nums = split(finalCalculation, '-'); //split the string using "+"
            int one = Integer.parseInt(nums[0]); //parse from string to integer
            int two = Integer.parseInt(nums[1]); 
             
        //    int answer = add(one, two);
            finalCalculation = subtract(one,two) + "";
        }
                
    */    value = "";
      }
     
        
      
      
    //String[] result = splitTokens(value);
    //println(result);
        
    finalCalculation = finalCalculation + value;
    result = finalCalculation;
}   
  
   
    
    //return result to display
    String showResult(){
      return result;
    }
  }
 
 
 