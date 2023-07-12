SELECT * FROM codebasics.dim_respondents a inner join codebasics.fact_survey_responses b
ON a.Respondent_ID = b.Respondent_ID;

# Who prefers energy drink more?
SELECT Gender , count(Gender) FROM codebasics.dim_respondents a inner join codebasics.fact_survey_responses b
ON a.Respondent_ID = b.Respondent_ID where Consume_frequency <> "Rarely"
group by Gender
order by count(Gender) desc;

#Which age group prefers energy drinks more?
SELECT  Age , Count(Age) FROM codebasics.dim_respondents a
inner join codebasics.fact_survey_responses b
ON a.Respondent_ID = b.Respondent_ID
where Consume_frequency <> "Rarely" 
group by Age
order by count(Age) desc;


# Which type of marketing reaches the most Youth (15-30)
SELECT  Age , Count(Age) , Marketing_channels FROM codebasics.dim_respondents a
inner join codebasics.fact_survey_responses b
ON a.Respondent_ID = b.Respondent_ID
where Consume_frequency = "Daily" and Age between 15 and 30
group by Age
order by count(Age) desc;
