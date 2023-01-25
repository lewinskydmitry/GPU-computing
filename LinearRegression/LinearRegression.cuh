#pragma once

#include "../Matrix/Matrix.h"
#include "../MatrixOperations/MatrixOperations.cuh"


class LinearRegression {
public:
	Matrix losses;
	Matrix d_w;
	double THETA = 0.01;
	Matrix fit(Matrix X, Matrix y, int epoch);
};
