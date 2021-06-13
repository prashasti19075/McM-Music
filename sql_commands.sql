
create database midsem;
use midsem;

-- Candidate (CandidateNo: integer, FirstName: varchar(30), LastName: varchar(30), DOB: date, City: varchar(30),
-- PriorExperience: integer, Email: varchar(50), AdvertisementSeen: enum{“Print”, “Media”})

CREATE TABLE Candidate (
    CandidateNo INT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    DOB DATE NOT NULL,
    City VARCHAR(30) NOT NULL,
    PriorExperience INT DEFAULT 0,
    Email VARCHAR(50) UNIQUE,
    AdvertisementSeen ENUM('Print', 'Media') NOT NULL,
    PRIMARY KEY (CandidateNo)
);

-- Submission (CandidateNo: integer (FK references Candidate (CandidateNo)), Duration: Double (4,2)
-- , SubmissionDate: date, SubmissionType: varchar(6)  enum {“Audio”, “Video”})

CREATE TABLE Submission (
    CandidateNo INT,
    Duration time NOT NULL,
    SubmissionDate DATE NOT NULL,
    SubmissionType ENUM('Audio', 'Video') NOT NULL,
    constraint CheckDuration check(Duration >= '00:02:00' and Duration <= '00:05:00'),
    FOREIGN KEY (CandidateNo)
        REFERENCES Candidate (CandidateNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (CandidateNo)
);

-- PhoneNumber (CandidateNo: integer (FK references Candidate(CandidateNo), PhoneNo: integer(10))

CREATE TABLE PhoneNumber (
    CandidateNo INT,
    PhoneNo INT NOT NULL,
    FOREIGN KEY (CandidateNo)
        REFERENCES Candidate (CandidateNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (CandidateNo , PhoneNo)
);

drop table Submission;

-- Panelist (PanelistNo: integer, FirstName: varchar(30), Industry: varchar(30), Experience(yrs): Integer, AssociationDate: date)

CREATE TABLE Panellist (
    PanellistNo INT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30),
    Industry VARCHAR(30),
    Experience INT DEFAULT 0,
    AssociationDate DATE,
    PRIMARY KEY (PanellistNo)
);

-- Shortlisted(CandidateNo: integer (FK references Candidate(CandidateNo)), Category: enum{“Audio”, “Video”})

CREATE TABLE Shortlisted (
    CandidateNo INT,
    FOREIGN KEY (CandidateNo)
        REFERENCES Candidate (CandidateNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    Category ENUM('Audio', 'Video') NOT NULL,
    PRIMARY KEY (CandidateNo)
);

-- Member(MemberNo: integer (FK references Shortlisted(CandidateNo)))

CREATE TABLE Member (
    MemberNo INT,
    FOREIGN KEY (MemberNo)
        REFERENCES Shortlisted (CandidateNo)
        ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (MemberNo)
);
drop table Member;
-- MusicGroup (ModeratorNo: integer (FK references Member(MemberNo)), Type:  enum{“pop”, “classic”, 
-- “leisure”, “evergreen”}, MusicGroupID: integer)

CREATE TABLE MusicGroup (
    ModeratorNo INT,
    Type ENUM('pop', 'classic', 'leisure', 'evergreen') NOT NULL,
    MusicGroupID INT,
    FOREIGN KEY (ModeratorNo)
        REFERENCES Member (MemberNo)
        ON DELETE SET NULL ON UPDATE CASCADE,
    PRIMARY KEY (MusicGroupID)
);
drop table MusicGroup;
-- Album(AlbumNo: integer, URL: varchar(50), AlbumName: varchar(30), Type:  enum{“Audio”/ “Video”},
-- ApprovalStatus: enum {“Approved”, “Unapproved”} , ApprovalDate: date)

SELECT 
    *
FROM
    Album;
drop table Album;

CREATE TABLE Album (
    AlbumNo INT,
    URL VARCHAR(50) UNIQUE NOT NULL,
    AlbumName VARCHAR(30) NOT NULL,
    AlbumType ENUM('Audio', 'Video') NOT NULL,
    ApprovalStatus ENUM('Approved', 'Unapproved') NOT NULL,
    ApprovalDate DATE,
    PRIMARY KEY (AlbumNo)
);

-- Trailer(AlbumNo:integer (FK references Album(AlbumNo)), AlbumName: varchar(30), DateOfRelease:
-- Date, Likes: Integer (check Likes  NumberOfVisits), Dislikes: Integer (check Dislikes  
-- NumberOfVisits), NumberOfVisits: Integer ((check Likes +Dislikes  NumberOfVisits)))

CREATE TABLE Trailer (
    AlbumNo INT,
    AlbumName VARCHAR(30) NOT NULL,
    DateOfRelease DATE NOT NULL,
    Likes INT DEFAULT 0,
    Dislikes INT DEFAULT 0,
    NumberOfVisits INT DEFAULT 0,
    CONSTRAINT CheckVisits CHECK (Likes + Dislikes <= NumberOfVisits),
    CONSTRAINT CheckLikes CHECK (Likes >= 0),
    CONSTRAINT CheckDislikes CHECK (Dislikes >= 0),
    FOREIGN KEY (AlbumNo)
        REFERENCES Album (AlbumNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (AlbumNo)
);

-- Distributors(DistributorNo: Integer, DistributorName: varchar(30))

CREATE TABLE Distributors (
    DistributorNo INT,
    DistributorName VARCHAR(30) NOT NULL,
    PRIMARY KEY (DistributorNo)
);

-- Downloadable(AlbumNo: integer (FK references Album(AlbumNo) (check Album Status
-- should be approved), DistributorNo: integer (FK references Distributors(DistributorNo)),
-- DateOfRelease: date, RetailPrice: integer)

use midsem;


SELECT 
    *
FROM
    Album;

insert into downloadable values (1122, 222, "2020-02-02", 100);
insert into downloadable values (1234, 111, "2020-01-01", 50);


CREATE TABLE Downloadable (
    AlbumNo INT,
    DistributorNo Varchar(30),
    DateOfRelease DATE NOT NULL,
    RetailPrice INT NOT NULL,
    FOREIGN KEY (AlbumNo)
        REFERENCES Album (AlbumNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (DistributorNo)
        REFERENCES Distributors (DistributorNo)
        ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY (AlbumNo , DistributorNo)
);

-- Download(DownloadNo: integer, Date: date, DownloadStatus: 
-- enum{“Successful”, “Failure”}, AlbumNo: integer, DistributorNo: 
-- integer (FK (AlbumNo, DistributorNo) references Downloadable(AlbumNo, DistributorNo)))

drop table Download;
drop table downloadable;
SELECT 
    *
FROM
    downloadable;

insert into download values(113, "2010-10-10", "Successful", 1234, 111);
drop table download;


CREATE TABLE Download (
    DownloadNo INT,
    DownloadDate DATE NOT NULL,
    DownloadStatus ENUM('Successful', 'Failure') NOT NULL,
    AlbumNo INT,
    DistributorNo Varchar(30),
    CONSTRAINT FKCheckDownload FOREIGN KEY (AlbumNo , DistributorNo)
        REFERENCES Downloadable (AlbumNo , DistributorNo),
    PRIMARY KEY (DownloadNo)
);


-- Roles (MusicGroupNo: integer (FK references MusicGroup(MusicGroupID)),
--  AlbumNo :integer (FK references Album(AlbumNo)), MemberNo: integer 
-- (FK references Member(MemberNo)), RolePlayed: varchar(30))



CREATE TABLE Roles (
    MusicGroupID INT,
    AlbumNo INT,
    MemberNo INT,
    FOREIGN KEY (MusicGroupID)
        REFERENCES MusicGroup (MusicGroupID),
    FOREIGN KEY (AlbumNo)
        REFERENCES Album (AlbumNo),
    FOREIGN KEY (AlbumNo)
        REFERENCES Member (MemberNo),
    RolePlayed VARCHAR(30),
    PRIMARY KEY (MusicGroupID , AlbumNo , MemberNo)
);

SELECT 
    *
FROM
    Candidate
WHERE
    CandidateNo IN (SELECT 
            MemberNo
        FROM
            Roles
        WHERE
            MemberNo NOT IN (SELECT DISTINCT
                    A.MemberNo
                FROM
                    Roles A,
                    Roles B
                WHERE
                    A.MemberNo = B.MemberNo
                        AND NOT (A.MusicGroupID = B.MusicGroupID))
                AND MusicGroupID IN (SELECT 
                    MusicGroupID
                FROM
                    MusicGroup
                WHERE
                    Type = 'pop'));
     
--  select count (*) as the_count, AdvertismentSeen from Candidate C, Submission S where C.CandidateNo = S.CandidateNo  group by AdvertisementSeen; 

SELECT 
    *
FROM
    roles A,
    roles B;
	
-- 4 --      
SELECT 
    *
FROM
    candidate
WHERE
    candidateNo IN (SELECT 
            A.CandidateNo
        FROM
            Submission A,
            Submission B
        WHERE
            A.CandidateNo = B.CandidateNo
                AND NOT (A.SubmissionType = B.SubmissionType));

SELECT 
    *
FROM
    Candidate
WHERE
    CandidateNo IN (SELECT DISTINCT
            A.MemberNo
        FROM
            Roles A,
            Roles B
        WHERE
            A.MemberNo = B.MemberNo
                AND NOT (A.MusicGroupID = B.MusicGroupID));
                
SELECT 
    *
FROM
    Candidate
WHERE
    CandidateNo IN (SELECT DISTINCT
            A.MemberNo
        FROM
            Roles A
                INNER JOIN
            Roles B ON A.MemberNo = B.MemberNo
                AND NOT (A.MusicGroupID = B.MusicGroupID));

SELECT 
    AlbumName
FROM
    Album
WHERE
    AlbumNo IN (SELECT 
            AlbumNo
        FROM
            Downloadable
        WHERE
            YEAR(DateOfRelease) = 2020)
        AND AlbumType = 'Audio';


SELECT 
    AlbumName
FROM
    Album A,
    Downloadable D
WHERE
    A.AlbumNo = D.AlbumNo
        AND A.AlbumType = 'Audio'
        AND YEAR(D.DateOfRelease) = 2020; 
        
        
with sometable(Amount, DistributorNo, Type) as (Select count(*), DistributorNo, AlbumType from Downloadable inner join album on downloadable.AlbumNo=album.AlbumNo group by AlbumType, DistributorNo ) select Type, max(amount) from sometable where type= "Audio" UNION select Type,max(amount) from sometable where type="Video";
        
-- With Groups(count, MemberNo) as (Select count(*) , MemberNo from Roles group by MemberNo having count(*) >1) 
-- Select * from candidate where CandidateNo in Groups.MemeberNo ;

drop table stats_Age;

CREATE TABLE stats_Age  AS SELECT COUNT(*) As Amount, CURDATE() - DOB AS age FROM
    Candidate
        INNER JOIN
    Submission ON Submission.CandidateNo = Candidate.CandidateNo
GROUP BY CASE
    WHEN age BETWEEN 15 AND 20 THEN '15-20'
    WHEN age BETWEEN 21 AND 25 THEN '21-25'
    WHEN age BETWEEN 26 AND 30 THEN '26-30'
    WHEN age BETWEEN 31 AND 40 THEN '31-40'
    WHEN age BETWEEN 41 AND 100 THEN '41-100'
END;

select * from stats_Age;

        
-- With Groups(count, MemberNo) as (Select count(*) , MemberNo from Roles group by MemberNo having count(*) >1) 
-- Select * from candidate where CandidateNo in Groups.MemeberNo ;


CREATE TABLE state_zones (
    State VARCHAR(50),
    Zone ENUM('North', 'South', 'East', 'West')
);
with Cities(State) as (select Candidate.State from Candidate inner join Submission on Submission.CandidateNo= Candidate.CandidateNo)

Select count(*), Zone from state_zones inner join Cities on Cities.State=state_zones.state group by Zone;

CREATE TABLE stats_state AS (SELECT COUNT(*) AS “Amount”, state FROM
    Candidate
        INNER JOIN
    Submission ON Submission.CandidateNo = Candidate.CandidateNo
GROUP BY state);

CREATE TABLE stats_Album AS SELECT COUNT(*) AS “Amount”, AlbumType FROM
    Album
GROUP BY AlbumType;

drop table stats_Album;

CREATE TABLE stats_Album AS SELECT COUNT(*) AS “Amount”, SubmissionType FROM
    Submission
GROUP BY SubmissionType;

Select SubmissionType from submission group by (SubmissionType) having count(*) = max(count(*));
Select SubmissionType, count(*) from submission group by (SubmissionType);

With NewTable(MediaForm,count)as (Select AdvertisementSeen, count(*) from submission INNER JOIN Candidate ON Candidate.CandidateNo = submission.CandidateNo group by AdvertisementSeen) Select max(count)as "Number of entries", MediaForm from NewTable ; 

with sometable(Amount, DistributorNo, Type) as (Select count(*), DistributorNo, AlbumType from Downloadable inner join album on downloadable.AlbumNo=album.AlbumNo group by AlbumType, DistributorNo ) select Type, max(amount) from sometable where type= "Audio" UNION select Type,max(amount) from sometable where type="Video";


-- Select AlbumNo from Download where DistributorNo in 
-- (With sometable(Amount, DistributorNo, Type) as (Select count(*), DistributorNo, AlbumType from downloadable inner join album on downloadable.albumno=album.albumno group by AlbumType, DistributorNo) with othertable(DistributorNo, Amount) as (select DistributorNo, max(Amount) from sometable where Type="Audio") select DistributorNo from othertable);

-- Select AlbumNo from Download where DistributorNo in 
-- (With sometable(Amount, DistributorNo, Type) as (Select count(*), DistributorNo, AlbumType from downloadable inner join album on downloadable.albumno=album.albumno group by AlbumType, DistributorNo) select DistributorNo, max(Amount) from sometable where Type="Audio")

-- Select MemberNo, AlbumNo from Role where Albumno in
-- (Select AlbumNo from Download where DistributorNo in 
-- (With sometable(Amount, DistributorNo, AlbumNo, Type) as (Select count(), DistributorNo, AlbumType from downloadable inner join album on downloadable.albumno=album.albumno group by AlbumType, DistributorNo) select DistributorNo, max(Amount) from sometable where Type=”Audio”))
-- or AlbumNo in 
-- (Select AlbumNo from Download where DistributorNo in 
-- (With sometable(Amount, DistributorNo, AlbumNo, Type) as (Select count(), DistributorNo, AlbumType from downloadable inner join album on downloadable.albumno=album.albumno group by AlbumType, DistributorNo) select DistributorNo, max(Amount) from sometable where Type=”Video”)) ;
