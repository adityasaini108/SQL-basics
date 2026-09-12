-- 12/09/2026  Saturday

/*
Trigger
trigger are the block of code that automatically executed when an event happens

*/

CREATE OR REPLACE TRIGGER trigger_1
AFTER
INSERT ON employee_2

BEGIN
    dbms_output.put_line('hey trigger after update');

END;

/*
BY EXECUTION LEVEL there are two types of triggers ->
|->  STATEMENT LEVEL TRIGGER -  Run once for every single row affected by the SQL statement.
|->  ROW LEVEL TRIGGER  -  Run only once for the entire SQL statement, no matter how many rows change.
*/

Create table project_task (
  task_id   int, 
  task_name  Varchar2(100) not null
  status     varchar2(20) default 'pending'
-- Audit fields
created_by varchar2(50)
created_by timestamp
);

CREATE TABLE project_tasks (
    -- Audit fields:
    created_by   VARCHAR2(50),
    CREATED_at   TIMESTAMP
);






