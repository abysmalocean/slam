#include <iostream>
#include <cmath>
using namespace std;

#include <Eigen/Core>
// Eigen 几何模块
#include <Eigen/Geometry>


int main ( int argc, char** argv )
{
        Eigen::Vector3d v1 ( 0.7, 1.1, 0.2 );
        Eigen::Quaterniond rotation_vector1 (0.55, 0.3, 0.2, 0.2);
        rotation_vector1.normalize();
        cout<<"quaternion = \n"<<rotation_vector1.coeffs() <<endl;
        Eigen::Vector3d v2 ( -0.1, 0.4, 0.8 );
        Eigen::Quaterniond rotation_vector2 (-0.1, 0.3, -0.7, 0.2);
        rotation_vector2.normalize();
        Eigen::Vector3d v3 ( 0.5, -0.1, 0.2 );
        Eigen::Vector3d v_rotated = rotation_vector1 * v3;
        cout<<"First = \n"<<v_rotated.transpose() <<endl;

        Eigen::Vector3d v_rotated2 = v_rotated + v1;
        cout<<"Second = \n"<<v_rotated2.transpose() <<endl;

        Eigen::Vector3d v_rotated3 = rotation_vector2 * v_rotated2 - v2;
        cout<<"Third = \n"<<v_rotated3.transpose() <<endl;



}
