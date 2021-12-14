SELECT A.id_reclamante, A.razon_social, A.total, coalesce(B.trabajado,0), A.total - coalesce(B.trabajado,0) as pendiente FROM(SELECT id_reclamante, razon_social, count(*) AS total FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE fecha_registro>'2021-05-01' GROUP BY id_reclamante, razon_social)A LEFT JOIN (SELECT id_reclamante, razon_social, count(*) AS trabajado FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=0 AND fecha_registro>'2021-05-01' AND fecha_registro<current_date - extract(dow from current_date)::integer GROUP BY id_reclamante, razon_social)B ON A.id_reclamante=B.id_reclamante AND A.razon_social=B.razon_social


--SELECT A.id_reclamante, A.razon_social, A.total, coalesce(B.trabajado,0), A.total - coalesce(B.trabajado,0) as pendiente FROM(SELECT id_reclamante, razon_social, count(*) AS total FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE fecha_registro>'2021-05-01' GROUP BY id_reclamante, razon_social)A LEFT JOIN (SELECT id_reclamante, razon_social, count(*) AS trabajado FROM ambulancia_sch.ambu_soat_se_siniestro_alt WHERE estado=0 AND fecha_registro>'2021-05-01' AND fecha_registro<'2021-11-21' GROUP BY id_reclamante, razon_social)B ON A.id_reclamante=B.id_reclamante AND A.razon_social=B.razon_social
