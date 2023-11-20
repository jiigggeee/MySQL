create view country_averages as 
select
	country,
    count(*) as respondents,
    avg(years_experience) as yrs_experience,
    avg(case when is_manager = 'yes' then 1 else 0 end)
    as pct_mgrs,
    avg(case when education_level = 'masters' then 1 else 0 end)
    as pct_masters
    from salary_survey
    group by 1
    order by 2 desc;
    