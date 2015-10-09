
 void mousePressed() {
     
  if (mouseX > openF.buttonX - openF.buttonW && mouseX < openF.buttonX + openF.buttonW &&
    mouseY > openF.buttonY - openF.buttonH && mouseY < openF.buttonY + openF.buttonH) {
     selectInput("Select a file to process:", "openfileSelected");
    }
  
   if (mouseX > saveF.buttonX - saveF.buttonW && mouseX < saveF.buttonX + saveF.buttonW &&
    mouseY > saveF.buttonY - saveF.buttonH && mouseY < saveF.buttonY + saveF.buttonH) {
     selectOutput("Select a file to write to:", "fileSelected");
    }
     
 }
