﻿#include "../Matrix/Matrix.h"
#include "../MatrixOperations/MatrixOperations.cuh"
#include "../LinearRegression/LinearRegression.cuh"


int main() {
	// Test linear regression
	Matrix X_lin = Matrix::read_csv("C:/Users/Dmitry/source/repos/lewinskydmitry/CUDA/CudaProject/data_linear/X.csv",',');
	Matrix y_lin = Matrix::read_csv("C:/Users/Dmitry/source/repos/lewinskydmitry/CUDA/CudaProject/data_linear/y.csv", ',');

	LinearRegression reg;
	Matrix C_lin = reg.fit(X_lin, y_lin, 20);

	reg.losses.print();
	//std::cout << "\n Results: \n";
	//C_lin.print();

    return 0;
}