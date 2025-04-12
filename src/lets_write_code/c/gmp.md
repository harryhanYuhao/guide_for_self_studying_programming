# Gnu Multiple Precision Library (GMP)

GMP is a library for arbitrary precision arithmetic.

## Description of the API

### Minimal Example 


```c
// compile with flag -lgmp
#include <gmp.h>

int main()
{
    mpz_t x;
    mpz_init_set_str(x, "1234567891011121314151617181920", 0);
	// set x = x * x
	mpz_mul(x, x, x);
	gmp_printf("%Zd \n", x);
	return 0;
}
```


All calculation done with GMP use the custom type `mpz_z`, `mpz_q`, `mpz_f`, representing integers, rational numbers, and floating points respectively.
All variables must be initialized and freed. 
Initialisation and manipulation of variables of different types uses there repective functions. 

```c
mpz_t x;
mpz_init(x);
mpf_t y;
mpf_init(y);
mpq_t z;
mpq_init(z);

mpz_clear(x);
mpf_clear(y);
mpq_clear(z);
```

There are some initialisation shortcuts

```c
mpz_t x, y, z, w, q;
mpz_inits(x, y, z, NULL);  // needs to be null terminated

mpz_init_set_d(w, 3);  // init and set as double
mpz_init_set_str(w, "389123");  // init and set as string

mpz_clears(x, y, z, w, q, NULL);  // needs to be null terminated
```

There are respective functions for `mpq` and `mpf` as well.

The basic computations are performed like this:

```c
void logistic(mpf_t res, mpf_t c, mpf_t x)
{
    mpf_t one, four;
    mpf_init_set_ui(one, 1);
    mpf_init_set_ui(four, 4);
    mpf_sub(res, one, x);  // res = 1 - x
	mpf_mul(res, res, x); // res = res * x
	mpf_mul(res, res, four); // res = res * 4
	mpf_clears(one, four, NULL);
}
```

The `mpf_z`, in the internel, is a type of pointer. 
Manipulations of the variables uses function like `mpf_sub(rop, op1, op2)`, which sets `rop` to `op1 - op2`.



### Random Number Generation with Seed

```c
// compile with g++ main.cpp -lgmp
#include <gmp.h>
#include <time.h>

gmp_randstate_t STATE;
int STATE_INIT = 0;

void random_gmf(mpf_t res, double low, double high)
{
    static mpf_t range, mpf_low;

    if (!STATE_INIT) {
        gmp_randinit_default(STATE);
        gmp_randseed_ui(STATE, time(NULL));
        mpf_init_set_d(mpf_low, low);
        mpf_init_set_d(range, high - low);

        STATE_INIT = 1;
    }

    mpf_urandomb(res, STATE, 64);
    mpf_mul(res, res, range);
    mpf_add(res, res, mpf_low);
}

int main()
{
    mpf_t x;
    mpf_init(x);
    random_gmf(x, 0, 100);
    gmp_printf("%Ff\n", x);
    random_gmf(x, 0, 100);
    gmp_printf("%Ff\n", x);
    mpf_clear(x);

    if (STATE_INIT) {
        gmp_randclear(STATE);
    }

    return 0;
}
```

