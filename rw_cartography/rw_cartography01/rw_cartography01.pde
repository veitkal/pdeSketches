/*Early learning experiment in processing. Simple pixelated world map creation based on classic random walker examples in Shiffmans 'Nature of Code', geekforgeeks.org, happycoding.io among others,
 */

Walker w;
Walker w2;
Walker w3;
Walker w4;
Walker w5;

void setup() {
  size(960,540);
  blendMode(BLEND); //Try different blending modes
  w = new Walker(color(75,75,75), 2, 2, 5); //colorRGB, sizeX, sizeY(number of points), stepSize
  w2 = new Walker(color(75, 110 ,1750), 2, 2, 5); //start out small
  w3 = new Walker(color(30, 30 ,150), 2, 2, 5); //its in the diff between size and step
  w4 = new Walker(color(100, 150 ,100), 2, 2, 5);
  w5 = new Walker(color(150, 150 ,150), 2, 2, 5);
  background(0);
}

void draw() {
  w.edgeguard();
  w2.edgeguard();
  w3.edgeguard();
  w4.edgeguard();
  w5.edgeguard();
  w.step();
  w2.step();
  w3.step();
  w4.step();
  w5.step();
  w.display();
  w2.display();
  w3.display();
  w4.display();
  w5.display();
}
