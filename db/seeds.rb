School.create!(name: 'Lincoln High School')
[
    'Alcohol',
    'Assault',
    'Bullying',
    'Hazing',
    'Drugs',
    'Graffiti',
    'Injury',
    'Suspicious activity',
    'Trespassing',
    'Vandalism',
    'Weapons violation',
    'Technology misuse',
    'Other'
].each do | incident_type_name |
    IncidentType.create!(name: incident_type_name)
end