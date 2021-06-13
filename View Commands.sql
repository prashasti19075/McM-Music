-- The mega role grant all database access to the admin
set role role_distributor;
create role admin;
grant all on tables to admin;
grant admin to administration@Localhost;

-- View 1 - All the Trailer feedback is visible to the distibutor so that they can set the price  
CREATE VIEW Trailers_view AS
    (SELECT 
        *
    FROM
        Trailer);
-- View 2 Approved Albums to Distributor for purchasing purposes 
CREATE VIEW Approved_Albums AS
    (SELECT 
        *
    FROM
        Album
    WHERE
        ApprovalStatus = 'Approved');
-- View 3 Distributors can do anything with the information given to them
 CREATE VIEW distributor_personal_info AS
    (SELECT 
        *
    FROM
        distributors
    WHERE
        DistributorNo = SUBSTRING_INDEX(USER(), '@', 1));
-- View 4 Distributors can view,delete the albums possesed by them.
CREATE VIEW distributor_own_albums AS
    (SELECT 
        *
    FROM
        downloadable
    WHERE
        DistributorNo = SUBSTRING_INDEX(USER(), '@', 1));
-- View 5 Distributors can view the albums Suld by them, no delete, noupdate -coz this is a history table
CREATE VIEW distributor_sold_albums AS
    (SELECT 
        *
    FROM
        download
    WHERE
        DistributorNo = SUBSTRING_INDEX(USER(), '@', 1));

-- Distributor should only be allowed to view, not modify
-- All Approved Albums (s) , Albums Released to themselves (s) , Albums sold by them (s) , Their own information (all)
Create role role_distributor;

grant select on Trailers_view to role_distributor;
grant select on Approved_Albums to role_distributor;
grant all on Distributor_personal_info to role_distributor;
grant select,delete on distributor_own_albums to role_distributor;
grant select on distributor_sold_albums to role_distributor;
grant role_distributor to "A4M 1yizp"@Localhost;

-- View 6  - Let the visitors have the Aacess to total view and likes/dislikes as can be seen on youtube
CREATE VIEW Visitor_view AS
    (SELECT 
        AlbumName, DateOfRelease, Likes, Dislikes, NumberOfVisits
    FROM
        Trailer);

Create role role_visitor ;
grant select, update on Visitor_view to role_visitor;
grant role_visitor to "Visitor"@localhost;

-- view 7 Panelist as the Acess (s) to  its own entry
CREATE VIEW panelist_info AS
    SELECT 
        *
    FROM
        panellist
    WHERE
        panellist.PanellistNo = SUBSTRING_INDEX(USER(), '@', 1);
-- view 8 all the candidates 
CREATE VIEW submissions AS
    (SELECT 
        *
    FROM
        submission);

create role role_panelist;
grant select on submissions to role_panelist;
grant select,update on panelist_info to role_panelist;
grant role_panelist to "30001"@localhost;
-- view 9 
drop view Contestant;
create view Contestant as 
with short(num, CategorySelectedFor, SelectedforMember) as (select candidate.candidateNo, shortlisted.category, 
case  when (candidate.candidateNo in (Select MemberNo from Member) ) then "YES"
 when  (candidate.candidateNo not in (Select MemberNo from Member) ) then "NO"
 END  
 from candidate left join shortlisted on candidate.candidateNo=shortlisted.candidateNo)
select 
Short.SelectedforMember, S.CandidateNo, S.Duration, S.SubmissionDate, S.SubmissionType,  C.firstName, C.LastName, C.DOB, C.PriorExperience, C.Email, C.AdvertisementSeen, Short.CategorySelectedFor 
from Candidate as C 
inner join submission as S 
on C.CandidateNo=S.CandidateNo 
inner join short
on S.CandidateNo=Short.num
where S.CandidateNo=substring_index(user(), '@', 1);
CREATE VIEW contestant_info AS
    SELECT 
        *
    FROM
        Candidate
    WHERE
        CandidateNo = SUBSTRING_INDEX(USER(), '@', 1);
 CREATE VIEW submssion_info AS
    SELECT 
        *
    FROM
        submission
    WHERE
        CandidateNo = SUBSTRING_INDEX(USER(), '@', 1);


create role role_contestant;
grant select,delete on  Contestant to role_contestant;
grant all on contestant_info to role_contestant;
grant all on submssion_info to role_contestant;

grant role_contestant to "20001"@localhost; 
grant role_contestant to  "20021"@localhost;
-- Members 
-- Give Trailers 
create view MemView
as with temp(mgid) as 
(select roles.musicgroupid from roles where roles.MemberNo=substring_index(user(), '@', 1)) 
select trailer.likes, trailer.dislikes, trailer.DateOfRelease, trailer.NumberOfVisits, m.musicgroupid, m.moderatorno, m.type, r.Albumno, r.MemberNo, r.RolePlayed, album.Albumname, album.albumtype, album.approvalstatus, album.approvalDate, album.URL 
from MusicGroup as m 
inner join roles as r 
on m.musicgroupid=r.musicgroupid and m.musicgroupid in (select mgid from temp) 
inner join Album on r.AlbumNo=Album.AlbumNo
inner join trailer on trailer.AlbumNo=Album.AlbumNo;
drop view MemView;
create role group_member;
grant select on MemView to group_member;
grant group_member to "20001"@localhost;