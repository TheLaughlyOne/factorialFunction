// libraries
import std.stdio;
import std.conv;
import std.string;

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

        factor = to!long(input);
        factorBuffer = factor;

        break;
    }
}

void operation()
{
    long productBuffer;
    long product;

    for(int i=0; i<factorBuffer; i++)
    {
        if(i == 0)
        {
            continue;
        }
        else
        {
            productBuffer = factor;
            productBuffer = i*factor;
            factor = i*factor;
        }
    }

    product = productBuffer;
    writeln(product, "\n");
}

void repetition()
{
    get();
    operation();
    repetition();
}

int main()
{
    get();
    operation();
    repetition();

    return 0;
}
