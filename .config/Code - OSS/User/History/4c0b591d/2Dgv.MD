
// single line comments

/*
multi line comments
*/

THING TO KEEP IN MIND:

you cannot just     |      you have to
                    |
`printf(<VAR>);`    |      `printf("%d",<VAR>);`

format specifiers; INTs %d or %i, FLOATs %f or %F, DOUBLEs %lf, CHARs %c

                    (╯°□°)╯︵ ┻━┻

 int    |   2 or 4  |   stores whole numbers    |   1 or 5 or 125 
        |    bytes  |                           |
float   |   4 bytes | stores fractional numbers |   1.99
        |           |   (for?) storing 6-7 dp   |
double  |   8 bytes | stores fractional numbers |   2.99
        |           |   (for?) storing 15 dp    |
 char   |   1 byte  | stores a single character |   `A`
        |           | letter/number or ascii val|   

when using formating for printing values you can do it without variables as well just use the correct format specifier ( eg `printf("value %d",15);` )

declared variables ( `int Num;` or `int Num = 10;` ) don't need to be "re-declared" to be assigned a different value ( `Num = 10` )

you can declare multiple variables at once utelizing commas ( `int x = 5, y = 1, z = 10;` ) just like declaring you can also make all the variables have the same number if you write ( `x = y = z = 50` ) with that said you can also do something like `printf("%d",x+y+z)` 