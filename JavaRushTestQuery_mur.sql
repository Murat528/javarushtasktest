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



INSERT INTO `books` (`title`, `description`,`author`,`ISBN`,`printYear`) VALUES ('�������, ������� ������ ����� ����', '�����: ��������-���������� XXI ����
������������: ����������� ���-�� �������: 384 �����: 10000 ������: 20.7 x 13.3 x 2 ��� �������: ������������ ����������: ��������� �.�.','���������� �.','ISBN:9785699997992','2017');

INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('����� ����������', '�����: Corpus ������������: ��� ��� �������: 2017 ���-�� �������: 512 �����: 5000 ������: 21.8 x 14.2 x 4.3 ��� �������: ������� �������� ����������: ���� �����','������ �.','ISBN:9785170951499','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('������� ����', '������������: ���������� ���-�� �������: 384 �����: 7000 ������: 19 x 12.3 x 1.8 ��� �������: ������� �������� ����������: �������� �����','����� �.�.','ISBN:9785389134317','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('���� �����', '�����: The Big Book. ������������ ����� ������������: ������ ��� ���-�� �������: 448 �����: 4000 ������: 21.5 x 14.4 x 2.4 ��� �������: ������� �������� ����������: ��������� �����������-�������','�������� �.','ISBN:9785389130166','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('� �� ������', '�����: ������-���������� ������������: ������ ��� ���-�� �������: 416 
�����: 5000 ������: 20.6 x 12.1 x 2 ��� �������: ������������ ����������: �������� �.','������� �.','ISBN:9785389123595','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Starcraft: ��������', '������������: ��� ���-�� �������: 352 �����: 6000 ������: 20.5 x 13 x 2.8 ��� �������: ������� �������� ����������: ������ ������','��� �.','ISBN:9785171040222','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('�������', '������������: ����� ��� �������: 2017 ���-�� �������: 480 �����: 4000 ������: 18.4 x 13.3 x 2.6 ��� �������: ������� �������� ��������: ������� �. ����������: ���������� �.','������ �.','ISBN:9785040892747','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Calendar girl. ����� ����, ��� ��������', '������������: ��� ���-�� �������: 448 �����: 25000 ������: 20.5 x 13 x 2 ��� �������: ������� �������� ����������: ���� �����','������ �.','ISBN:9785170992553','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Dead Space. ����� 2. �����������', '1','3','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('Dead Space. ����� 2. �����������', '������������: ������ ��� ���-�� �������: 384 �����: 3000 ������: 20.6 x 13.1 x 2 ��� �������: ������� �������� ����������: ������� �������','������� �.�.','ISBN:9785389129450','2017');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('��������', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki1', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki2', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki3', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki4', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki5', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki6', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki7', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki8', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki9', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki10', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki11', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki12', '1','������� �����','1','2016');


INSERT INTO `books` (`title`,`description`,`author`,`ISBN`,`printYear`) VALUES ('sumerki13', '1','������� �����','1','2016');
