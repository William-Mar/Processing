int[] position;
int row;
int column;

char getChar(){
    return (char)random(int('a'),int('z'));
}

void setup() {
    background(0);
    size(600,400);
    row = height/20;
    column = width/ 20;

    position = new  int[column+1];

    for(int i = 0; i < position.length; i++){
        position[i] =(int)random(row);
    }
    frameRate(10);
}

void draw() {
    fill(0,100);
    noStroke();
    rect(0,0,width,height);
      
    
    int currentColumn = 0;
    for(int x = 0; x < width; x += 20){
        int bottom = position[currentColumn];
        
        
        int c = 0;
        for(int j = bottom - 15; j < bottom; j++){

            c += 20;
            if(c > 255)    c = 255;
            fill(0,c,0);
            text(getChar(), x, j * 20);
        }
        position[currentColumn] += random(3);
        if(position[currentColumn]* 20 > height)
            position[currentColumn] = (int)random(row);
        
        currentColumn += 1;
    }
}
