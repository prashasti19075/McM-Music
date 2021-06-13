## 1. List all ‘Audio’ albums released in 2020 
```
SELECT 
    *
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
```
## 2. List all members who have been the member of more than one group.
```
SELECT 
    *
FROM
    Candidate
WHERE
    CandidateNo IN (SELECT DISTINCT
            A.MemberNo
        FROM
            Roles A INNER JOIN
            Roles B
        ON
            A.MemberNo = B.MemberNo
                AND NOT (A.MusicGroupID = B.MusicGroupID));
```
## 3. List all members of ‘Pop’ music group who are not part of any other music group.
```
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
                    Roles A INNER JOIN
                    Roles B
                ON
                    A.MemberNo = B.MemberNo
                        AND NOT (A.MusicGroupID = B.MusicGroupID))
                AND MusicGroupID IN (SELECT 
                    MusicGroupID
                FROM
                    MusicGroup
                WHERE
                    Type = 'pop'));
```
## 4. List all participants who have submitted both Audio and Video files.
```
SELECT 
    *
FROM
    candidate
WHERE
    candidateNo IN (SELECT 
            A.CandidateNo
        FROM
            Submission A INNER JOIN
            Submission B
        ON
            A.CandidateNo = B.CandidateNo
                AND NOT (A.SubmissionType = B.SubmissionType));
```
## 5. List the advertisement channel has been effective that attracted maximum number of entry submissions. 
```
With NewTable(MediaForm,count)
as (Select AdvertisementSeen, count(*) from submission
 INNER JOIN Candidate ON Candidate.CandidateNo = submission.CandidateNo
 group by AdvertisementSeen) Select max(count)as "Number of entries", MediaForm from NewTable ;
SELECT 
    AdvertisementSeen, COUNT(*)
FROM
    submission
        INNER JOIN
    Candidate ON Candidate.CandidateNo = submission.CandidateNo
GROUP BY AdvertisementSeen;
```
