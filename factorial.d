// libraries
import std.stdio;
import std.conv;
import std.string;

// global variables
const LOOP_UNTIL_INPUT = 1;
string input;

long factor;
long factorBuffer;

void get()
{
    while(LOOP_UNTIL_INPUT)
    {
        writeln("Type any integer");
        input = readln().replace("\n", "");
        // as the user inputs their integer, the terminating character is replaced with nothing, reducing it to 0

        // converts the string user input into a long, and then making what is to be factored equal to it
        factor = to!long(input);
        factorBuffer = factor;

        // exits the loop
        break;
    }
}

void operation()
{
    long productBuffer;
    long product;

    switch(factor)
    {
        case 0:
            // 0! = 1, therefore the buffer will be 1
            productBuffer = 1;

            // skips the for loop to go to outputting the product, saving resources
            goto writeProduct;
            break;
        case 1:
            // 1! = 1, therefore the buffer will be 1
            productBuffer = 1;

            // skips the for loop to go to outputting the product, saving resources
            goto writeProduct;
            break;
        default:
            break;
    }

    for(int i=0; i<factorBuffer; i++)
    {
        // anything multiplied by zero is equal to zero, therefore when i=0, it will continue to the next iteration
        if(i == 0)
        {
            continue;
        }
        else
        {
            productBuffer = factor; // the product buffer is equal to the factor
            productBuffer = i*factor; // then it becomes equal to i multiplied to the factor
            factor = i*factor; // factor also becomes equal to i multiplied by itself
        }
    }

    writeProduct:
        product = productBuffer; // the product is equal to the buffer
        writeln(product, "\n"); // then it outputs the product
}

void repetition()
{
    // repeats every function, including itself
    get();
    operation();
    repetition();
}

int main()
{
    get(); // get function occurs first
    operation(); // the operation occurs next
    repetition(); // then it will loop in repetition for as long as the application is openned

    return 0; // returns 0, signifying it has ran successfully
}
