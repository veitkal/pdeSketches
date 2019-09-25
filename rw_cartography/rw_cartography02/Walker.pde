

class Walker {

  int x;
  int y;
  int sX;
  int sY;
  int stepS;
  color c;

  Walker(color tempC, int sizeX, int sizeY,int stepSize) {
      c = tempC;
      x = width/2;
      y = height/2;
      sX = sizeX;
      sY = sizeY;
      stepS = stepSize;
    }

//Display grid of points determined by sizeX and sizeY
  void display() {
      stroke(c);
      fill(c);

      for (int i = 0; i < sX; i++) {
        for (int j = 0; j < sY; j++) {
          point(x+i, y+j);
        }
      }
    }

//Random toss and move n steps determined by stepSize in either of four directions
    void step() {
      int choice = int(random(4));

        if (choice == 0) {
          x+=stepS;
        } else if (choice == 1) {
          x-=stepS;
        } else if (choice == 2) {
          y+=stepS;
        } else if (choice == 3) {
          y-=stepS;
        }
    }

//Don't go beyonde the edges
    void edgeguard() {
        if (x <  0) {
          x = 0;
        }  if (x >  width) {
          x = width;
        }

        if (y <  0) {
          y = 0;
        } else if (y >  height) {
          y = height;
        }
      }
      
  }
