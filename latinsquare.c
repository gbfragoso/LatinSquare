#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int check(int **matrix,int row, int col, int value, int size);
void prepare(int **matrix, int size);
void print(int **matrix, int size);
void solve(int **matrix, int row, int col, int size);

FILE *output;

int main (int argc, char **argv){
    int n = 0, i; 
    int **matrix;
    
    if (argc == 2){
        output = fopen("output.txt","w");
        if(output){
            n = atoi(argv[1]);
            
            // Reserve memory
            matrix = (int**) calloc (n,sizeof(int*));
            for(i = 0; i < n;i++){
                matrix[i] = (int*) calloc (n,sizeof(int));
            }
            
            prepare(matrix, n);

            // Time
            clock_t start = clock();
            solve(matrix,0,0,n);
            clock_t end = clock();
            float seconds = (float)(end - start) / CLOCKS_PER_SEC;
            fprintf(output,"Time: %f\n",seconds);
            
            // Free memory
            for(i = 0; i < n;i++){
                free(matrix[i]);
            }
            free(matrix);
            fclose(output);
        }else{
            printf("Error when opening the output file.\n");
        }
    }else{
        printf("Wrong params, please run %s size\n", argv[0]);
    }
}

int check (int **matrix, int row, int col, int value, int n){
    int l, c;
    
    if (matrix[row][col] == value)
        return 1;
    if (matrix[row][col] != 0)
        return 0;
    
    for (c = 0; c < n; c++){
        if (matrix[row][c] == value)
            return 0;
    }    
    for (l = 0; l < n; l++){
        if (matrix[l][col] == value) 
            return 0;
    }
    
    return 1;
}

void prepare(int **matrix, int size){
    int i;
    for(i = 0; i<size;i++){
        matrix[0][i] = matrix[i][0] = i + 1; 
    }
    matrix[1][1] = 5;
}

void print(int **matrix, int size){
    int i,j;
    for(i = 0; i<size;i++){
        for(j = 0; j<size;j++){
            fprintf(output,"%d ", matrix[i][j]);
        }
        fprintf(output,"\n");
    }
    fprintf(output,"\n");
}

void solve(int **matrix, int row, int col, int size){
    int newValue, t;
    
    if (row == size){
        print(matrix,size);
    }else{
        for (newValue = 1; newValue <= size; newValue++){
            if (check(matrix,row,col,newValue,size)){
                t = matrix[row][col];
                matrix[row][col] = newValue;
                if (col == size-1)
                    solve(matrix,row + 1, 0,size);
                else
                    solve(matrix,row, col + 1,size);
            
                matrix[row][col] = t;
            }
        }
    }
}