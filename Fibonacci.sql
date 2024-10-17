DECLARE

    n INTEGER;
    TYPE numarray IS VARRAY(n) OF INTEGER; 
    fbonacci numarray;
    fibonacci(1) := 0;
    fibonacci(2) := 1;

BEGIN

    dbms_output.put_line('Enter Number : ');
    n := :n;

    FOR i IN 3 .. n LOOP
        IF i <= 2 THEN
            EXIT;
        ELSE
            fibonacci(i) := fibonacci(i - 1) + fibonacci(i - 2);
        END IF;
    END LOOP;

    dbms_output.put_line('Fibonacci series is : ');

    FOR i IN 1 .. n LOOP
        dbms_output.put_line(fibonacci(i));

END