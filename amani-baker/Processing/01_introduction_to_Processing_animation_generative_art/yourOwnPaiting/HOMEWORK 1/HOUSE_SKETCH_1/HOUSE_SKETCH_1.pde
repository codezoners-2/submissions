background (#48AAC6);
size (1000,1000);
// house wall
// fill
strokeWeight (4);
rectMode (CORNERS);
rect (300,400, 700, 1000);

// front door
fill (#2024E3);
strokeWeight (4);
rectMode (CORNERS);
rect (450, 750, 550, 1000);

// door handle
fill (#FC790D);
noStroke();
ellipseMode (CORNERS);
ellipse (520, 875, 540, 900);

// chimney
fill (#6C1008);
stroke(0);
strokeWeight (4);
rectMode (CORNERS);
rect (600,200, 680, 400);

// tree 1
stroke (#5D2001);
strokeWeight (6);
line (90,800, 90, 1000);
//bush
fill (#01860B);
noStroke ();
ellipseMode (CORNERS);
ellipse (45, 700, 135, 800);

//tree 2
stroke (#5D2001);
strokeWeight (6);
line (160, 600, 160, 1000);
//bush
fill (#01860B);
noStroke();
ellipseMode (CORNERS);
ellipse (115, 500, 205, 600);

//tree 3
stroke (#5D2001);
strokeWeight (6);
line (800, 600, 800, 1000);
//bush
fill (#01860B);
noStroke();
ellipseMode (CORNERS);
ellipse (755,500, 845, 600);

//tree 4
stroke (#5D2001);
strokeWeight (6);
line (910, 800, 910, 1000);
//bush
fill (#01860B);
noStroke();
ellipseMode (CORNERS);
ellipse (865, 700, 955, 800);

// sun
strokeWeight (6);
fill (#F2E70C);
ellipseMode (CORNERS);
ellipse (750, 50, 950, 250);

//inner-circle left
strokeWeight (4);
stroke (0);
fill (255,0,0,63);
ellipseMode (CORNERS);
ellipse (350, 450, 450, 570);
line (350, 510, 450, 510);
line (400, 450, 400, 570);

//inner-circle right
strokeWeight (4);
stroke (0);
fill (255,0,0,63);
ellipseMode (CORNERS);
ellipse (550, 450, 650, 570);
line (550, 510, 650, 510);
line (600, 450, 600, 570);

//roof
strokeWeight (4);
fill (#D32515); 
triangle (250,400, 500, 180, 750, 400);





