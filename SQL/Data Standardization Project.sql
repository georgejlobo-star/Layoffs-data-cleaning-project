-- Remove duplicates
DELETE FROM layoffs_staging2
WHERE row_num > 1;

-- Standardize company names
UPDATE layoffs_staging2
SET company = TRIM(company);

-- Standardize industry (Crypto variations)
UPDATE layoffs_staging2
SET industry = 'Crypto'
WHERE industry LIKE 'Crypto%';

-- Convert empty industry strings to NULL
UPDATE layoffs_staging2
SET industry = NULL
WHERE industry = '';

-- Clean country names (remove trailing periods)
UPDATE layoffs_staging2
SET country = TRIM(TRAILING '.' FROM country);

-- Clean and convert date column
UPDATE layoffs_staging2
SET date = TRIM(date);

UPDATE layoffs_staging2
SET date = NULL
WHERE date = '';

UPDATE layoffs_staging2
SET date = STR_TO_DATE(date, '%m/%d/%Y')
WHERE date IS NOT NULL;

ALTER TABLE layoffs_staging2
MODIFY COLUMN date DATE;

-- Fill missing industries using other rows from same company
UPDATE layoffs_staging2 t1
JOIN layoffs_staging2 t2
  ON t1.company = t2.company
SET t1.industry = t2.industry
WHERE t1.industry IS NULL
  AND t2.industry IS NOT NULL;

-- Delete rows with no layoff data
DELETE FROM layoffs_staging2
WHERE total_laid_off IS NULL
  AND percentage_laid_off IS NULL;

-- Remove row_num column
ALTER TABLE layoffs_staging2
DROP COLUMN row_num;


CREATE TABLE layoffs_cleaned AS
SELECT *
FROM layoffs_staging2;
