create database AddressBookServiceDB

use AddressBookServiceDB


create table ContactsTable(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode int,
PhoneNumber varchar(16),
EmailId varchar(24)
);


/* Insert contact */
Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Sukalyan','Dash','Salapada By Pass','Anandapur','OD','758020','8917361920','sukalyandash19@gmail.com'),
('Rasmita','Pati','Mugpal','Jajpur','Bangalore',567767,'7788987513','runu77@gmail.com'),
('Rakshi','Mohapatra','Dala By Pass','Anandapur','OD',560087,'9467678766','rakshi94@gmail.com'),
('Bhabagrahi','Sahoo','Aul','Chennai','Tamil Nadu',600005,'7986678767','bgsahoo13@gmail.com'),
('Siba','Sankar','Howrah','Kolkata','West Bengal',700073,'7775757660','siba1@gmail.com');

select * from ContactsTable

/* Edit contact */
UPDATE ContactsTable set State='Odisha' where FirstName='Sukalyan' or FirstName='Rakshi'

/* Delete contact by name */
Delete from ContactsTable where FirstName='Siba'

/* Retrieve Person belonging to a City or State */
SELECT * from ContactsTable where State='Odisha' or City='Chennai';

/* Count of address book by City and State */
select City,COUNT(City) as countOfCity from ContactsTable group by City order by City;
select State,COUNT(State) as countOfStates from ContactsTable group by State order by State;

/* sort name entries based on city */
Insert into ContactsTable(FirstName,LastName,Address,City,State,ZipCode,PhoneNumber,EmailId) values 
('Papuni','Dash','Electronic City','Bengaluru','Karnataka',560085,'9668443191','papuni96@gmail.com'),
('Arul','Dash','Howrah','Kolkata','West Bengal',454435,'9530224965','arul95@mail.com'),
('Runu','Pati','Bari','JajpurTown','Jajpur',755009,'7740329293','rp12@mail.com');

SELECT * from ContactsTable

SELECT * FROM ContactsTable WHERE City = 'Anandapur' ORDER BY FirstName ASC;	--ascending
SELECT * FROM ContactsTable WHERE City = 'Anandapur' ORDER BY FirstName DESC;	--descending