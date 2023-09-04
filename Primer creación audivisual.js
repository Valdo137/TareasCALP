//Código 1
voronoi(5,0.3,0.3)
.rotate(3,1)
.color(0,1,3,1)
.add(shape(7,0.2,0.1))
.out()

//Código 2
osc(4, 0.1, 0.8)
  .color(2,3,2)
  .rotate(0.30, 0.1)
  .pixelate(2, 20) 
  .modulate(noise(2.5), () => 1.5 * Math.sin(0.08 * time)).out(o0)

//Código 3
osc(20, 0.1, 0)
  .color(1, 1, 2)
  .rotate(1.57/2)
  .out(o1)
osc(30, 0.01, 0)
  .color(0, 2, 1)
  .modulate(o1, 0)
  .add(o1,1)
  .modulatePixelate(o1,1,10)
  .out(o0)