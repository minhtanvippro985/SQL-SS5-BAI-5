CREATE DATABASE ranker;
USE ranker ;


CREATE TABLE Users (
    id INT,
    namec NVARCHAR(100),
    total_orders INT
);

INSERT INTO Users (id,namec, total_orders) VALUES 
(1, 'Nguyễn Anh Tuấn', 650), 
(2, 'Trần Thu Hà', 500),     
(3, 'Lê Minh Tâm', 150),      
(4, 'Phạm Đức Duy', 99),     
(5, 'Phạm Đức Duy', 5),     
(6, 'Hoàng Mỹ Linh', 0);     




SELECT namec,total_orders ,
  CASE 
     WHEN total_orders > 500 THEN 'KIM CUONG'
     WHEN total_orders BETWEEN 100 AND 500 THEN 'VANG'
     WHEN (total_orders <= 0 OR total_orders = NULL)  THEN 'UNRANKED'
     ELSE 'BAC'
	END AS 'RANKING'
FROM Users


-- nếu là null thì sẽ tự động gắn lại về số 0 và từ đó sẽ để là không được xếp hạng
-- dùng case when then rồi cuối cùng end as