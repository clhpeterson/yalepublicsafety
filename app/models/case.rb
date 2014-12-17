class Case < ActiveRecord::Base
	DAYS = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
	INCIDENTS = ["ARSON", "ASSAULT-WEAPON-NON FIREARM", "ASSAULTING A POLICE OFFICER OR FIREFIGHTER", "ATTEMPTED THEFT", "BREACH OF PEACE", "BURGLARY-APARTMENT-NON-FORCIBLE", "BURGLARY-ATTEMPT", "BURGLARY-COMMERCIAL-FORCIBLE", "BURGLARY-NOTHING TAKEN", "BURGLARY-OTHER-FORCIBLE", "BURGLARY-OTHER-NON FORCIBLE", "BURGLARY-RESIDENCE-NON FORCIBLE", "BURGLARY-SCHOOL/COLLEGE/UNIVERSITY-FORCIBLE", "BURGLARY-SCHOOL/COLLEGE/UNIVERSITY-NON FORCIBLE", "CARRYING A BB GUN", "CARRYING A CONCEALED WEAPON", "CARRYING WEAPON IN MOTOR VEHICLE", "CONFIDENCE-FLIM FLAM", "CREDIT CARD FRAUD", "CRIMINAL IMPERSONATION-NON POLICE", "CRIMINAL MISCHIEF-PRIVATE PROPERTY", "CRIMINAL MISCHIEF-PUBLIC PROPERTY", "CRIMINAL SIMULATION", "CRIMINAL TRESPASS", "CRUELTY TO ANIMALS", "DISCHARGING FIREWORKS", "DISORDERLY CONDUCT", "DISPUTE-NO DISTURBANCE", "DOG BITE", "DRIVING WHILE INTOXICATED-ALCOHOL", "DRIVING WHILE INTOXICATED-DRUGS", "EVADING RESPONSIBILITY", "FALSELY REPORTING AN INCIDENT", "FORGERY OF GOVERNMENT INSTRUMENTS", "FORGERY-OTHER (CHECKS MOTOR VEHICLE", "FORGING NARCOTICS PRESCRIPTIONS", "GAMBLING OFFENSES-OTHER", "HARASSMENT", "ILLEGAL POSSESSION OF A WEAPON", "INTERFERING WITH AN OFFICER", "ISSUING BAD CHECKS", "LANDLORD-TENANT DISPUTE", "MANUFACTURE OR POSSESSION OF BURGLARY", "MISREPRESENTING AGE TO OBTAIN LIQUOR", "MISSING JUVENILE", "NAL TRESPASS 3RD", "NEGLECT OR ABUSE OF FAMILY OR CHILD", "OPERATING MOTOR VEHICLE WITHOUT OWNER'S", "OTHER INVESTIGATION", "OTHER LIQUOR OFFENSES", "OTHER MISCELLANEOUS", "POSSESSION OF ALCOHOL BY A MINOR", "POSSESSION OF DANGEROUS OR CONTROLLED DRUGS", "POSSESSION OF HEROIN", "POSSESSION OF MARIJUANA", "POSSESSION OF NARCOTICS-GENERAL", "POSSESSION OF PARAPHERNALIA", "POSSESSION OF PROHIBITED OR UNLICENSED WEAPON", "PROBATION VIOLATION", "PUBLIC INDECENCY", "PUBLIC INDECENCY-INDECENT", "RECKLESS BURNING", "RECKLESS ENDANGERMENT", "RECOVERED LICENSE PLATES", "RECOVERED STOLEN AUTO", "ROBBERY ATTEMPT NO WEAPON", "ROBBERY ATTEMPT OTH WEAPON", "ROBBERY-STR-NO WEAPON", "ROBBERY-STRT-FIREARM", "ROBBERY-STRT-OTH WEAPON", "SALE OF DANGEROUS OR CONTROLLED DRUGS", "SEX ASSAULT W/O CONSENT", "SEX ASSAULT-FORCIBLE", "SEXUAL CONTACT FORCIBLE OR WITHOUT CONSENT", "SIMPLE ASSAULT", "SUBPOENA SERVICE", "SUSPICIOUS FIRE", "TAMPERING WITH A MOTOR VEHICLE", "THEFT FROM AUTO", "THEFT FROM MOTOR VEHICLE-NON AUTO", "THEFT FROM PERSON", "THEFT GREATER MISCELLANEOUS", "THEFT GREATER SHOPLIFTING", "THEFT MISCELLANEOUS", "THEFT OF AUTO", "THEFT OF CHECKS OR NEGOTIABLE INSTRUMENTS", "THEFT OF CREDIT CARDS", "THEFT OF OTHER MOTOR VEHICLE", "THEFT OF SERVICES", "THEFT UNIVERSITY ACADEMIC BUILDING", "THEFT UNIVERSITY RESIDENCE BUILDING", "THEFT-AUTO ACCESSORIES", "THEFT-BICYCLE", "THEFT-GREATER-ATTEMPTED", "THEFT-GREATER-AUTO ACCESSORIES", "THEFT-GREATER-BICYCLES", "THEFT-GREATER-FROM MAIL", "THEFT-GREATER-FROM MOTOR VEHICLE", "THEFT-GREATER-FROM MOTOR VEHICLE-NON AUTO", "THEFT-GREATER-FROM PERSON", "THEFT-GREATER-PUBLIC BUILDING", "THEFT-GREATER-PURSE SNATCHING", "THEFT-GREATER-RESIDENCE", "THEFT-GREATER-UNIVERSITY ACADEMIC BUILDING", "THEFT-GREATER-UNIVERSITY RESIDENCE BUILDING", "THEFT-PUBLIC BUILDING", "THEFT-RESIDENCE", "THEFT-SHOPLIFTING", "THREATENING", "TRESPASSING", "UNLAWFUL DISCHARGE OF FIREARMS", "VIOLATION OF PROTECTIVE OR RESTRAINING ORDER", "WANTED PERSON NEW HAVEN", "WANTED PERSON OTHER TOWN", "WARRANT SERVICE", "WINDOW BREAKING"]
	HOURS = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"]
	MINUTES = ["00", "01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"] + Array((13..59).step(1)).map(&:to_s)

end