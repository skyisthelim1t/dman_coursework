/* query a */
SELECT recipe_name FROM recipe WHERE recipe_serve_count = 'Serves 4';

/* query b */
SELECT recipe_name FROM recipe WHERE is_vegetarian = TRUE;

/* query c */
SELECT recipe_name
FROM recipe
WHERE recipe_id IN (
    SELECT recipe_id
    FROM recipe_ingredient
    WHERE ingredient_id IN (
        SELECT ingredient_id
        FROM ingredient_id
        WHERE ingredient_name = 'chicken'
    )
);