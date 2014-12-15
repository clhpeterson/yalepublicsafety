module CaseHelper

	def get_types_to_check()
		all_types = Array.new

		if params[:"DISORDERLY CONDUCT"] == "1"
			all_types.push("DISORDERLY CONDUCT")
		end
		if params[:"WINDOW BREAKING"] == "1"
			all_types.push("WINDOW BREAKING")
		end
		if params[:"THEFT-GREATER-FROM MOTOR VEHICLE"] == "1"
			all_types.push("THEFT-GREATER-FROM MOTOR VEHICLE")
		end
		if params[:"THEFT-GREATER-UNIVERSITY RESIDENCE BUILDING"] == "1"
			all_types.push("THEFT-GREATER-UNIVERSITY RESIDENCE BUILDING")
		end
		if params[:"OTHER LIQUOR OFFENSES"] == "1"
			all_types.push("OTHER LIQUOR OFFENSES")
		end
		if params[:"THEFT-GREATER-UNIVERSITY ACADEMIC BUILDING"] == "1"
			all_types.push("THEFT-GREATER-UNIVERSITY ACADEMIC BUILDING")
		end
		if params[:"BURGLARY-SCHOOL/COLLEG E/UNIVERSITY-NON FORCIBLE"] == "1"
			all_types.push("BURGLARY-SCHOOL/COLLEG E/UNIVERSITY-NON FORCIBLE")
		end
		if params[:"HARASSMENT"] == "1"
			all_types.push("HARASSMENT")
		end
		if params[:"THEFT FROM AUTO"] == "1"
			all_types.push("THEFT FROM AUTO")
		end
		if params[:"BREACH OF PEACE"] == "1"
			all_types.push("BREACH OF PEACE")
		end
		if params[:"CRIMINAL MISCHIEF-PRIVATE PROPERTY"] == "1"
			all_types.push("CRIMINAL MISCHIEF-PRIVATE PROPERTY")
		end
		if params[:"THEFT-GREATER-BICYCLES"] == "1"
			all_types.push("THEFT-GREATER-BICYCLES")
		end
		if params[:"BURGLARY-SCHOOL/COLLEGE /UNIVERSITY-NON FORCIBLE"] == "1"
			all_types.push("BURGLARY-SCHOOL/COLLEGE /UNIVERSITY-NON FORCIBLE")
		end
		if params[:"THREATENING"] == "1"
			all_types.push("THREATENING")
		end
		if params[:"THEFT GREATER MISCELLANEOUS"] == "1"
			all_types.push("THEFT GREATER MISCELLANEOUS")
		end
		if params[:"SEX ASSAULT-FORCIBLE"] == "1"
			all_types.push("SEX ASSAULT-FORCIBLE")
		end
		if params[:"DRIVING WHILE INTOXICATED-ALCOHOL"] == "1"
			all_types.push("DRIVING WHILE INTOXICATED-ALCOHOL")
		end
		if params[:"POSSESSION OF NARCOTICS-GENERAL"] == "1"
			all_types.push("POSSESSION OF NARCOTICS-GENERAL")
		end
		if params[:"CRIMINAL MISCHIEF-PUBLIC PROPERTY"] == "1"
			all_types.push("CRIMINAL MISCHIEF-PUBLIC PROPERTY")
		end
		if params[:"WARRANT SERVICE"] == "1"
			all_types.push("WARRANT SERVICE")
		end
		if params[:"ROBBERY-STRT-FIREARM"] == "1"
			all_types.push("ROBBERY-STRT-FIREARM")
		end
		if params[:"SIMPLE ASSAULT"] == "1"
			all_types.push("SIMPLE ASSAULT")
		end
		if params[:"THEFT MISCELLANEOUS"] == "1"
			all_types.push("THEFT MISCELLANEOUS")
		end
		if params[:"THEFT-GREATER-ATTEMPTED"] == "1"
			all_types.push("THEFT-GREATER-ATTEMPTED")
		end
		if params[:"THEFT-BICYCLE"] == "1"
			all_types.push("THEFT-BICYCLE")
		end
		if params[:"DISPUTE-NO DISTURBANCE"] == "1"
			all_types.push("DISPUTE-NO DISTURBANCE")
		end
		if params[:"CRIMINAL TRESPASS"] == "1"
			all_types.push("CRIMINAL TRESPASS")
		end
		if params[:"WANTED PERSON OTHER TOWN"] == "1"
			all_types.push("WANTED PERSON OTHER TOWN")
		end
		if params[:"POSSESSION OF ALCOHOL BY A MINOR"] == "1"
			all_types.push("POSSESSION OF ALCOHOL BY A MINOR")
		end
		if params[:"POSSESSION OF MARIJUANA"] == "1"
			all_types.push("POSSESSION OF MARIJUANA")
		end
		if params[:"PUBLIC INDECENCY-INDECENT"] == "1"
			all_types.push("PUBLIC INDECENCY-INDECENT")
		end
		if params[:"CARRYING A CONCEALED WEAPON"] == "1"
			all_types.push("CARRYING A CONCEALED WEAPON")
		end
		if params[:"THEFT-GREATER-FROM MOTOR VEHICLE-NON AUTO"] == "1"
			all_types.push("THEFT-GREATER-FROM MOTOR VEHICLE-NON AUTO")
		end
		if params[:"ROBBERY-STRT-NO WEAPON"] == "1"
			all_types.push("ROBBERY-STRT-NO WEAPON")
		end
		if params[:"OTHER INVESTIGATION"] == "1"
			all_types.push("OTHER INVESTIGATION")
		end
		if params[:"THEFT-GREATER-FROM PERSON"] == "1"
			all_types.push("THEFT-GREATER-FROM PERSON")
		end
		if params[:"FOUND ANIMAL"] == "1"
			all_types.push("FOUND ANIMAL")
		end
		if params[:"CONFIDENCE-FLIM FLAM"] == "1"
			all_types.push("CONFIDENCE-FLIM FLAM")
		end
		if params[:"CRIMINAL SIMULATION"] == "1"
			all_types.push("CRIMINAL SIMULATION")
		end
		if params[:"GAMBLING OFFENSES-OTHER"] == "1"
			all_types.push("GAMBLING OFFENSES-OTHER")
		end
		if params[:"THEFT-SHOPLIFTING"] == "1"
			all_types.push("THEFT-SHOPLIFTING")
		end
		if params[:"INTERFERING WITH AN OFFICER"] == "1"
			all_types.push("INTERFERING WITH AN OFFICER")
		end
		if params[:"DISCHARGING FIREWORKS"] == "1"
			all_types.push("DISCHARGING FIREWORKS")
		end
		if params[:"THEFT UNIVERSITY RESIDENCE BUILDING"] == "1"
			all_types.push("THEFT UNIVERSITY RESIDENCE BUILDING")
		end
		if params[:"THEFT-RESIDENCE"] == "1"
			all_types.push("THEFT-RESIDENCE")
		end
		if params[:"THEFT OF CREDIT CARDS"] == "1"
			all_types.push("THEFT OF CREDIT CARDS")
		end
		if params[:"THEFT OF SERVICES"] == "1"
			all_types.push("THEFT OF SERVICES")
		end
		if params[:"TAMPERING WITH A MOTOR VEHICLE"] == "1"
			all_types.push("TAMPERING WITH A MOTOR VEHICLE")
		end
		if params[:"THEFT UNIVERSITY ACADEMIC BUILDING"] == "1"
			all_types.push("THEFT UNIVERSITY ACADEMIC BUILDING")
		end
		if params[:"THEFT-AUTO ACCESSORIES"] == "1"
			all_types.push("THEFT-AUTO ACCESSORIES")
		end
		if params[:"NEGLECT OR ABUSE OF FAMILY OR CHILD"] == "1"
			all_types.push("NEGLECT OR ABUSE OF FAMILY OR CHILD")
		end
		if params[:"ATTEMPTED THEFT"] == "1"
			all_types.push("ATTEMPTED THEFT")
		end
		if params[:"CRUELTY TO ANIMALS"] == "1"
			all_types.push("CRUELTY TO ANIMALS")
		end
		if params[:"THEFT GREATER SHOPLIFTING"] == "1"
			all_types.push("THEFT GREATER SHOPLIFTING")
		end
		if params[:"THEFT-GREATER-RESIDENCE"] == "1"
			all_types.push("THEFT-GREATER-RESIDENCE")
		end
		if params[:"SUBPOENA SERVICE"] == "1"
			all_types.push("SUBPOENA SERVICE")
		end
		if params[:"BURGLARY-RESIDENCE-NON FORCIBLE"] == "1"
			all_types.push("BURGLARY-RESIDENCE-NON FORCIBLE")
		end
		if params[:"POSSESSION OF PARAPHERNALIA"] == "1"
			all_types.push("POSSESSION OF PARAPHERNALIA")
		end
		if params[:"THEFT-GREATER-PURSE SNATCHING"] == "1"
			all_types.push("THEFT-GREATER-PURSE SNATCHING")
		end
		if params[:"THEFT OF CHECKS OR NEGOTIABLE INSTRUMENTS"] == "1"
			all_types.push("THEFT OF CHECKS OR NEGOTIABLE INSTRUMENTS")
		end
		if params[:"THEFT FROM PERSON"] == "1"
			all_types.push("THEFT FROM PERSON")
		end
		if params[:"THEFT-GREATER-PUBLIC BUILDING"] == "1"
			all_types.push("THEFT-GREATER-PUBLIC BUILDING")
		end
		if params[:"LANDLORD-TENANT DISPUTE"] == "1"
			all_types.push("LANDLORD-TENANT DISPUTE")
		end
		if params[:"THEFT-GREATER-FROM MAIL"] == "1"
			all_types.push("THEFT-GREATER-FROM MAIL")
		end
		if params[:"MISREPRESENTING AGE TO OBTAIN LIQUOR"] == "1"
			all_types.push("MISREPRESENTING AGE TO OBTAIN LIQUOR")
		end
		if params[:"RECKLESS ENDANGERMENT"] == "1"
			all_types.push("RECKLESS ENDANGERMENT")
		end
		if params[:"THEFT-PUBLIC BUILDING"] == "1"
			all_types.push("THEFT-PUBLIC BUILDING")
		end
		if params[:"FRAUD"] == "1"
			all_types.push("FRAUD")
		end
		if params[:"DRIVING WHILE INTOXICATED-DRUGS"] == "1"
			all_types.push("DRIVING WHILE INTOXICATED-DRUGS")
		end
		if params[:"BURGLARY-ATTEMPT"] == "1"
			all_types.push("BURGLARY-ATTEMPT")
		end
		if params[:"ROBBERY ATTEMPT NO WEAPON"] == "1"
			all_types.push("ROBBERY ATTEMPT NO WEAPON")
		end
		if params[:"ASSAULT-WEAPON-NON FIREARM"] == "1"
			all_types.push("ASSAULT-WEAPON-NON FIREARM")
		end
		if params[:"SEX ASSAULT W/O CONSENT"] == "1"
			all_types.push("SEX ASSAULT W/O CONSENT")
		end
		if params[:"CREDIT CARD FRAUD"] == "1"
			all_types.push("CREDIT CARD FRAUD")
		end
		if params[:"SEXUAL CONTACT FORCIBLE OR WITHOUT CONSENT"] == "1"
			all_types.push("SEXUAL CONTACT FORCIBLE OR WITHOUT CONSENT")
		end
		if params[:"ASSAULTING A POLICE OFFICER OR FIREFIGHTER"] == "1"
			all_types.push("ASSAULTING A POLICE OFFICER OR FIREFIGHTER")
		end
		if params[:"BURGLARY-NOTHING TAKEN"] == "1"
			all_types.push("BURGLARY-NOTHING TAKEN")
		end
		if params[:"EVADING RESPONSIBILITY"] == "1"
			all_types.push("EVADING RESPONSIBILITY")
		end
		if params[:"FALSELY REPORTING AN INCIDENT"] == "1"
			all_types.push("FALSELY REPORTING AN INCIDENT")
		end
		if params[:"WANTED PERSON NEW HAVEN"] == "1"
			all_types.push("WANTED PERSON NEW HAVEN")
		end
		if params[:"CARRYING WEAPON IN MOTOR VEHICLE"] == "1"
			all_types.push("CARRYING WEAPON IN MOTOR VEHICLE")
		end
		if params[:"BURGLARY-APARTMENT-NON FORCIBLE"] == "1"
			all_types.push("BURGLARY-APARTMENT-NON FORCIBLE")
		end
		if params[:"THEFT OF AUTO"] == "1"
			all_types.push("THEFT OF AUTO")
		end
		if params[:"ILLEGAL POSSESSION OF A WEAPON"] == "1"
			all_types.push("ILLEGAL POSSESSION OF A WEAPON")
		end
		if params[:"ROBBERY-STRT-OTH WEAPON"] == "1"
			all_types.push("ROBBERY-STRT-OTH WEAPON")
		end
		if params[:"POSSESSION OF DANGEROUS OR CONTROLLED DRUGS"] == "1"
			all_types.push("POSSESSION OF DANGEROUS OR CONTROLLED DRUGS")
		end
		if params[:"CRIMINAL IMPERSONATION-NON POLICE"] == "1"
			all_types.push("CRIMINAL IMPERSONATION-NON POLICE")
		end
		if params[:"RECOVERED LICENSE PLATES"] == "1"
			all_types.push("RECOVERED LICENSE PLATES")
		end
		if params[:"SUSPICIOUS FIRE"] == "1"
			all_types.push("SUSPICIOUS FIRE")
		end
		if params[:"VIOLATION OR PROTECTIVE OR RESTRAINING ORDER"] == "1"
			all_types.push("VIOLATION OR PROTECTIVE OR RESTRAINING ORDER")
		end
		if params[:"THEFT-GREATER-AUTO ACCESSORIES"] == "1"
			all_types.push("THEFT-GREATER-AUTO ACCESSORIES")
		end
		if params[:"MYSTERIOUS LOSS OF MONEY"] == "1"
			all_types.push("MYSTERIOUS LOSS OF MONEY")
		end
		if params[:"TRESPASSING"] == "1"
			all_types.push("TRESPASSING")
		end
		if params[:"BURGLARY-COMMERCIAL-FO RCIBLE"] == "1"
			all_types.push("BURGLARY-COMMERCIAL-FO RCIBLE")
		end
		if params[:"FORGERY OF GOVERNMENT INSTRUMENTS"] == "1"
			all_types.push("FORGERY OF GOVERNMENT INSTRUMENTS")
		end
		if params[:"OPERATING MOTOR VEHICLE WITHOUT OWNER'S"] == "1"
			all_types.push("OPERATING MOTOR VEHICLE WITHOUT OWNER'S")
		end
		if params[:"POSSESSION OF HEROIN"] == "1"
			all_types.push("POSSESSION OF HEROIN")
		end
		if params[:"OTHER MISCELLANEOUS"] == "1"
			all_types.push("OTHER MISCELLANEOUS")
		end
		if params[:"FORGERY-OTHER (CHECKS MOTOR VEHICLE"] == "1"
			all_types.push("FORGERY-OTHER (CHECKS MOTOR VEHICLE")
		end
		if params[:"MANUFACTURE OR POSSESSION OF BURGLARY"] == "1"
			all_types.push("MANUFACTURE OR POSSESSION OF BURGLARY")
		end
		if params[:"BURGLARY-OTHER-NON FORCIBLE"] == "1"
			all_types.push("BURGLARY-OTHER-NON FORCIBLE")
		end
		if params[:"SALE OF DANGEROUS OR CONTROLLED DRUGS"] == "1"
			all_types.push("SALE OF DANGEROUS OR CONTROLLED DRUGS")
		end
		if params[:"FORGING NARCOTICS PRESCRIPTIONS"] == "1"
			all_types.push("FORGING NARCOTICS PRESCRIPTIONS")
		end
		if params[:"PUBLIC INDECENCY"] == "1"
			all_types.push("PUBLIC INDECENCY")
		end
		if params[:"DOG BITE"] == "1"
			all_types.push("DOG BITE")
		end
		if params[:"BURGLARY-SCHOOL/COLLEGE /UNIVERSITY-FORCIBLE"] == "1"
			all_types.push("BURGLARY-SCHOOL/COLLEGE /UNIVERSITY-FORCIBLE")
		end
		if params[:"ISSUING BAD CHECKS"] == "1"
			all_types.push("ISSUING BAD CHECKS")
		end
		if params[:"MISSING JUVENILE"] == "1"
			all_types.push("MISSING JUVENILE")
		end
		if params[:"CARRYING A BB GUN"] == "1"
			all_types.push("CARRYING A BB GUN")
		end
		if params[:"UNLAWFUL DISCHARGE OF FIREARMS"] == "1"
			all_types.push("UNLAWFUL DISCHARGE OF FIREARMS")
		end
		if params[:"POSSESSION Of PROHIBITED OR UNLICENSED WEAPON"] == "1"
			all_types.push("POSSESSION Of PROHIBITED OR UNLICENSED WEAPON")
		end
		if params[:"RECOVERED STOLEN AUTO"] == "1"
			all_types.push("RECOVERED STOLEN AUTO")
		end
		if params[:"ROBBERY ATTEMPT OTH WEAPON"] == "1"
			all_types.push("ROBBERY ATTEMPT OTH WEAPON")
		end
		if params[:"ARSON"] == "1"
			all_types.push("ARSON")
		end
		if params[:"BURGLARY-SCHOOL/COLLEG E/UNIVERSITY-FORCIBLE"] == "1"
			all_types.push("BURGLARY-SCHOOL/COLLEG E/UNIVERSITY-FORCIBLE")
		end
		if params[:"PROBATION VIOLATION"] == "1"
			all_types.push("PROBATION VIOLATION")
		end
		if params[:"RECKLESS BURNING"] == "1"
			all_types.push("RECKLESS BURNING")
		end
		if params[:"BURGLARY-OTHER-FORCIBLE"] == "1"
			all_types.push("BURGLARY-OTHER-FORCIBLE")
		end
		if params[:"NAL TRESPASS 3RD"] == "1"
			all_types.push("NAL TRESPASS 3RD")
		end
		if params[:"THEFT OF OTHER MOTOR VEHICLE"] == "1"
			all_types.push("THEFT OF OTHER MOTOR VEHICLE")
		end
		if params[:"THEFT FROM MOTOR VEHICLE-NON AUTO"] == "1"
			all_types.push("THEFT FROM MOTOR VEHICLE-NON AUTO")
		end


		return all_types
	end

end