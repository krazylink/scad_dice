function vector_sum(v) = _vector_sum(v, v[0]*0);
function _vector_sum(v, _total, _i=0) = _i>=len(v) ? _total : _vector_sum(v, _total+v[_i], _i+1);
function mean(v) = vector_sum(v)/len(v);
function inclination_angle(v) = acos(v[2]/norm(v));
function azimuthal_angle(v) = atan2(v[1],v[0]);
function csc(x) = 1/sin(x);
function cot(x) = cos(x)/sin(x);
function sec(x) = 1/cos(x);
function rtod(x) = x*(180/PI);
function dtor(x) = x*(PI/180);
function angleBetweenVectors(a,b) = acos((a*b)/(norm(a)*norm(b)));
function rotZ (theta,p) = [[cos(theta),sin(theta),0],[-sin(theta), cos(theta),0],[0,0,1]]*p;
function rotX (theta,p) = [[cos(theta),0,sin(theta)],[0,1,1],[-sin(theta),0,cos(theta)]]*p;
function rotY (theta,p) = [[cos(theta),0,sin(theta)],[0,1,0],[-sin(theta),0,cos(theta)]]*p;

PHI=((1+sqrt(5))/2);

d4= [
	//points
	[
	[1,1,1], //0
	[-1,-1,1], //3
	[1,-1,-1], //1
	[-1,1,-1],
],
	//faces
	[
	[0,2,1], //face3
	[1,3,0], //face1
	[2,0,3], //face2
	[3,1,2], //face3
	],
];

d6 = [
	//points
	[[-1,-1,-1], //0
	[1,-1,-1], //1
	[1,1,-1], //2
	[-1,1,-1], //3
	[-1,-1,1], //4
	[1,-1,1], //5
	[1,1,1], //6
	[-1,1,1]], //7
	//faces
	[[0,1,2,3], //face1
	[7,4,0,3], //face6
	[4,5,1,0], //face2
	[6,7,3,2], //face5
	[5,6,2,1], //face4
	[7,6,5,4]] //face3
];

d8= [
	//points
	[[0,0,1.5], //0
	[0,0,-1.5], //1
	[1.5,0,0], //2
	[0,1.5,0], //3
	[-1.5,0,0], //4
	[0,-1.5,0]], //5
	//faces
	[
	[0,2,5], //face1
	[1,4,5], //face2
	[0,5,4], //face3
	[1,5,2], //face4
	[0,4,3], //face5
	[1,2,3], //face6
	[0,3,2], //face7
	[1,3,4]] //face8
];

d12 = [
	//points
	[[1, 1, 1], //0
	[1, -1, 1], //1
	[1, 1, -1], //2
	[1, -1, -1], //3
	[-1, 1, 1], //4
	[-1, -1, 1], //5
	[-1, 1, -1], //6
	[-1, -1, -1], //7
	[0, (1/PHI), PHI], //8
	[0, (1/PHI), -PHI], //9
	[0, -(1/PHI), PHI], //10
	[0, -(1/PHI), -PHI], //11
	[(1/PHI), PHI, 0], //12
	[(1/PHI), -PHI, 0], //13
	[-(1/PHI), PHI, 0], //14
	[-(1/PHI), -PHI, 0], //15
	[PHI, 0, (1/PHI)], //16
	[PHI, 0, -(1/PHI)], //17
	[-PHI, 0, (1/PHI)], //18
	[-PHI, 0, -(1/PHI)]], //19
	//faces
	[[16,1,10,8,0], //face1
	[13,15,5,10,1], //face2
	[5,18,4,8,10], //face3
	[4,14,12,0,8], //face4
	[12,2,17,16,0], //face5
	[17,3,13,1,16], //face6
	[19,7,11,9,6], //face7
	[15,13,3,11,7], //face8
	[3,17,2,9,11], //face9
	[2,12,14,6,9,], //face10
	[14,4,18,19,6], //face11
	[18,5,15,7,19]], //face12
];

d20 = [
	//points
	[[0, 1*1.7, PHI*1.7], //0
	[0, 1*1.7, -PHI*1.7], //1
	[0, -1*1.7, PHI*1.7], //2
	[0, -1*1.7, -PHI*1.7], //3
	[1*1.7, PHI*1.7, 0], //4
	[1*1.7, -PHI*1.7, 0], //5
	[-1*1.7, PHI*1.7, 0], //6
	[-1*1.7, -PHI*1.7, 0], //7
	[PHI*1.7, 0, 1*1.7], //8
	[PHI*1.7, 0, -1*1.7], //9
	[-PHI*1.7, 0, 1*1.7], //10
	[-PHI*1.7, 0, -1*1.7]], //11
	//face
	[[8,2,0], //face1
	[1,3,9], //face2
	[11,7,3], //face3
	[10,11,6], //face4
	[5,9,3], //face5
	[4,6,1], //face6
	[11,10,7], //face7
	[8,9,5], //face8
	[2,7,10], //face9
	[1,6,11], //face10
	[8,5,2], //face11
	[0,6,4], //face12
	[5,3,7], //face13
	[4,1,9], //face14
	[2,5,7], //face15
	[8,4,9], //face16
	[0,10,6], //face17
	[0,2,10], //face18
	[0,4,8], //face19
	[1,11,3]], //face20
];

amulti=1.8;
n=5;
a=((1/2)*csc(rtod(PI/n))); //radius of n-gon base points
h=sqrt(4-sec(rtod(PI/(2*n)))^2)/(4+(8*cos(rtod(PI/n)))); //height of n-gon base points
z=(1/4)*cos(rtod(PI/(2*n))) * cot(rtod(PI/(2*n))) * csc(rtod((3*PI)/(2*n))) * sqrt(4-sec(rtod(PI/(2*n)))^2); //height of apices

d10= [ 
	[for(i=[0:360/(n*2):360-1]) [amulti*a*cos(i),amulti*a*sin(i), i/(360/(n*2))%2==0 ? h:-h],
	[0,0,z], //top apice
	[0,0,-z]], //bottom apice
	//faces
	[[2,1,0,10], //1
	[7,8,9,11], //2
	[6,5,4,10], //3
	[1,2,3,11], //4
	[8,7,6,10], //5
	[9,0,1,11], //6
	[4,3,2,10], //7
	[5,6,7,11], //8
	[0,9,8,10], //9
	[3,4,5,11]] //0
];
module dice (poly=d4, draw=true, draw_points=false, draw_text=false, text_depth=.1, percent=false, font=undef) {
	difference() {
		if (draw)
			polyhedron(poly[0], poly[1]);
		if (draw_points)
			for (point=[0:1:len(poly[0])-1])
				color("blue") translate(poly[0][point]) linear_extrude(height=.1) text(text=str(point), size=.5, halign="center", valign="center");
		if (draw_text) {
			r = 90;
			for (face=[0:1:len(poly[1])-1]) {
				points = [for (i=[0:1:len(poly[1][face])-1]) poly[0][poly[1][face][i]]];
				center = mean(points);
				n=len(poly[1][face]);
				rotated_points = rotY(-inclination_angle(center), rotZ(azimuthal_angle(center), points[0]-center));
				
				if (poly==d4) {
					translate(points[0])
					rotate(-azimuthal_angle(points[0]))
					rotate([-inclination_angle(points[0])*sign(points[0].z),0,0])
					for (i=[0:360/n:360-1])
						rotate(i)
						rotate([70,0,60])
						translate([0,-.6,-text_depth/2])
						linear_extrude(.1) text(str(face+1), valign="center", halign="center", size=.4, font=font);
				}

				else if (poly==d10) {
					translate(center-[sign(center.x)*text_depth/2,sign(center.y)*text_depth/2, sign(center.z)*text_depth/2])
					if (percent) {
						if ((face+1)%2!=0) {
							rotate([0,53, azimuthal_angle(center)])
							rotate(180)linear_extrude(text_depth*2) text(str(face+1,0), size=.6, valign="center", halign="center", font=font);
						}
						else {
								rotate([180,-53, azimuthal_angle(center)])
								rotate(180)linear_extrude(text_depth*2) text(str((face+1)%10,0), size=.6, valign="center", halign="center", font=font);
						}
					}
					else {
						if ((face+1)%2!=0) {
							rotate([0,53, azimuthal_angle(center)])
							rotate(90) linear_extrude(text_depth*2) text(str(face+1), size=.6, valign="center", halign="center", font=font);
						}
						else {
							if (face+1==6){
								rotate([180,-53, azimuthal_angle(center)])
								rotate(90) linear_extrude(text_depth*2) text(str((face+1)%10,"."), size=.6, valign="center", halign="center", spacing=.8, font=font);
							}
							else {
								rotate([180,-53, azimuthal_angle(center)])
								rotate(90) linear_extrude(text_depth*2) text(str((face+1)%10), size=.6, valign="center", halign="center", font=font);
							}
						}
					}
				}

				else
					if ((face+1)==6 && len(poly[1])>6)
						translate(center-[sign(center.x)*text_depth,sign(center.y)*text_depth, sign(center.z)*text_depth])
						rotate([0,inclination_angle(center), azimuthal_angle(center)])
						{
							if (sign(rotated_points.x) <=0 ) {
								rotate(angleBetweenVectors([0,1,0], rotated_points))
								linear_extrude(text_depth*2) text(str(face+1,"."), size=.9, valign="center", halign="center", spacing=.8, font=font);
							}
							else {
								rotate(-angleBetweenVectors([0,1,0],rotated_points))
								linear_extrude(text_depth*2) text(str(face+1,"."), size=.9, valign="center", halign="center", spacing=.8, font=font);
							}
						}

					else
						translate(center-[sign(center.x)*text_depth/2,sign(center.y)*text_depth/2, sign(center.z)*text_depth/2])
						rotate([0,inclination_angle(center), azimuthal_angle(center)])
						{
							if (sign(rotated_points.x) <=0 ) {
								rotate(angleBetweenVectors([0,1,0],rotY(inclination_angle(center), rotZ(azimuthal_angle(center),points[0]-center))))
								linear_extrude(text_depth*2) text(str(face+1), size=.9, valign="center", halign="center", font=font);
							}
							else {
								rotate(-angleBetweenVectors([0,1,0],rotY(inclination_angle(center), rotZ(azimuthal_angle(center),points[0]-center))))
								linear_extrude(text_depth*2) text(str(face+1), size=.9, valign="center", halign="center", font=font);
							}
						}
			}
		}
	}
}

