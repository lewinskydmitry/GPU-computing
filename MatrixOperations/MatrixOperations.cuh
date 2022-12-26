#pragma once
#include <cuda_runtime.h>
#include <device_launch_parameters.h>
#include <stdio.h>
#include <iostream>
#include "../Matrix/Matrix.h"
#include <stdexcept>

void cudaCallAddMatrixKernel(const double* a,
    const double* b,
    double* c,
    const int size);

Matrix AddMatrix(Matrix a, Matrix b);

Matrix cpu_matrix_mult(Matrix a, Matrix b);