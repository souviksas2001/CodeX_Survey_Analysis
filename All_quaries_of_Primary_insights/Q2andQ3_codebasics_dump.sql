SELECT * FROM codebasics.fact_survey_responses;

/*What are the preferred ingredients of energy drinks among respondents?*/
select Ingredients_expected, count(Ingredients_expected) FROM codebasics.fact_survey_responses
group by Ingredients_expected order by count(Ingredients_expected) desc limit 1;

/*What packaging preferences do respondents have for energy drinks?*/
select Packaging_preference, count(Packaging_preference) FROM codebasics.fact_survey_responses
group by Packaging_preference
order by count(Packaging_preference) desc ;

/*Who are the current market leaders?*/
select Current_brands,count(Current_brands)
from codebasics.fact_survey_responses
group by Current_brands
order by count(Current_brands) desc
limit 1;

/*What are the primary reasons consumers prefer those brands over ours?*/

select Reasons_for_choosing_brands as CodeX, count(Reasons_for_choosing_brands)
from codebasics.fact_survey_responses where Current_brands = "CodeX"
group by Reasons_for_choosing_brands
order by count(Reasons_for_choosing_brands) desc;

select Reasons_for_choosing_brands as Cola_Coka ,count(Reasons_for_choosing_brands)
from codebasics.fact_survey_responses where Current_brands = "Cola-Coka" 
group by Reasons_for_choosing_brands
order by count(Reasons_for_choosing_brands) desc;

SELECT Reasons_for_choosing_brands AS CodeX, COUNT(Reasons_for_choosing_brands) AS Count_CodeX
FROM codebasics.fact_survey_responses
WHERE Current_brands = "CodeX"
GROUP BY Reasons_for_choosing_brands
UNION ALL
SELECT Reasons_for_choosing_brands AS Cola_Coka, COUNT(Reasons_for_choosing_brands) AS Count_Cola_Coka
FROM codebasics.fact_survey_responses
WHERE Current_brands = "Cola-Coka"
GROUP BY Reasons_for_choosing_brands;

  
/*
select Consume_reason as Cola_Coka ,count(Consume_reason )
from codebasics.fact_survey_responses where Current_brands = "Cola-Coka"
group by Consume_reason 
order by count(Reasons_for_choosing_brands) Desc;

select Consume_reason as Cola_Coka ,count(Consume_reason )
from codebasics.fact_survey_responses where Current_brands = "CodeX"
group by Consume_reason 
order by count(Reasons_for_choosing_brands) Desc;
*/