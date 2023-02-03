SELECT name, numbers 
FROM
(SELECT first_name, last_name, CONCAT (first_name, " ", last_name) AS name, GROUP_CONCAT(number SEPARATOR ',') AS numbers
FROM people
LEFT JOIN phones
ON people.id = phones.user_id
GROUP BY first_name, last_name
ORDER BY last_name) AS withseparatenames;
