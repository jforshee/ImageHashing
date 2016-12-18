/*

	 T-SQL version of ImageHashing.Similarity(ulong hash1, ulong hash2) method.
	 Returns a percentage-based similarity value between the two given hashes. The higher the percentage, the closer the hashes are to being identical.

*/

CREATE FUNCTION [dbo].[EvalSimilarity]
(@a BIGINT, @b BIGINT)
RETURNS FLOAT
AS
BEGIN
    RETURN (((64 - dbo.CountBits(@a ^ @b)) * 100) / 64.0);
END;