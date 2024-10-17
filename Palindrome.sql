DECLARE

    str VARCHAR2(20);
    rstr VARCHAR2(20);
    len INTEGER;
    i integer;

BEGIN

    dbms_output.put_line('Enter the string : ');
    str := :str;
    len := LENGTH(str);

    FOR i IN REVERSE 1..len LOOP
        rstr := rstr || substr(str, i, 1);
    END LOOP;

    IF str = rstr THEN
        dbms_output.put_line(str|| ' is a palindrome');
    ELSE
        dbms_output.put_line(str|| ' is not a palindrome');
    END IF;

END;