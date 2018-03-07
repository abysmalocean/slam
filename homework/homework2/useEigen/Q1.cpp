#include <iostream>
using namespace std;
#include <ctime>
// Eigen 部分
#include <Eigen/Core>
// 稠密矩阵的代数运算（逆，特征值等）
#include <Eigen/Dense>

#define MATRIX_SIZE 500
int main( int argc, char** argv ){
        Eigen::Matrix< double, Eigen::Dynamic, Eigen::Dynamic > matrix_dynamic;
        Eigen::Matrix< double,  Eigen::Dynamic,  Eigen::Dynamic > matrix_NN;
        matrix_NN = Eigen::MatrixXd::Random( MATRIX_SIZE, MATRIX_SIZE );
        Eigen::Matrix< double, MATRIX_SIZE,  1> v_Nd;
        v_Nd = Eigen::MatrixXd::Random( MATRIX_SIZE,1 );

        /*
           for (int i=0; i<100; i++) {
            for (int j=0; j<100; j++)
                cout<<matrix_NN(i,j)<<"\t";
            cout<<endl;
           }
         */
        clock_t time_stt = clock(); // 计时
        Eigen::Matrix<double,MATRIX_SIZE,1> x1 = matrix_NN.inverse()*v_Nd;
        cout <<"time use in normal  inverse is " << \
        1000* (clock() - time_stt)/(double)CLOCKS_PER_SEC << \
        "ms"<< endl;

        time_stt = clock();
        Eigen::Matrix<double,MATRIX_SIZE,1> x2 = \
                            matrix_NN.fullPivHouseholderQr().solve(v_Nd);
        cout <<"time use in Qr      decomposition is " << \
        1000*  (clock() - time_stt)/(double)CLOCKS_PER_SEC << \
        "ms" << endl;

        time_stt = clock();
        //matrix_NN.isjoint();
        Eigen::Matrix<double,MATRIX_SIZE,1> x3 = \
                (matrix_NN.transpose() *matrix_NN).llt().solve(matrix_NN.transpose() * v_Nd);
        cout <<"time use in Cholesky decomposition is " << \
        1000*  (clock() - time_stt)/(double)CLOCKS_PER_SEC << \
        "ms" << endl;
        if(x1.isApprox(x2)) {
          printf("Result is Equal\n");
        } else {
          printf("Restul for QR and origial are not equal\n" );
        }
        if((x1 - x3).norm() < 0.1) {
          printf("Result is Equal\n");
          //cout << "X1" <<endl<<x1 << endl;

          //cout <<"X2"<<endl<< x3;
        } else {
          printf("Restul for Ch and origial are not equal\n" );
          //cout << "X1" <<endl<<x1 << endl;

          //cout <<"X2"<<endl<< x3;
        }



}
