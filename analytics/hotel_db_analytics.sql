use hotel_management; 

-- ------JOIN-------
SELECT 
    r.reservation_id,
    g.guest_id,
    CONCAT(g.first_name, ' ', g.last_name) AS guest_name,
    rm.room_number,
    rt.type_name AS room_type,
    r.check_in_date,
    r.check_out_date,
    r.number_of_guests,
    r.total_price,
    r.reservation_status,
    r.special_request,
    r.created_at
FROM reservation r
JOIN guest g 
    ON r.guest_id = g.guest_id
JOIN rooms rm 
    ON r.room_id = rm.room_id
JOIN room_type rt
    ON rm.room_type_id = rt.room_type_id
WHERE g.guest_id = 32;   -- change 5 to the specific guest_id


-- ------Window Function-------------
SELECT g.guest_id, g.first_name, g.last_name,
       SUM(r.total_price) AS total_spent,
       RANK() OVER (ORDER BY SUM(r.total_price) DESC) AS spending_rank
FROM guest g
JOIN reservation r ON g.guest_id = r.guest_id
GROUP BY g.guest_id, g.first_name, g.last_name;



-- -------CTE----------------
WITH GuestTotals AS (
    SELECT g.guest_id, g.first_name, g.last_name,
           SUM(r.total_price) AS total_spent
    FROM guest g
    JOIN reservation r ON g.guest_id = r.guest_id
    GROUP BY g.guest_id, g.first_name, g.last_name
)
SELECT * FROM GuestTotals;


--   --------ROLLUP--------------------
SELECT rt.type_name, YEAR(r.check_in_date) AS year,
       SUM(r.total_price) AS revenue
FROM reservation r
JOIN rooms rm ON r.room_id = rm.room_id
JOIN room_type rt ON rm.room_type_id = rt.room_type_id
GROUP BY rt.type_name, YEAR(r.check_in_date) WITH ROLLUP;


-- --------CUBE----------------------
-- Cube is not a syntax accepted in MYSQL so it wouldn't work
-- Room type + month
SELECT 
    rt.type_name,
    MONTH(r.check_in_date) AS month,
    COUNT(*) AS total_bookings
FROM reservation r
JOIN rooms rm ON r.room_id = rm.room_id
JOIN room_type rt ON rm.room_type_id = rt.room_type_id
GROUP BY rt.type_name, MONTH(r.check_in_date)

UNION ALL

-- Totals by room type
SELECT 
    rt.type_name,
    NULL AS month,
    COUNT(*) AS total_bookings
FROM reservation r
JOIN rooms rm ON r.room_id = rm.room_id
JOIN room_type rt ON rm.room_type_id = rt.room_type_id
GROUP BY rt.type_name

UNION ALL

-- Totals by month
SELECT 
    NULL AS type_name,
    MONTH(r.check_in_date) AS month,
    COUNT(*) AS total_bookings
FROM reservation r
GROUP BY MONTH(r.check_in_date)

UNION ALL

-- Grand total
SELECT 
    NULL,
    NULL,
    COUNT(*)
FROM reservation;

