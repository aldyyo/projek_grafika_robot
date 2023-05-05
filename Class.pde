class burunggg{
  //Variable Global
  float x = 0;
  float y = 0;
  float kecepatanX = 3;
  float kecepatanY = 0.5;
  
  //Construct
  burunggg (float x1, float y1){
    x = x1;
    y = y1;
  }
  
  //Function
  void run(){
    tampilan();
    bergerak();
    memantul();
  }
  
  void tampilan(){
    image(object, x, y, 60, 60);
  }
  
  void bergerak(){
    x += kecepatanX;
    y += kecepatanY;
  }
  
  void memantul(){
    if(x > width){
      kecepatanX = kecepatanX * -1;
    }
    
    if(x < 0){
      kecepatanX = kecepatanX * -1;
    }
    
    if(y > height){
      kecepatanY = kecepatanY * -1;
    }
    
    if(y < 0 ){
      kecepatanY = kecepatanY * -1;
    }
  }
}
