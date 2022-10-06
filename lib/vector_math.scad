function vector_sum(v) = _vector_sum(v, v[0]*0);

function _vector_sum(v, _total, _i=0) = 
	_i>=len(v) ? 
	_total : 
	_vector_sum(v, _total+v[_i], _i+1);

function magnitude(v) = sqrt(vector_sum([for(i=[0:1:len(v)-1]) v[i]^2]));


function mean(v) = vector_sum(v)/len(v);


function inclination_angle(v) = acos(v[2]/magnitude(v));
function azimuthal_angle(v) = atan2(v[1], v[0]);
