size(800,500);
background(200);

strokeWeight(10);
//handle
line(250,130,320,190);
//tire link
strokeWeight(7);
line(280,160,230,300);

//front tire
noFill();
strokeWeight(15);
ellipse(230,300,150,150);
ellipse(230,300,10,10);

//mid section
strokeWeight(7);
line(268,200,353,300);
triangle(440,220,359,300,500,300);
line(272,195,440,220);
line(359,300,460,200);
ellipse(359,300,50,50);
strokeWeight(10);
ellipse(359,300,15,15);
//chains
strokeWeight(2);
line(359,274,500,280);
line(359,327,500,320);

//pedals
strokeWeight(4);
line(343,264,373,333);
rect(343,262,3,5);
rect(373,335,3,5);

//sit
strokeWeight(10);
ellipse(460,195,60,7);

//rear tire
strokeWeight(15);
ellipse(500,300,150,150);
ellipse(500,300,10,10);
strokeWeight(3);
ellipse(500,300,40,40);

//floor
strokeWeight(5);
line(10,382,790,382);

//sign post

line(710,30,710,382);
noStroke();
fill(255,0,0);
rect(680,50,60,20);
triangle(660,60,680,50,680,70);



