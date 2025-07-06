1. Stored Procedure: IssueLoan
Purpose: Automatically insert a new loan record for a member.

Query:

DELIMITER $$

CREATE PROCEDURE IssueLoan (
    IN p_BookID INT,
    IN p_MemberID INT,
    IN p_StaffID INT,
    IN p_LoanDate DATE,
    IN p_DueDate DATE
)
BEGIN
    INSERT INTO Loans (BookID, MemberID, StaffID, LoanDate, DueDate)
    VALUES (p_BookID, p_MemberID, p_StaffID, p_LoanDate, p_DueDate);
END $$

DELIMITER ;

Call it :

CALL IssueLoan(1, 2, 1, '2025-06-25', '2025-07-05');
