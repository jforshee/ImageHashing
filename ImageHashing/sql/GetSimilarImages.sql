/*

	 This is just an example of how functions can be used in a select statement.

	 Select similar images using ImageHashing functions and a threshold value.
	 When storing ulong integers in the database as bigints be aware that we may have overflows
	 because ulong has a greater range of positive numbers, nonetheless we can safely store them 
	 because but both are 64 bit data types so the binary representation does not change after conversion.

*/

CREATE PROCEDURE [dbo].[GetSimilarImages]
@phash BIGINT
AS
BEGIN
    DECLARE @threshold AS FLOAT = 93;
    SELECT *
    FROM   Images AS i
    WHERE  i.PHash IS NOT NULL
           AND dbo.EvalSimilarity(i.PHash, @phash) >= @threshold;
END