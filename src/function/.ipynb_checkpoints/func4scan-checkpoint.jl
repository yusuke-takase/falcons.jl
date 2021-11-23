@inline function vec2ang_ver2(x, y, z)
    norm = sqrt(x^2 + y^2 + z^2)
    theta = acos(z / norm)
    phi = atan(y, x)
    phi = ifelse(phi > π, π-phi, phi)
    return (theta, phi)
end

@inline function quaternion_rotator(omega, t, rotate_axis)
    #= Generate a quaternion that rotates by the angle omega*t around the rotate_axis axis. =#
    rot_ang = omega * t
    Quaternion(@SVector [cos(rot_ang/2.0), rotate_axis[1]*sin(rot_ang/2.0), rotate_axis[2]*sin(rot_ang/2.0), rotate_axis[3]*sin(rot_ang/2.0)])
end

@inline function vector_rotator(vec, rot_ang, rotate_axis)
    #= Generate a quaternion that rotates by the angle omega*t around the rotate_axis axis. =#
    q = Quaternion(@SVector [cos(rot_ang/2.0), rotate_axis[1]*sin(rot_ang/2.0), rotate_axis[2]*sin(rot_ang/2.0), rotate_axis[3]*sin(rot_ang/2.0)])
    vec_q = Quaternion(0.0, vec)
    rot_vec = q * vec_q / q
    return @SVector [rot_vec.q1, rot_vec.q2, rot_vec.q3]
end