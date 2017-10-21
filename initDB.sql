USE test;

DROP TABLE IF EXISTS books;


CREATE TABLE `books` (
`id` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`title` VARCHAR(100) NOT NULL,
`description` VARCHAR(255) NOT NULL,
`author` VARCHAR(100) NOT 

NULL,
`ISBN` VARCHAR(20) NOT NULL,
`printYear` INT NOT NULL,
`readAlready` BOOLEAN NOT NULL DEFAULT FALSE)
ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;



INSERT INTO `books` (`title`, `description`,`author`,`ISBN`,`printYear`) VALUES ('Девушка, которая искала чужую тень', 'Серия: Детектив-бестселлер XXI века
Издательство: ГрандМастер Кол-во страниц: 384 Тираж: 10000 Формат: 20.7 x 13.3 x 2 Тип обложки: Суперобложка Переводчик: Боченкова О.Б.','Лагеркранц Д.','ISBN:9785699997992','2017');

INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Книга Балтиморов', 'Серия: Corpus Издательство: АСТ Год издания: 2017 Кол-во страниц: 512 Тираж: 5000 Формат: 21.8 x 14.2 x 4.3 Тип обложки: Твердая бумажная Переводчик: Стаф Ирина','Диккер Ж.','ISBN:9785170951499','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Садовые чары', 'Издательство: Иностранка Кол-во страниц: 384 Тираж: 7000 Формат: 19 x 12.3 x 1.8 Тип обложки: Твердая бумажная Переводчик: Тетерина Ирина','Аллен С.Э.','ISBN:9785389134317','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Враг Божий', 'Серия: The Big Book. Исторический роман Издательство: Азбука СПб Кол-во страниц: 448 Тираж: 4000 Формат: 21.5 x 14.4 x 2.4 Тип обложки: Твердая бумажная Переводчик: Екатерина Доброхотова-Майкова','Корнуэлл Б.','ISBN:9785389130166','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('В ее глазах', 'Серия: Азбука-бестселлер Издательство: Азбука СПб Кол-во страниц: 416 
Тираж: 5000 Формат: 20.6 x 12.1 x 2 Тип обложки: Суперобложка Переводчик: Тетерина И.','Пинборо С.','ISBN:9785389123595','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Starcraft: Эволюция', 'Издательство: АСТ Кол-во страниц: 352 Тираж: 6000 Формат: 20.5 x 13 x 2.8 Тип обложки: Твердая бумажная Переводчик: Иванов Михаил','Зан Т.','ISBN:9785171040222','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Реплика', 'Издательство: Эксмо Год издания: 2017 Кол-во страниц: 480 Тираж: 4000 Формат: 18.4 x 13.3 x 2.6 Тип обложки: Твердая бумажная Редактор: Батанов Г. Переводчик: Степашкина О.','Оливер Л.','ISBN:9785040892747','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Calendar girl. Лучше быть, чем казаться', 'Издательство: АСТ Кол-во страниц: 448 Тираж: 25000 Формат: 20.5 x 13 x 2 Тип обложки: Твердая бумажная Переводчик: Юлия Зонис','Карлан О.','ISBN:9785170992553','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Dead Space. Книга 2. Катализатор', '1','3','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Dead Space. Книга 2. Катализатор', 'Издательство: Азбука СПб Кол-во страниц: 384 Тираж: 3000 Формат: 20.6 x 13.1 x 2 Тип обложки: Твердая бумажная Переводчик: Матюхин Тимофей','Эвенсон Б.К.','ISBN:9785389129450','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Пожарный', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki1', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki2', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki3', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki4', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki5', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki6', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki7', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki8', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki9', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki10', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki11', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki12', '1','Стефани Майер','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki13', '1','Стефани Майер','1','2016');
