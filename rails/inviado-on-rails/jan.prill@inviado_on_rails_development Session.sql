select
  distinct(source)
from organizations;

select
  count(*)
from features
where
  key = 'kpi';

select
  path,
  raw
from features
where
  key = 'kpi';

-- software companies with gewinn_eur > 1,000,000
SELECT
  organizations.name,
  features.raw ->> 'gewinn_eur'
FROM 
  features
JOIN
  featurings on (featurings.feature_id = features.id)
JOIN
  organizations on (featurings.featurable_id = organizations.id)
where
  key = 'kpi'
  and path = '/Users/jan.prill/Downloads/software_hh_gewinn_gteq_1000000.csv'
  and features.raw ->> 'gewinn_eur' is not null
order by
  REGEXP_REPLACE(features.raw ->> 'gewinn_eur', '[\,\.]', '', 'g')::float desc;
  
-- all current persisted organizations ordered by gewinn_eur desc
SELECT
  organizations.name,
  features.path,
  features.raw ->> 'gewinn_eur'
FROM 
  features
JOIN
  featurings on (featurings.feature_id = features.id)
JOIN
  organizations on (featurings.featurable_id = organizations.id)
where
  key = 'kpi'
  and features.raw ->> 'gewinn_eur' is not null
order by
  REGEXP_REPLACE(features.raw ->> 'gewinn_eur', '[\,\.]', '', 'g')::float desc;



-- all currently persisted orgs ordered by personalaufwand_pro_mitarbeiter_eur desc
SELECT
  organizations.name,
  features.path,
  features.raw ->> 'personalaufwand_pro_mitarbeiter_eur'
FROM 
  features
JOIN
  featurings on (featurings.feature_id = features.id)
JOIN
  organizations on (featurings.featurable_id = organizations.id)
where
  key = 'kpi'
  and features.raw ->> 'personalaufwand_pro_mitarbeiter_eur' is not null
order by
  REGEXP_REPLACE(features.raw ->> 'personalaufwand_pro_mitarbeiter_eur', '[\,\.]', '', 'g')::float desc;

-- all currently persisted orgs with more than 10 employees ordered by personalaufwand_pro_mitarbeiter_eur desc
SELECT
  organizations.name,
  features.path,
  features.raw ->> 'personalaufwand_pro_mitarbeiter_eur'
FROM 
  features
JOIN
  featurings on (featurings.feature_id = features.id)
JOIN
  organizations on (featurings.featurable_id = organizations.id)
where
  key = 'kpi'
  and features.raw ->> 'personalaufwand_pro_mitarbeiter_eur' is not null
  and features.raw ->> 'mitarbeiter' is not null
  and (regexp_replace(features.raw ->> 'mitarbeiter', '[\,\.]', '', 'g'))::int >= 10
order by
  REGEXP_REPLACE(features.raw ->> 'personalaufwand_pro_mitarbeiter_eur', '[\,\.]', '', 'g')::float desc;

-- calculate and cast personalaufwand
SELECT
  organizations.name,
  features.path,
  features.raw ->> 'personalaufwand_pro_mitarbeiter_eur',
  (REGEXP_REPLACE(features.raw ->> 'personalaufwand_pro_mitarbeiter_eur', '[\,\.]', '', 'g')::float / 100) as perso
FROM 
  features
JOIN
  featurings on (featurings.feature_id = features.id)
JOIN
  organizations on (featurings.featurable_id = organizations.id)
where
  key = 'kpi'
  and features.raw ->> 'personalaufwand_pro_mitarbeiter_eur' is not null
  and features.raw ->> 'mitarbeiter' is not null
  and (regexp_replace(features.raw ->> 'mitarbeiter', '[\,\.]', '', 'g'))::int >= 10
order by
  REGEXP_REPLACE(features.raw ->> 'personalaufwand_pro_mitarbeiter_eur', '[\,\.]', '', 'g')::float desc;
