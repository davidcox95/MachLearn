#Welcome to MachLearn!
###MachLearn is a machine learning library written entirely in Objective-C!
####Getting Started:
1. Download or Clone this repository
2. Move Matrix.h and Matrix.m into your project
3. Move desired algorithm header and implementation files into project
####Supported Algorithms:
#####Linear Regression (Univariable):
```Objective-C
/*Initialize Linear Regression Object*/
LinReg *reg = [[LinReg alloc] init];

/*Load data from file into matrix (See MatR repository for explanation)*/
Matirx *data = [[Matrix alloc] initWithContentsFromFile@"fullFilePath"];

/*Train program on data matrix, must give chosen alpha and number iterations.*/
[reg train:data withAlpha:0.0001 withIterations:100000];

/*Print out trained hypothesis (expression of a line).*/
[reg print_hypothesis];

/*Test trained program with other input and log the output to console.*/
NSLog(@"%f", [reg test:2.5]); 
```

######This repository uses MatR, an Objective-C library of matrix operations.
######Find it at https://github.com/davidcox95/MatR
