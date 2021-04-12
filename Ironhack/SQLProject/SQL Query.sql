SELECT * FROM client;
SELECT * FROM account;
SELECT * FROM creditcard;
SELECT * FROM loan;
SELECT * FROM disposition;

SELECT account.account_id
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id;

SELECT AVG(payments) FROM (SELECT account.account_id
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
WHERE status = 'D') AS subq;

SELECT AVG(amount) FROM (SELECT account.account_id
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
WHERE status = 'D') AS subq;

SELECT AVG(time_gap) FROM (SELECT account.account_id
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
WHERE status = 'D') AS subq;

SELECT DISTINCT account.account_id
      ,disposition.type
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN disposition ON account.account_id = disposition.account_id;

SELECT account.account_id
      ,disposition.type
      ,loan.amount
	  ,loan.payments
	  ,creditcard.type
	  ,loan.status
	  ,loan.date AS date_loan
	  ,account.date AS date_account
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN disposition ON account.account_id = disposition.account_id
INNER JOIN creditcard ON disposition.disp_id = creditcard.disp_id;
---------------------------------------------------------------------------------------
SELECT client.client_id
      ,account.account_id
	  ,client.sex
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN client ON account.district_id = client.district_id
ORDER BY account.account_id;


SELECT AVG(payments) FROM (SELECT client.client_id
      ,account.account_id
	  ,client.sex
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN client ON account.district_id = client.district_id
ORDER BY account.account_id) AS subq9
WHERE status = 'D';

SELECT AVG(time_gap) FROM (SELECT client.client_id
      ,account.account_id
	  ,client.sex
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN client ON account.district_id = client.district_id
ORDER BY account.account_id) AS subq9
WHERE status = 'D';

SELECT AVG(amount) FROM (SELECT client.client_id
      ,account.account_id
	  ,client.sex
      ,loan.amount
	  ,loan.payments
	  ,loan.status
	  ,(loan.date - account.date) AS time_gap
	  FROM loan
INNER JOIN account ON loan.account_id = account.account_id
INNER JOIN client ON account.district_id = client.district_id
ORDER BY account.account_id) AS subq9
WHERE status = 'D';