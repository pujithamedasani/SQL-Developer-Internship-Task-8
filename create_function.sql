2. Function: GetFineTotalByMember
Purpose: Return the total unpaid fine amount for a specific member.

Query:

DELIMITER $$

CREATE FUNCTION GetFineTotalByMember(p_MemberID INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total_fines DECIMAL(10,2);

    SELECT SUM(F.Amount) INTO total_fines
    FROM Fines F
    JOIN Loans L ON F.LoanID = L.LoanID
    WHERE L.MemberID = p_MemberID AND F.Paid = FALSE;

    RETURN IFNULL(total_fines, 0.00);
END $$

DELIMITER ;

Call it :

SELECT GetFineTotalByMember(1) AS TotalUnpaidFine;

Output:

+-----------------+
| TotalUnpaidFine |
+-----------------+
|           25.00 |
+-----------------+
