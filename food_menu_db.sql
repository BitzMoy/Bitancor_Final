
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `tbl_menu` (
  `tbl_menu_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `tbl_menu` (`tbl_menu_id`, `image`, `menu_name`, `price`, `description`) VALUES
(1, 'menu.jpg', 'Pinakbet', 25, 'Vegetables'),
(2, 'menu1.jpg', 'Adobong Manok', 40, 'Chicken\r\n'),
(3, 'menu2.jpg', 'Sinigang', 50, 'Pork'),
(4, 'menu3.jpg', 'Menudo', 50, 'Pork');


ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`tbl_menu_id`);


ALTER TABLE `tbl_menu`
  MODIFY `tbl_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;