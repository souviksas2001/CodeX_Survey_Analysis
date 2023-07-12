SELECT * FROM codebasics.dim_respondents;
select * from fact_survey_responses;
SELECT * FROM codebasics.dim_cities;

/*Which area of business should we focus more on our product development? */
select Reasons_preventing_trying, count(Reasons_preventing_trying) from fact_survey_responses 
where Current_brands = "CodeX"
group by Reasons_preventing_trying
order by count(Reasons_preventing_trying) desc; 
