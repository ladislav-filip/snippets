/*
Rekuzrivní načtení všech položek patřících to dané větve, včetně vnořených
*/

with recursive strom as (
    select idkategorie, vlastnik from KATEGORIEPRODUKTU where idkategorie = 97
    union all
    select idkategorie, vlastnik from KATEGORIEPRODUKTU k
    inner join strom st on k.vlastnik = st.idkategorie
    where k.idkategorie <> k.vlastnik
)
select idkategorie, vlastnik from strom


/*

WITH RECURSIVE <cte_alias> AS (
 SELECT <parent data> -- root node’s data
 UNION ALL
 SELECT <child data> -- children’s data
 JOIN <cte_alias> ON <parent_link>
 ) -- DO // for the Delphians
SELECT * FROM <cte_alias>

*/