-- ------------------------------- degree -------------------------------
INSERT INTO degree (name) VALUES ("assistant"), ("associate professor"), ("professor");

-- ------------------------------- lector -------------------------------
INSERT INTO lector (name, salary, degree_id) VALUES ("Levi Akkerman", 6000, 3);
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('2', 'Eren Yeager', '2000', '1');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('3', 'Mikasa Akkerman', '5999', '2');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('4', 'Nin Guang', '10000', '2');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('5', 'Yae Miko', '7432', '3');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('6', 'Arataki Itto', '2001', '1');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('7', 'Kamisato Ayato', '1001', '1');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('8', 'Raiden Ei', '2482', '2');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('9', 'Harry Potter', '6578', '1');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('10', 'Drako Malfoy', '4321', '2');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('11', 'Severus Snape', '1024', '3');
INSERT INTO `universitydb`.`lector` (`id`, `name`, `salary`, `degree_id`) VALUES ('12', 'Xian Ling', '3874', '2');

-- ------------------------------- department -------------------------------
INSERT INTO `universitydb`.`department` (`id`, `name`, `head_id`) VALUES ('1', 'Sport', '1');
INSERT INTO `universitydb`.`department` (`id`, `name`, `head_id`) VALUES ('2', 'Science', '11');
INSERT INTO `universitydb`.`department` (`id`, `name`, `head_id`) VALUES ('3', 'Math', '5');
INSERT INTO `universitydb`.`department` (`id`, `name`, `head_id`) VALUES ('4', 'Psychology', '3');
INSERT INTO `universitydb`.`department` (`id`, `name`, `head_id`) VALUES ('5', 'Languages', '7');

-- ------------------------------- employments -------------------------------
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('1', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('1', '2');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('1', '3');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('2', '4');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('3', '5');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('4', '4');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('5', '3');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('6', '2');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('7', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('8', '5');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('9', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('10', '2');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('11', '3');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('12', '4');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('4', '5');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('5', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('6', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('6', '3');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('7', '2');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('7', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('8', '1');
INSERT INTO `universitydb`.`employments` (`lector_id`, `department_id`) VALUES ('10', '5');
