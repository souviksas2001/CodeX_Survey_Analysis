SELECT * FROM codebasics.fact_survey_responses;

/*Which marketing channel can be used to reach more customers?*/
SELECT Marketing_channels , count(Marketing_channels) FROM codebasics.fact_survey_responses 
group by Marketing_channels 
order by count(Marketing_channels) desc; 

/*. How effective are different marketing strategies and channels in reaching our customers?*/
SELECT Marketing_channels , count(Marketing_channels) FROM codebasics.fact_survey_responses 
where Current_brands = "CodeX"
group by Marketing_channels 
order by count(Marketing_channels) desc; 


