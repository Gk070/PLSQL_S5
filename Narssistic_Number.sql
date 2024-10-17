DECLARE

    num INTEGER := 153;
    temp INTEGER;
    digit INTEGER;
    total_sum INTEGER := 0;
    total_digit INTEGER;
    i INTEGER;

BEGIN

    total_digit := LENGTH(num);
    temp := num;

    FOR i IN 1..total_digit LOOP
        digit := MOD(temp, 10);
        total_sum := total_sum + POWER(digit, total_digit);
        temp := FLOOR(temp / 10);
    END LOOP;

    IF(total_sum = num) THEN
        dbms_output.put_line(num || ' is Narcisstic number');
    ELSE
        dbms_output.put_line(num || ' is not a narcisstic number');
    END IF;

END;