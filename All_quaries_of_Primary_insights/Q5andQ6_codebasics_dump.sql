SELECT * FROM codebasics.dim_respondents;
select * from fact_survey_responses;
SELECT * FROM codebasics.dim_cities;

select * from codebasics.dim_respondents aa left join codebasics.dim_cities as bb 
ON aa.City_ID = bb.City_ID;

/*What do people think about our brand?*/
select Brand_perception,count(Brand_perception) from fact_survey_responses 
where Current_brands = "CodeX"
group by Brand_perception
order by count(Brand_perception) desc;

/*Which cities do we need to focus more on?*/
select City,count(City),Current_brands from codebasics.dim_respondents aa join codebasics.dim_cities as bb 
ON aa.City_ID = bb.City_ID
join codebasics.fact_survey_responses as c
on aa.Respondent_ID= c.Respondent_ID
where Current_brands = "CodeX"
group by City
order by count(City) asc; 

/* What are the typical consumption situations for energy drinks among
respondents*/
select Typical_consumption_situations,count(Typical_consumption_situations)from fact_survey_responses 
group by Typical_consumption_situations
order by count(Typical_consumption_situations) desc
limit 1;

/*What factors influence respondents' purchase decisions, such as price range and
limited edition packaging*/

select Price_range,count(Price_range), Packaging_preference from fact_survey_responses
group by Price_range
order by count(Price_range) desc;

/*Where do respondents prefer to purchase energy drinks?*/
select Purchase_location,count(Purchase_location) from fact_survey_responses
group by Purchase_location
order by count(Purchase_location) desc limit 1;

select * from codebasics.dim_respondents aa join codebasics.dim_cities as bb 
ON aa.City_ID = bb.City_ID
join codebasics.fact_survey_responses as c
on aa.Respondent_ID= c.Respondent_ID;



