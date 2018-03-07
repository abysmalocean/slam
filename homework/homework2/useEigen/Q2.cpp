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
        //cout<<"quaternion = \n"<<rotation_vector1.coeffs() <<endl;
        Eigen::Vector3d v2 ( -0.1, 0.4, 0.8 );
        Eigen::Quaterniond rotation_vector2 (-0.1, 0.3, -0.7, 0.2);
        rotation_vector2.normalize();
        Eigen::Vector3d v3 ( 0.5, -0.1, 0.2 );

        Eigen::Isometry3d T_1w = Eigen::Isometry3d::Identity();
        Eigen::Isometry3d T_2w = Eigen::Isometry3d::Identity();
        T_1w.rotate(rotation_vector1);
        T_1w.pretranslate(v1);
        T_2w.rotate(rotation_vector2);
        T_2w.pretranslate(v2);

        Eigen::Vector3d pw  = T_1w.inverse() * v3;
        Eigen::Vector3d p2 = T_2w * pw;
        cout<<"cordiate at second view: "<<p2.transpose()<<endl;
        return 0;
}
