Select
apartment_owners.full_name,
apartment_owners.email,
people_rols.rois,
apartaments.number_apartaments,
apartaments.square,
buildings.adress,
buildings.house_number,
apartment_teants.right_of_way

From apartment_owners

inner join people_rols on people_rols.id_people_rols=apartment_owners.people_rols_id
inner join apartaments on apartaments.id_apartaments=apartment_owners.id_apartment_owners
inner join buildings on buildings.id_buildings=apartaments.buildings_id
inner join apartment_teants on apartment_teants.id_teants=apartment_owners.id_apartment_owners

WHERE    apartment_owners.full_name NOT IN (  SELECT apartment_owners.full_name
        FROM    apartment_owners
        GROUP BY    full_name
        HAVING   COUNT(*) > 1 )
AND   apartment_teants.right_of_way = false
AND   apartment_owners.full_name = apartment_teants.full_name     






