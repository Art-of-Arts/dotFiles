
// single line comments

/*
multi line comments
*/

THING TO KEEP IN MIND:

you cannot just     |      you have to
                    |
`printf(<VAR>);`    |      `printf("%d",<VAR>);`

format specifiers; INTs %d or %i, FLOATs %f or %F, DOUBLEs %lf, CHARs %c, Long unsigned ints %lu

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

chars can be encoded with the ascii values ( instead of `char a = 'a';` you can `char a = 65` )

to create a string variable you need to use `char` to generate an array, ( `char string[] = "Your string here";` ) to put it into a printf you need to use a `%s` or to pull a single character `%c` ( `printf("%s",stringVar);` or `printf("%c",stringVar[0]);` )

to make a read only variable add `const` in front of the variable type declaraton, constant variables must be assigned a value when created

