-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 08:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'admin', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E'),
(13, 'vikas', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(14, 'sudhir', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(15, 'foodmanager', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(16, 'office', 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(17, 'Pizza', 'Food_Category_452.jpg', 'Yes', 'Yes'),
(18, 'Burger', 'Food_Category_214.jpg', 'Yes', 'Yes'),
(19, 'Soup', 'Food_Category_209.jpg', 'Yes', 'Yes'),
(20, 'Rice', 'Food_Category_587.jpg', 'Yes', 'Yes'),
(21, 'Grilled Chicken', 'Food_Category_540.jpg', 'Yes', 'Yes'),
(22, 'Noodles', 'Food_Category_67.jpg', 'Yes', 'Yes'),
(23, 'Curry', 'Food_Category_136.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(15, 'Detroit-style pizza', 'Detroit-style pizza is a rectangular pizza with a thick crust that is crispy and chewy.', '399.00', 'Food-Name-6749.jpg', 17, 'Yes', 'Yes'),
(16, 'California Pizza', 'California Pizza Kitchen is an American casual dining restaurant chain that specializes in California-style pizza', '249.00', 'Food-Name-8345.jpg', 17, 'Yes', 'Yes'),
(17, 'Chicago Pizza', 'Chicago-style pizza usually refers to deep-dish pizza, which is a thick pizza baked in a pan and layered with cheese, fillings like meat and vegetables, and sauce–in that order', '279.00', 'Food-Name-684.jpg', 17, 'Yes', 'Yes'),
(18, 'Neapolitan Pizza', 'Neapolitan pizza (Italian: pizza napoletana), also known as Naples-style pizza, is a style of pizza made with tomatoes and mozzarella cheese. The tomatoes must be either San Marzano tomatoes or Pomodorino del Piennolo del Vesuvio, which grow on the volcanic plains to the south of Mount Vesuvius.', '329.00', 'Food-Name-5831.jpg', 17, 'Yes', 'No'),
(19, 'Sicilian Pizza', 'In the United States, \"Sicilian pizza\" is used to describe a typically square variety of cheese pizza with dough over an inch thick, a crunchy base, and an airy interior. It is derived from the sfinciuni and was introduced in the United States by the first Italian (Sicilian) immigrants.', '199.00', 'Food-Name-2877.jpg', 17, 'Yes', 'Yes'),
(20, 'Lamb Burgers', 'Mix ground lamb, garlic powder, rosemary, thyme, salt, and pepper together in a large bowl until thoroughly combined; shape into 4 patties. ', '149.00', 'Food-Name-2119.jpg', 18, 'Yes', 'Yes'),
(21, 'Lentil and Mushroom Burger', 'Lentils, carrot, onion, finely chopped sunflower seeds and walnuts, fresh herbs, vegan Worcestershire and tomato paste all go into the making of a perfect, classic burger.', '199.00', 'Food-Name-7237.jpg', 18, 'Yes', 'Yes'),
(22, 'Potato Corn Burgers', 'Cut grilled corn kernels from cob. In a medium mixing bowl, combine mayonnaise, sour cream, olive oil, lime zest and juice, chili powder, and cilantro.', '189.00', 'Food-Name-6322.jpg', 18, 'Yes', 'Yes'),
(23, 'Supreme Veggie Burger', 'A veggie burger is a hamburger patty that does not contain meat. It may be made from ingredients like beans, especially soybeans and tofu, nuts, grains, seeds or fungi such as mushrooms or mycoprotein.', '219.00', 'Food-Name-3618.jpg', 18, 'Yes', 'Yes'),
(24, 'Tomato Soup', 'Tomato soup is a soup with tomatoes as the primary ingredient. It can be served hot or cold, and may be made in a variety of ways', '79.00', 'Food-Name-1378.jpg', 19, 'Yes', 'Yes'),
(25, 'Chicken Noodle Soup', 'Chicken soup is a soup made from chicken, usually with various other ingredients. The classic chicken soup consists of a clear chicken broth, often with pieces of chicken or vegetables', '119.00', 'Food-Name-494.jpg', 19, 'Yes', 'Yes'),
(26, 'Schezwan Fried Rice', 'Schezwan sauce is a popular Indo-Chinese condiment made with red chilies, garlic, soya sauce, vinegar and Sichuan peppers.', '90.00', 'Food-Name-8043.jpg', 20, 'Yes', 'Yes'),
(27, 'Singapore Fried Rice', 'Singapore Fried Rice is a Chinese takeaway classic. It is a delicious amalgamation of fresh ginger, garlic, spicy roasted red chilli paste, and a tinge of Russian sauce', '90.00', 'Food-Name-6541.jpg', 20, 'Yes', 'Yes'),
(28, 'Grilled Chicken', 'Barbecue chicken consists of chicken parts or entire chickens that are barbecued, grilled or smoked.', '299.00', 'Food-Name-5104.jpg', 21, 'Yes', 'Yes'),
(29, 'Egg Noodles', 'Egg noodles are basically confined to the broad, flat, thicker-textured classic noodle shape, though they come in fine, broad, wide, and extra wide versions', '120.00', 'Food-Name-3503.jpg', 22, 'Yes', 'Yes'),
(30, 'Ramen Noodles', 'Ramen is a Japanese noodle dish. It consists of Chinese-style wheat noodles served in a meat-based broth, often flavored with soy sauce or miso', '120.00', 'Food-Name-6034.jpg', 22, 'Yes', 'Yes'),
(31, 'Soba Noodles', 'Soba is a thin Japanese noodle made from buckwheat. The noodles are served either chilled with a dipping sauce, or hot in a noodle soup', '120.00', 'Food-Name-1978.jpg', 17, 'Yes', 'Yes'),
(32, 'Hokkien noodles', 'Egg, or hokkien, noodles are a type of noodle made from wheat flour and egg yolks, characterised by round yellow strands that are soft and chewy', '150.00', 'Food-Name-3990.jpg', 22, 'Yes', 'Yes'),
(33, 'Chicken Dhansak', 'Chicken Dhansak is a popular Indian dish, originating among the Parsi Zoroastrian community. It combines elements of Persian and Gujarati cuisine', '249.00', 'Food-Name-8069.jpg', 23, 'Yes', 'Yes'),
(34, 'Chicken Tikka Masala', 'Chicken tikka masala is a dish consisting of roasted marinated chicken chunks in spiced curry sauce. The curry is usually creamy and orange-coloured', '249.00', 'Food-Name-2413.jpg', 23, 'Yes', 'Yes'),
(35, 'Saag', 'Saag, also spelled sag or saga, is a South Asian leaf vegetable dish eaten with bread such as roti or naan, or in some regions with rice', '149.00', 'Food-Name-3591.jpg', 23, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(94, 'Ramen Noodles', '120.00', 2, '240.00', '2022-06-17 08:10:29', 'Delivered', 'Vikas Mourya', '8989889989', 'vikas@indai.com', 'Hiranandani, Thane 400754'),
(95, 'Chicken Dhansak', '249.00', 3, '747.00', '2022-06-17 08:11:38', 'Delivered', 'Sudhir Gupta', '8535737858', 'Sudhir@indai.com', 'Wall street patation, thane west'),
(96, 'Singapore Fried Rice', '90.00', 1, '90.00', '2022-06-17 08:13:28', 'Cancelled', 'Sagar Gupta', '9747583757', 'Sagar@indai.com', 'Hiranandani, thane 400748'),
(97, 'Grilled Chicken', '299.00', 6, '1794.00', '2022-06-17 08:14:35', 'On Delivery', 'Rohan More', '9578584753', 'rohan@yahoo.com', 'Kalwa, thane east'),
(98, 'Supreme Veggie Burger', '219.00', 3, '657.00', '2022-06-17 08:15:56', 'Delivered', 'Richa Somani', '8457399372', 'somani.richa@mapple.com', 'Jhulelal street, mumbai'),
(99, 'Schezwan Fried Rice', '90.00', 1, '90.00', '2022-06-17 08:17:36', 'Delivered', 'Pooja Shrivastav', '9473463636', 'Pooja@yami.com', 'bank street, near yogi park, ghatkopar'),
(100, 'Chicken Noodle Soup', '119.00', 4, '476.00', '2022-06-17 08:19:41', 'On Delivery', 'Pranita Shetty', '7498847374', 'Shettypranita@mapple.com', 'south tip point, near krafat market, mumbai west'),
(101, 'Egg Noodles', '120.00', 2, '240.00', '2022-06-17 08:42:41', 'Ordered', 'Venugopal Iyer ', '9784733789', 'scientist@iyer.com', 'south colonies, near juhu circle, andheri west');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE responses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    keyword VARCHAR(255) NOT NULL,
    response TEXT NOT NULL
);

INSERT INTO responses (keyword, response) VALUES ('hello', 'Hi there! How can I help you today?');
INSERT INTO responses (keyword, response) VALUES ('how are you', 'I am just a bot, but I am functioning as expected!');
INSERT INTO responses (keyword, response) VALUES ('bye', 'Goodbye! Have a nice day!');
