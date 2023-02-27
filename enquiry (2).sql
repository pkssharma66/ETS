-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2023 at 06:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enquiry`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_list`
--

CREATE TABLE `country_list` (
  `cid` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `phone_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_list`
--

INSERT INTO `country_list` (`cid`, `country_name`, `short_code`, `phone_code`) VALUES
(1, 'Afghanistan ', 'AF', '+93'),
(2, 'Albania ', 'AL', '+355'),
(3, 'Algeria ', 'DZ', '+213'),
(4, 'American Samoa', 'AS', '+1-684'),
(5, 'Andorra, Principality of ', 'AD', '+376'),
(6, 'Angola', 'AO', '+244'),
(7, 'Anguilla ', 'AI', '+1-264'),
(8, 'Antarctica', 'AQ', '+672'),
(9, 'Antigua and Barbuda', 'AG', '+1-268'),
(10, 'Argentina ', 'AR', '+54'),
(11, 'Armenia', 'AM', '+374'),
(12, 'Aruba', 'AW', '+297'),
(13, 'Australia', 'AU', '+61'),
(14, 'Austria', 'AT', '+43'),
(15, 'Azerbaijan or Azerbaidjan ', 'AZ', '+994'),
(16, 'Bahamas ', 'BS', '+1-242'),
(17, 'Bahrain, ', 'BH', '+973'),
(18, 'Bangladesh ', 'BD', '+880'),
(19, 'Barbados ', 'BB', '+1-246'),
(20, 'Belarus ', 'BY', '+375'),
(21, 'Belgium ', 'BE', '+32'),
(22, 'Belize', 'BZ', '+501'),
(23, 'Benin ', 'BJ', '+229'),
(24, 'Bermuda ', 'BM', '+1-441'),
(25, 'Bhutan, ', 'BT', '+975'),
(26, 'Bolivia ', 'BO', '+591'),
(27, 'Bosnia and Herzegovina ', 'BA', '+387'),
(28, 'Botswana', 'BW', '+267'),
(29, 'Bouvet Island ', 'BV', ''),
(30, 'Brazil ', 'BR', '+55'),
(31, 'British', 'IO', ''),
(32, 'Brunei  ', 'BN', '+673'),
(33, 'Bulgaria ', 'BG', '+359'),
(34, 'Burkina Faso ', 'BF', '+226'),
(35, 'Burundi ', 'BI', '+257'),
(36, 'Cambodia,', 'KH', '+855'),
(37, 'Cameroon', 'CM', '+237'),
(38, 'Canada ', 'CA', '+1'),
(39, 'Cape Verde ', 'CV', '+238'),
(40, 'Cayman Islands ', 'KY', '+1-345'),
(41, 'Central African Republic ', 'CF', '+236'),
(42, 'Chad ', 'TD', '+235'),
(43, 'Chile ', 'CL', '+56'),
(44, 'China ', 'CN', '+86'),
(45, 'Christmas Island ', 'CX', '+53'),
(46, 'Cocos  Islands ', 'CC', '+61'),
(47, 'Colombia ', 'CO', '+57'),
(48, 'Comoros  ', 'KM', '+269'),
(49, 'Congo,  ', 'CD', '+243'),
(50, 'Congo,', 'CG', '+242'),
(51, 'Cook Islands ', 'CK', '+682'),
(52, 'Costa Rica ', 'CR', '+506'),
(53, 'Cote D\'Ivoire  ', 'CI', '+225'),
(54, 'Croatia (Hrvatska) ', 'HR', '+385'),
(55, 'Cuba ', 'CU', '+53'),
(56, 'Cyprus ', 'CY', '+357'),
(57, 'Czech Republic', 'CZ', '+420'),
(58, 'Czechoslavakia or Slovakia', 'CS', ''),
(59, 'Denmark ', 'DK', '+45'),
(60, 'Djibouti ', 'DJ', '+253'),
(61, 'Dominica ', 'DM', '+1-767'),
(62, 'Dominican Republic ', 'DO', '+1-809'),
(63, 'East Timor ', 'TP', '+670'),
(64, 'Ecuador ', 'EC', '+593 '),
(65, 'Egypt ', 'EG', '+20'),
(66, 'El Salvador ', 'SV', '+503'),
(67, 'Equatorial Guinea (Former Spanish Guinea)', 'GQ', '+240'),
(68, 'Eritrea ', 'ER', '+291'),
(69, 'Estonia ', 'EE', '+372'),
(70, 'Ethiopia ', 'ET', '+251'),
(71, 'Falkland Islands  ', 'FK', '+500'),
(72, 'Faroe Islands ', 'FO', '+298'),
(73, 'Fiji ', 'FJ', '+679'),
(74, 'Finland ', 'FI', '+358'),
(75, 'France ', 'FR', '+33'),
(76, 'French Guiana or French Guyana ', 'GF', '+594'),
(77, 'French Polynesia ', 'PF', '+689'),
(78, 'French Southern Territories  ', 'TF', ''),
(79, 'Gabon', 'GA', '+241'),
(80, 'Gambia, The ', 'GM', '+220'),
(81, 'Georgia ', 'GE', '+995'),
(82, 'Germany ', 'DE', '+49'),
(83, 'Ghana ', 'GH', '+233'),
(84, 'Gibraltar ', 'GI', '+350'),
(85, 'Great Britain  ', 'GB', ''),
(86, 'Greece ', 'GR', '+30'),
(87, 'Greenland ', 'GL', '+299'),
(88, 'Grenada ', 'GD', '+1-473'),
(89, 'Guadeloupe', 'GP', '+590'),
(90, 'Guam', 'GU', '+1-671'),
(91, 'Guatemala ', 'GT', '+502'),
(92, 'Guinea ', 'GN', '+224'),
(93, 'Guinea-Bissau ', 'GW', '+245'),
(94, 'Guyana ', 'GY', '+592'),
(95, 'Haiti ', 'HT', '+509'),
(96, 'Heard Island and McDonald Islands ', 'HM', ''),
(97, 'Holy See ', 'VA', ''),
(98, 'Honduras ', 'HN', '+504'),
(99, 'Hong Kong ', 'HK', '+852'),
(100, 'Hungary ', 'HU', '+36'),
(101, 'Iceland ', 'IS', '+354'),
(102, 'India ', 'IN', '+91'),
(103, 'Indonesia ', '\"ID\"', '+62'),
(104, 'Iran, Islamic Republic of', 'IR', '+98'),
(105, 'Iraq ', 'IQ', '+964'),
(106, 'Ireland ', 'IE', '+353'),
(107, 'Israel ', 'IL', '+972'),
(108, 'Italy ', 'IT', '+39'),
(109, 'Jamaica ', 'JM', '+1-876'),
(110, 'Japan ', 'JP', '+81'),
(111, 'Jordan ', 'JO', '+962'),
(112, 'Kazakstan or Kazakhstan ', 'KZ', '+7'),
(113, 'Kenya ', 'KE', '+254'),
(114, 'Kiribati ', 'KI', '+686'),
(115, 'Korea, Democratic People\'s Republic of (North Korea)', 'KP', '+850'),
(116, 'Korea, Republic of (South Korea) ', 'KR', '+82'),
(117, 'Kuwait ', 'KW', '+965'),
(118, 'Kyrgyzstan ', 'KG', '+996'),
(119, 'Lao People\'s Democratic Republic ', 'LA', '+856'),
(120, 'Latvia ', 'LV', '+371'),
(121, 'Lebanon ', 'LB', '+961'),
(122, 'Lesotho ', 'LS', '+266'),
(123, 'Liberia ', 'LR', '+231'),
(124, 'Libya ', 'LY', '+218'),
(125, 'Liechtenstein ', 'LI', '+423'),
(126, 'Lithuania ', 'LT', '+370'),
(127, 'Luxembourg ', 'LU', '+352'),
(128, 'Macau ', 'MO', '+853'),
(129, 'Macedonia, The Former Yugoslav Republic of', 'MK', '+389'),
(130, 'Madagascar ', 'MG', '+261'),
(131, 'Malawi ', 'MW', '+265'),
(132, 'Malaysia ', 'MY', '+60'),
(133, 'Maldives ', 'MV', '+960'),
(134, 'Mali ', 'ML', '+223'),
(135, 'Malta ', 'MT', '+356'),
(136, 'Marshall Islands ', 'MH', '+692'),
(137, 'Martinique (French) ', 'MQ', '+596'),
(138, 'Mauritania ', 'MR', '+222'),
(139, 'Mauritius ', 'MU', '+230'),
(140, 'Mayotte', 'YT', '+269'),
(141, 'Mexico ', 'MX', '+52'),
(142, 'Micronesia, ', 'FM', '+691'),
(143, 'Moldova, Republic of', 'MD', '+373'),
(144, 'Monaco, Principality of', 'MC', '+377'),
(145, 'Mongolia ', 'MN', '+976'),
(146, 'Montserrat ', 'MS', '+1-664'),
(147, 'Morocco ', 'MA', '+212'),
(148, 'Mozambique ', 'MZ', '+258'),
(149, 'Myanmar, ', 'MM', '+95'),
(150, 'Namibia ', 'NA', '+264'),
(151, 'Nauru ', 'NR', '+674'),
(152, 'Nepal ', 'NP', '+977'),
(153, 'Netherlands ', 'NL', '+31'),
(154, 'Netherlands Antilles ', 'AN', '+599'),
(155, 'New Caledonia ', 'NC', '+687'),
(156, 'New Zealand  ', 'NZ', '+64'),
(157, 'Nicaragua ', 'NI', '+505'),
(158, 'Niger ', 'NE', '+227'),
(159, 'Nigeria ', 'NG', '+234'),
(160, 'Niue ', 'NU', '+683'),
(161, 'Norfolk Island ', 'NF', '+672'),
(162, 'Northern Mariana Islands ', 'MP', '+1-670'),
(163, 'Norway ', 'NO', '+47'),
(164, 'O', '', ''),
(165, 'Oman, ', 'OM', '+968'),
(166, 'Pakistan ', 'PK', '+92'),
(167, 'Palau ', 'PW', '+680'),
(168, 'Palestinian State (Proposed)', 'PS', '+970'),
(169, 'Panama ', 'PA', '+507'),
(170, 'Papua New Guinea ', 'PG', '+675'),
(171, 'Paraguay ', 'PY', '+595'),
(172, 'Peru ', 'PE', '+51'),
(173, 'Philippines ', 'PH', '+63'),
(174, 'Pitcairn Island', 'PN', ''),
(175, 'Poland ', 'PL', '+48'),
(176, 'Portugal ', 'PT', '+351'),
(177, 'Puerto Rico ', 'PR', '+1-787'),
(178, 'Qatar, State of ', 'QA', '+974 '),
(179, 'Reunion  ', 'RE', '+262'),
(180, 'Romania ', 'RO', '+40'),
(181, 'Russia - USSR ', 'SU', ''),
(182, 'Russian Federation ', 'RU', '+7'),
(183, 'Rwanda ', 'RW', '+250'),
(184, 'Saint Helena ', 'SH', '+290'),
(185, 'Saint Kitts and Nevis ', 'KN', '+1-869'),
(186, 'Saint Lucia ', 'LC', '+1-758'),
(187, 'Saint Pierre and Miquelon ', 'PM', '+508'),
(188, 'Saint Vincent and the Grenadines ', 'VC', '+1-784'),
(189, 'Samoa (Former Western Samoa)', 'WS', '+685'),
(190, 'San Marino ', 'SM', '+378'),
(191, 'Sao Tome and Principe ', 'ST', '+239'),
(192, 'Saudi Arabia ', 'SA', '+966'),
(193, 'Serbia, Republic of', 'RS', ''),
(194, 'Senegal ', 'SN', '+221'),
(195, 'Seychelles ', 'SC', '+248'),
(196, 'Sierra Leone ', 'SL', '+232'),
(197, 'Singapore ', 'SG', '+65'),
(198, 'Slovakia', 'SK', '+421'),
(199, 'Slovenia ', 'SI', '+386'),
(200, 'Solomon Islands ', 'SB', '+677'),
(201, 'Somalia  ', 'SO', '+252'),
(202, 'South Africa ', 'ZA', '+27'),
(203, 'South Georgia and the South Sandwich Islands', 'GS', ''),
(204, 'Spain ', 'ES', '+34'),
(205, 'Sri Lanka  ', 'LK', '+94'),
(206, 'Sudan  ', 'SD', '+249'),
(207, 'Suriname ', 'SR', '+597'),
(208, 'Svalbard (Spitzbergen) and Jan Mayen Islands ', 'SJ', ''),
(209, 'Swaziland, Kingdom of ', 'SZ', '+268'),
(210, 'Sweden ', 'SE', '+46'),
(211, 'Switzerland ', 'CH', '+41'),
(212, 'Syria ', 'SY', '+963'),
(213, 'Taiwan ', 'TW', '+886'),
(214, 'Tajikistan ', 'TJ', '+992'),
(215, 'Tanzania, ', 'TZ', '+255'),
(216, 'Thailand ', 'TH', '+66'),
(217, 'Togo ', 'TG', ''),
(218, 'Tokelau ', 'TK', '+690'),
(219, 'Tonga, ', 'TO', '+676'),
(220, 'Trinidad and Tobago ', 'TT', '+1-868'),
(221, 'Tromelin Island ', 'TE', ''),
(222, 'Tunisia ', 'TN', '+216'),
(223, 'Turkey ', 'TR', '+90'),
(224, 'Turkmenistan ', 'TM', '+993'),
(225, 'Turks and Caicos Islands ', 'TC', '+1-649'),
(226, 'Tuvalu ', 'TV', '+688'),
(227, 'Uganda, Republic of', 'UG', '+256'),
(228, 'Ukraine ', 'UA', '+380'),
(229, 'United Arab Emirates (UAE) ', 'AE', '+971'),
(230, 'United Kingdom (Great Britain / UK)', 'GB', '+44'),
(231, 'United States ', 'US', '+1'),
(232, 'United States Minor Outlying Islands ', 'UM', ''),
(233, 'Uruguay, ', 'UY', '+598'),
(234, 'Uzbekistan ', 'UZ', '+998'),
(235, 'Vanuatu (Former New Hebrides)', 'VU', '+678'),
(236, 'Vatican City State (Holy See)', 'VA', '+418'),
(237, 'Venezuela ', 'VE', '+58'),
(238, 'Vietnam ', 'VN', '+84'),
(239, 'Virgin Islands, British ', 'VI', '+1-284'),
(240, 'Virgin Islands, United States ( ', 'VQ', '+1-340'),
(241, 'Wallis and Futuna Islands ', 'WF', '+681'),
(242, 'Western Sahara ', 'EH', ''),
(243, 'Yemen ', 'YE', '+967'),
(244, 'Yugoslavia ', 'YU', ''),
(245, 'Zaire  ', 'ZR', ''),
(246, 'Zambia, ', 'ZM', '+260'),
(247, 'Zimbabwe,', 'ZW', '+263');

-- --------------------------------------------------------

--
-- Table structure for table `eloi_career`
--

CREATE TABLE `eloi_career` (
  `applied_id` int(11) NOT NULL,
  `enq_id` varchar(200) DEFAULT NULL,
  `applied_fname` varchar(255) DEFAULT NULL,
  `applied_lname` varchar(255) DEFAULT NULL,
  `applied_email` varchar(255) DEFAULT NULL,
  `applied_phone` varchar(200) DEFAULT NULL,
  `applied_post` varchar(255) DEFAULT NULL,
  `applied_experience` varchar(200) DEFAULT NULL,
  `applied_cover` text DEFAULT NULL,
  `applied_resume` varchar(255) DEFAULT NULL,
  `is_updated` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eloi_career`
--

INSERT INTO `eloi_career` (`applied_id`, `enq_id`, `applied_fname`, `applied_lname`, `applied_email`, `applied_phone`, `applied_post`, `applied_experience`, `applied_cover`, `applied_resume`, `is_updated`, `created_date`, `updated_date`) VALUES
(1, 'WEBENQ001', 'sharma', 'k', 'sharma@gmail.com', '9876543212', 'development', '4', 'job enquiry', NULL, 0, '2023-02-10 06:29:09', '2023-02-24 17:27:00'),
(2, 'WEBENQ002', 'vignesh', 'v', 'vignesh@gmail.com', '9876567890', 'marketing', '3', 'marketing', NULL, 0, '2023-02-10 06:39:27', '2023-02-24 15:58:55'),
(3, 'WEBENQ003', 'mani', 'm', 'mani@gmail.com', '90987765', 'digital', '4', 'applied', NULL, 0, '2023-02-10 06:51:40', '2023-02-16 07:00:00'),
(4, 'WEBENQ004', 'sarnesh', 's', 'sarnesh@gmail.com', '9876543210', 'development', '4', 'development', NULL, 0, '2023-02-10 10:46:39', '2023-02-16 07:00:06');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity`
--

CREATE TABLE `opportunity` (
  `opp_id` int(11) NOT NULL,
  `man_enq_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `Enq_recv_date` date NOT NULL,
  `opportunity_desc` text DEFAULT NULL,
  `rfq_date` date NOT NULL,
  `rfq_submited_date` date NOT NULL,
  `po_recv_date` date NOT NULL,
  `proj_start_date` date NOT NULL,
  `proj_end_date` date NOT NULL,
  `project_status` int(11) NOT NULL,
  `opportinity_status` int(11) NOT NULL,
  `assingned_to` int(11) NOT NULL,
  `assigned_by` int(11) NOT NULL,
  `comments` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'PLM Implementation', '2023-02-22 04:52:48', 0, '2023-02-22 05:47:42', 0),
(2, 'ERP Solutions', '2023-02-22 04:48:55', 0, '2023-02-22 05:48:19', 0),
(3, 'Be Spoke IT Solutions', '2023-02-22 04:49:19', 0, '2023-02-22 05:48:58', 0),
(4, 'Product Engineering', '2023-02-22 04:52:32', 0, '2023-02-22 05:49:21', 0),
(5, 'Manufacturing Automation', '2023-02-22 04:51:23', 0, '2023-02-22 05:51:12', 0),
(6, 'Contract Staffing', '2023-02-22 04:51:53', 0, '2023-02-22 05:51:25', 0),
(7, 'Permanent Placement', '2023-02-22 04:52:17', 0, '2023-02-22 05:51:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `task_assign`
--

CREATE TABLE `task_assign` (
  `assign_id` int(11) NOT NULL,
  `task_no` varchar(200) DEFAULT NULL,
  `rfq_date` date NOT NULL,
  `po_recv_date` date NOT NULL,
  `rfq_submited_date` date NOT NULL,
  `client_phone` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) NOT NULL,
  `assign_by` int(11) DEFAULT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `comments` text NOT NULL,
  `is_assigned` int(11) NOT NULL,
  `is_status` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `permission_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_id`, `user_name`, `password`, `permission_user_id`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 2),
(2, 'user@gmail.com', '9bc65c2abec141778ffaa729489f3e87', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `reg_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `encrypt_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`reg_id`, `user_name`, `email`, `password`, `encrypt_password`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-02-24 12:57:37', 0, '2023-02-24 22:57:37', 0),
(2, 'user', 'user@gmail.com', 'users', '9bc65c2abec141778ffaa729489f3e87', '2023-02-24 12:58:34', 0, '2023-02-24 22:58:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `website_opportunity`
--

CREATE TABLE `website_opportunity` (
  `web_id` int(11) NOT NULL,
  `Enq_date` datetime DEFAULT NULL,
  `Enq_des` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `opportunity_status` int(11) DEFAULT NULL,
  `Nxt_stp_fld_by` varchar(255) NOT NULL,
  `comments` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `won_opportunity`
--

CREATE TABLE `won_opportunity` (
  `won_id` int(11) NOT NULL,
  `enq_id` varchar(200) NOT NULL,
  `enq_recv_date` date NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_code` varchar(200) NOT NULL,
  `client_phone` varchar(255) DEFAULT NULL,
  `client_email` varchar(255) DEFAULT NULL,
  `comp_name` varchar(255) DEFAULT NULL,
  `opp_desc` text NOT NULL,
  `opp_service` varchar(255) DEFAULT NULL,
  `rfq_date` date NOT NULL,
  `rfq_submited_date` date NOT NULL,
  `po_rec_date` date NOT NULL,
  `project_start_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `rejection_reason` text DEFAULT NULL,
  `rejection_date` date NOT NULL,
  `project_status` int(11) NOT NULL,
  `opp_status` int(11) NOT NULL,
  `enq_rec_throug` varchar(255) NOT NULL,
  `assign_to` int(11) DEFAULT NULL,
  `assign_by` int(11) DEFAULT NULL,
  `comments` text NOT NULL,
  `document` text NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_list`
--
ALTER TABLE `country_list`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `eloi_career`
--
ALTER TABLE `eloi_career`
  ADD PRIMARY KEY (`applied_id`);

--
-- Indexes for table `opportunity`
--
ALTER TABLE `opportunity`
  ADD PRIMARY KEY (`opp_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `task_assign`
--
ALTER TABLE `task_assign`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `website_opportunity`
--
ALTER TABLE `website_opportunity`
  ADD PRIMARY KEY (`web_id`);

--
-- Indexes for table `won_opportunity`
--
ALTER TABLE `won_opportunity`
  ADD PRIMARY KEY (`won_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_list`
--
ALTER TABLE `country_list`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `eloi_career`
--
ALTER TABLE `eloi_career`
  MODIFY `applied_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `opportunity`
--
ALTER TABLE `opportunity`
  MODIFY `opp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `task_assign`
--
ALTER TABLE `task_assign`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_register`
--
ALTER TABLE `user_register`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `website_opportunity`
--
ALTER TABLE `website_opportunity`
  MODIFY `web_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `won_opportunity`
--
ALTER TABLE `won_opportunity`
  MODIFY `won_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
