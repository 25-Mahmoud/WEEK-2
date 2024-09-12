-- retrive the personal informations for all patients
SELECT first_name, last_name, Date_of_birth
FROM patients;
-- retrive the providers main information from providers table
SELECT provider_id, first_name,provider_specialty
FROM PROVIDERS;
-- retriveing all patients with first name starts with AB
SELECT first_name
FROM patients
WHERE first_name LIKE "AB%";
-- querying all providers whose specialty Ends with the letter Y
SELECT first_name ,provider_specialty
FROM providers
WHERE provider_specialty LIKE "%y";
-- retriving information for all patients whom were born after 1st Jan 1980
SELECT * 
FROM patients
WHERE date_of_birth > '1980-01-01';
-- retriving the visits that happens two or more times
SELECT * 
FROM ed_visits
WHERE acuity >= 2;
-- retriving patients information for those who speak spanish
	SELECT *
    FROM patients
    WHERE language = 'Spanish';
-- retrieve visits where the reason is "Migraine" and the disposition is "Admitted"
    SELECT * 
    FROM ed_visits
    WHERE reason_for_visit = 'Migraine' AND ed_disposition = 'Admitted';
-- querying patients who were born between 1975 and 1980
SELECT *
FROM patients
WHERE date_of_birth between '1975-01-01' AND  '1980-12-31';
-- RETRIVING PATIENTS NAMES AND ORDER THEM ALPHABETICALLY BY LAST NAME
SELECT FIRST_NAME, LAST_NAME
FROM patients
ORDER BY last_name ASC;
-- RETRIVING ALL VISITS DATA AND SORTING THEM FROM THE MOST RECENT TO THE OLDEST ONES
SELECT * 
FROM visits
ORDER BY date_of_visit DESC ;
-- RETRIVING PROVIDERS DATE FOR PROVIDERS WHO JOINED AFTER 1995 AND SPECIALTY IS PEDIARTICES OR CARDIOLOGY
SELECT * 
FROM providers
WHERE date_joined >'1995-12-31' AND (provider_specialty ='Pediatrics' or provider_specialty = 'Cardiology');
-- querying patients who were discharged home in the first week of march 2018
SELECT *
FROM discharges
WHERE discharge_disposition = "HOME" AND (discharge_date >= '2018-03-01' AND discharge_date <= '2018-03-07');
    