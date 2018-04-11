-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2018 at 09:41 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(28, 'Batminton'),
(31, 'Caram'),
(3, 'Cricket'),
(2, 'Football'),
(5, 'Hadoho'),
(4, 'Hokey');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `categories` tinyint(4) NOT NULL,
  `user` tinyint(4) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `categories`, `user`, `date`) VALUES
(24, 'World Cup Football', '<p style=\"text-align:justify\"><span style=\"font-size:18px\">No </span><span style=\"color:#3498db\"><span style=\"font-size:22px\">FIFA World Cup</span></span><span style=\"font-size:18px\">&trade; or any other major sporting event would be the same without the tremendous contribution of its volunteers, who provide key support to a wide range of operational areas while also creating the fantastic atmosphere during the tournament through their friendliness and joy.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#3498db\"><span style=\"font-size:22px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/football4.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:225px; margin:25px; width:400px\" />The 2018 FIFA World Cup Russia</span></span><span style=\"font-size:18px\"> Volunteer Programme presents thousands of people from Russia and other countries with the unique opportunity to be part of the biggest single sporting event in the world and the FIFA Confederations Cup 2017. There are several stages of the programme, including recruiting, selecting and training the volunteers in all 11 Host Cities, and finally organising their work during the event and appreciating their effort and dedication.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">In total, there will be&nbsp;around 5,500&nbsp;volunteers involved in the FIFA Confederations Cup 2017 and 15,000 in the 2018 FIFA World Cup. Dedicated centres located at leading Russian educational institutions are responsible for recruiting and selecting applicants living in Russia. International candidates go through the selection process from their respective home countries with online support.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Candidates should be over 18 years-old, speak English and possess effective teamwork skills. Previous volunteering experience will be an additional advantage. The volunteers will provide support in areas such as Ceremonies, Transport, Media, Protocol, Language Services, Doping Control and Fan Services.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Applications for both FIFA Confederations Cup 2017 and 2018 FIFA World Cup on&nbsp;<strong>FIFA.com</strong>&nbsp;started on 1 June 2016 and finished on 30 December 2016.</span></p>\r\n', 2, 6, '2018-01-17 19:36:04'),
(25, 'World Cup Football', '<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/football1.jpg\" style=\"border-style:solid; border-width:2px; height:300px; margin:20px; width:534px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#3498db\"><span style=\"font-size:22px\">FIFA World Cup</span></span><span style=\"font-size:18px\">&trade; or any other major sporting event would be the same without the tremendous contribution of its volunteers, who provide key support to a wide range of operational areas while also creating the fantastic atmosphere during the tournament through their friendliness and joy.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#3498db\"><span style=\"font-size:22px\">The 2018 FIFA World Cup Russia</span></span><span style=\"font-size:18px\"> Volunteer Programme presents thousands of people from Russia and other countries with the unique opportunity to be part of the biggest single sporting event in the world and the FIFA Confederations Cup 2017. There are several stages of the programme, including recruiting, selecting and training the volunteers in all 11 Host Cities, and finally organising their work during the event and appreciating their effort and dedication.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">In total, there will be&nbsp;around 5,500&nbsp;volunteers involved in the FIFA Confederations Cup 2017 and 15,000 in the 2018 FIFA World Cup. Dedicated centres located at leading Russian educational institutions are responsible for recruiting and selecting applicants living in Russia. International candidates go through the selection process from their respective home countries with online support.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/football3.jpg\" style=\"border-style:solid; border-width:2px; float:right; height:168px; margin:20px; width:300px\" />Candidates should be over 18 years-old, speak English and possess effective teamwork skills. Previous volunteering experience will be an additional advantage. The volunteers will provide support in areas such as Ceremonies, Transport, Media, Protocol, Language Services, Doping Control and Fan Services.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Applications for both FIFA Confederations Cup 2017 and 2018 FIFA World Cup on&nbsp;<strong>FIFA.com</strong>&nbsp;started on 1 June 2016 and finished on 30 December 2016.</span></p>\r\n', 2, 6, '2018-01-17 19:47:32'),
(26, 'World Cup Football', '<p style=\"text-align:justify\"><span style=\"color:#3498db\"><span style=\"font-size:18px\">No FIFA World Cup&trade; or any other major sporting event would be the same without the tremendous contribution of its volunteers, who provide key support to a wide range of operational areas while also creating the fantastic atmosphere during the tournament through their friendliness and joy.</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The 2018 FIFA World Cup Russia Volunteer Programme presents thousands of people from Russia and other countries with the unique opportunity to be part of the biggest single sporting event in the world and the FIFA Confederations Cup 2017. There are several stages of the programme, including recruiting, selecting and training the volunteers in all 11 Host Cities, and finally organising their work during the event and appreciating their effort and dedication.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">In total, there will be&nbsp;around 5,500&nbsp;volunteers involved in the FIFA Confederations Cup 2017 and 15,000 in the 2018 FIFA World Cup. Dedicated centres located at leading Russian educational institutions are responsible for recruiting and selecting applicants living in Russia. International candidates go through the selection process from their respective home countries with online support.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Candidates should be over 18 years-old, speak English and possess effective teamwork skills. Previous volunteering experience will be an additional advantage. The volunteers will provide support in areas such as Ceremonies, Transport, Media, Protocol, Language Services, Doping Control and Fan Services.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Applications for both FIFA Confederations Cup 2017 and 2018 FIFA World Cup on&nbsp;<strong>FIFA.com</strong>&nbsp;started on 1 June 2016 and finished on 30 December 2016.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">No FIFA World Cup&trade; or any other major sporting event would be the same without the tremendous contribution of its volunteers, who provide key support to a wide range of operational areas while also creating the fantastic atmosphere during the tournament through their friendliness and joy.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/football5.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:180px; margin:25px; width:320px\" />The 2018 FIFA World Cup Russia Volunteer Programme presents thousands of people from Russia and other countries with the unique opportunity to be part of the biggest single sporting event in the world and the FIFA Confederations Cup 2017. There are several stages of the programme, including recruiting, selecting and training the volunteers in all 11 Host Cities, and finally organising their work during the event and appreciating their effort and dedication.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">In total, there will be&nbsp;around 5,500&nbsp;volunteers involved in the FIFA Confederations Cup 2017 and 15,000 in the 2018 FIFA World Cup. Dedicated centres located at leading Russian educational institutions are responsible for recruiting and selecting applicants living in Russia. International candidates go through the selection process from their respective home countries with online support.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/football2.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:169px; margin:25px; width:300px\" />Candidates should be over 18 years-old, speak English and possess effective teamwork skills. Previous volunteering experience will be an additional advantage. The volunteers will provide support in areas such as Ceremonies, Transport, Media, Protocol, Language Services, Doping Control and Fan Services.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Applications for both FIFA Confederations Cup 2017 and 2018 FIFA World Cup on&nbsp;<strong>FIFA.com</strong>&nbsp;started on 1 June 2016 and finished on 30 December 2016.</span></p>\r\n', 2, 6, '2018-01-17 20:05:40'),
(27, 'World Cup Cricket', '<p style=\"text-align:justify\"><span style=\"color:#3498db\"><span style=\"font-size:22px\">World Cup Cricket</span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/icc.jpg\" style=\"border-style:solid; border-width:2px; height:400px; margin:25px; width:600px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC is the global governing body for cricket. Representing 105 members, the ICC governs and administrates the game and works with our members to grow the sport. The ICC is also responsible for the staging of all ICC Events.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC presides over the ICC Code of Conduct, playing conditions, the Decision Review System and other ICC regulations. The ICC also appoints all match officials that officiate at all sanctioned international matches. Through the Anti-Corruption Unit it coordinates action against corruption and match fixing.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC is the global governing body for cricket. Representing 105 members, the ICC governs and administrates the game and works with our members to grow the sport. The ICC is also responsible for the staging of all ICC Events.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC presides over the ICC Code of Conduct, playing conditions, the Decision Review System and other ICC regulations. The ICC also appoints all match officials that officiate at all sanctioned international matches. Through the Anti-Corruption Unit it coordinates action against corruption and match fixing.</span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC is the global governing body for cricket. Representing 105 members, the ICC governs and administrates the game and works with our members to grow the sport. The ICC is also responsible for the staging of all ICC Events.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/cricket3.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:504px; margin:25px; width:800px\" /></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">The ICC presides over the ICC Code of Conduct, playing conditions, the Decision Review System and other ICC regulations. The ICC also appoints all match officials that officiate at all sanctioned international matches. Through the Anti-Corruption Unit it coordinates action against corruption and match fixing.</span></p>\r\n', 3, 6, '2018-01-18 14:42:29'),
(28, 'Bangladesh Cricket', '<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">A cold Dhaka needs a bit of warming up, so the cricket has come at a good time, and there is plenty at stake as Mirpur hosts the international game&#39;s middle-weight battle.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">Bangladesh are taking their first step into the post-Chandika Hathurusingha era and will want to erase all memories of their winless tour of South Africa last September. Zimbabwe too will be driven by similar motivation after they lost their Boxing Day Test in Port Elizabeth inside two days.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">As it often is, Bangladesh&#39;s five most experienced cricketers - Shakib Al Hasan, Mashrafe Mortaza, Tamim Iqbal, Mushfiqur Rahim and Mahmudullah - have to reclaim the winning habit. Their ODI team has been on the road since the series against England in October 2016 and have won only four out of 14 completed matches in that time. That this is a home series will help, and they wouldn&#39;t mind facing an opponent who hasn&#39;t played an ODI since last July.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/test.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:267px; margin:20px; width:400px\" />But the thing is Zimbabwe won that series five months ago and beating Sri Lanka on their home turf is rarely easy. Additionally, the likes of Graeme Cremer, Sikandar Raza and Hamilton Masakadza will be freed up by the fact that Brendan Taylor and Kyle Jarvis have returned to take up national duty again. Zimbabwe can also rely on Heath Streak&#39;s intel, who spent two years as Bangladesh&#39;s bowling coach only recently.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">A cold Dhaka needs a bit of warming up, so the cricket has come at a good time, and there is plenty at stake as Mirpur hosts the international game&#39;s middle-weight battle.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">Bangladesh are taking their first step into the post-Chandika Hathurusingha era and will want to erase all memories of their winless tour of South Africa last September. Zimbabwe too will be driven by similar motivation after they lost their Boxing Day Test in Port Elizabeth inside two days.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">As it often is, Bangladesh&#39;s five most experienced cricketers - Shakib Al Hasan, Mashrafe Mortaza, Tamim Iqbal, Mushfiqur Rahim and Mahmudullah - have to reclaim the winning habit. Their ODI team has been on the road since the series against England in October 2016 and have won only four out of 14 completed matches in that time. That this is a home series will help, and they wouldn&#39;t mind facing an opponent who hasn&#39;t played an ODI since last July.</span></span></span></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/photo.jpg\" style=\"border-style:solid; border-width:2px; height:506px; margin:20px; width:900px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"color:#1abc9c\"><span style=\"font-size:18px\"><span style=\"background-color:null\">But the thing is Zimbabwe won that series five months ago and beating Sri Lanka on their home turf is rarely easy. Additionally, the likes of Graeme Cremer, Sikandar Raza and Hamilton Masakadza will be freed up by the fact that Brendan Taylor and Kyle Jarvis have returned to take up national duty again. Zimbabwe can also rely on Heath Streak&#39;s intel, who spent two years as Bangladesh&#39;s bowling coach only recently.</span></span></span></p>\r\n', 3, 6, '2018-01-18 14:52:26'),
(29, 'National Game of Bangladesh - Kabaddi - MediaBangladesh', '<p style=\"text-align:justify\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/kabaddi.jpg\" style=\"border-style:solid; border-width:2px; height:506px; margin:20px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">As the National Game of Bangladesh, Kabadi is enjoyed by thousands of players, and even more spectators,&nbsp;<a href=\"http://www.bangladesh.com/regions/\" title=\"Regions of Bangladesh\">around the country</a>. Played by two competing teams, Kabadi is an outdoor activity played on a rectangular court of 12.5 by 10 meters in size, which is divided in two by a white line. Although each team consists of twelve players, only seven members of each team will be on the court at one time. The other team members remain on the sidelines as extras. To monitor the game there are two linesmen, a timekeeper, a referee, a scorer and two umpires. The decision as to who starts the game is decided by tossing a coin and it is played in 20-minute sessions.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><img alt=\"\" src=\"http://localhost/simple_blog_project/admin/images/kabaddi2.jpg\" style=\"border-style:solid; border-width:2px; float:left; height:225px; margin:25px; width:400px\" />In order to score a point, a team member, referred as the &#39;raider&#39;, must take a deep breath and repeatedly say the word &#39;kabadi&#39; without releasing his breath while at the same time dashing into the opposing team&#39;s area and touching as many players as possible. The team being raided must try to capture the raider, as should he return to his side without releasing his breath, a point is scored for his team. Players who have been touched are out. Teams alternate between being the raider and defenders.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Formed in 1973, the Bangladesh Amateur Kabadi Federation formulated rules and regulations which are applied when playing at National or International level. The first Kabadi test was played in Bangladesh against a team from India in 1974, with a return test taking place in India in 1979. The&nbsp;<a href=\"http://www.bangladesh.com/sport/\" title=\"About Sport in Bangladesh\">sport</a>&nbsp;was included in the Asian Games in 1990, with Bangladesh winning the silver medal. The Bangladeshi team also won the bronze medal for Kabadi at the 2006 and 2010 Asian Games.</span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:18px\">Informally, Kabadi is known as Ha-Du-Du, or the &#39;g</span></p>\r\n', 5, 6, '2018-01-18 15:04:14');

-- --------------------------------------------------------

--
-- Stand-in structure for view `post_view`
-- (See below for the actual view)
--
CREATE TABLE `post_view` (
`id` int(11)
,`title` varchar(255)
,`date` timestamp
,`category` varchar(50)
,`user` varchar(30)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nayem Hossain', 'salahuddin@outlook.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'nayem', 'nayem@gmail.com', 'b148e7f41fdc3be4b14e8d17e068bbad'),
(7, 'Mohammad Nayem Hossain', 'sardernayem48@gmail.com', 'b148e7f41fdc3be4b14e8d17e068bbad');

-- --------------------------------------------------------

--
-- Structure for view `post_view`
--
DROP TABLE IF EXISTS `post_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `post_view`  AS  select `posts`.`id` AS `id`,`posts`.`title` AS `title`,`posts`.`date` AS `date`,`category`.`name` AS `category`,`users`.`name` AS `user` from ((`posts` join `category`) join `users`) where ((`posts`.`categories` = `category`.`id`) and (`posts`.`user` = `users`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
