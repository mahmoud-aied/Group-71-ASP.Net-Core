
	-- Mahmoud Ayed Bayomi
	-- Task No.1
	-------------

	
    create database University

	use University    
    create table Teachers
    (
		id int primary key identity ,
		T_N nvarchar(50),
		T_S float,
		T_G nvarchar(50),
		T_B date,
		T_Add nvarchar(50),
		T_Ag nvarchar(4)
    )

	create table Students
    (
		id int primary key identity ,
		S_N nvarchar(50),
		S_G nvarchar(50),
		S_B date,
		S_Add nvarchar(50),
		S_Ag nvarchar(4)
    )

	insert into [dbo].[Students] values
	('sara','female','2001-5-4','cairo',43),
	('mona','female','2002-5-4','alex',43),
	('hana','female','2004-5-4','qalubia',43),
	('menna','female','2013-5-4','shepen',43),
	('ahmed','male','2005-5-4','shupra',43),
	('osama','male','2006-5-4','syria',43),
	('soly','male','2007-5-4','america',43),
	('shiks','male','2008-5-4','lybia',43),
	('sara','female','2000-5-4','cairo',43),
	('ahmed','male','1999-5-4','cairo',43)
	

	insert into [dbo].[Teachers] values
	('sara',6000,'female','2001-5-4','cairo',43),
	('mona',7000,'female','2002-5-4','alex',43),
	('hana',4778,'female','2004-5-4','qalubia',43),
	('menna',1500,'female','2013-5-4','shepen',43),
	('ahmed',4500,'male','2005-5-4','shupra',43),
	('osama',6000,'male','2006-5-4','syria',43),
	('soly',8000,'male','2007-5-4','america',43),
	('shiks',1000,'male','2008-5-4','lybia',43),
	('sara',7667,'female','2000-5-4','cairo',43),
	('ahmed',3499,'male','1999-5-4','cairo',43)


	
	update [dbo].[Students]
	set [S_N] = 'mahmoudaied'
	where (id=1)

	update [dbo].[Students]
	set [S_G] = 'male'
	where (id=1)


	update [dbo].[Teachers]
	set [T_N] = 'mahmoudaied'
	where (id=5)

	delete [dbo].[Students] where (id=6)
	delete [dbo].[Teachers] where (id=6)

	select * from [Students]
	select * from [Teachers]

	select [S_N],[S_G] from [Students]

	

	------------------------------------------------------------
	------------------------------------------------------------
	------------------------------------------------------------