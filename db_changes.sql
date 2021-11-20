-- 20 nov 2021 - milestone 1 db changes
ALTER TABLE `savsoft_users`  ADD `aadhaar` VARCHAR(255) NULL DEFAULT NULL  AFTER `android_token`,  ADD `user_login_id` VARCHAR(100) NULL DEFAULT NULL  AFTER `aadhaar`,  ADD `created_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  AFTER `user_login_id`,  ADD `created_by` INT(11) NULL DEFAULT NULL  AFTER `created_date`,  ADD `updated_date` TIMESTAMP on update CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP  AFTER `created_by`;

ALTER TABLE `savsoft_users` ADD `updated_by` INT(11) NULL DEFAULT NULL AFTER `updated_date`; 


--
-- Table structure for table `quiz_users`
--

CREATE TABLE `quiz_users` (
  `id` bigint(20) NOT NULL,
  `quid` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quiz_users`
--
ALTER TABLE `quiz_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quiz_users`
--
ALTER TABLE `quiz_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;