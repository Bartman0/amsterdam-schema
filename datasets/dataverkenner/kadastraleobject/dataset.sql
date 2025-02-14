create or replace view public.dataverkenner_kadastraleobject_kadastraleobject WITH (security_barrier) as
select 
z.id as "id",
z.identificatie as "identificatie",
z.neuron_id as "neuron_id",
z.volgnummer as "volgnummer",
z.kadastrale_aanduiding as "kadastrale_aanduiding",
z.begin_geldigheid as "begin_geldigheid",
z.eind_geldigheid as "eind_geldigheid",
z.aangeduid_door_brk_kadastralegemeentecode_id as "aangeduid_door_brk_kadastralegemeentecode_id",
z.aangeduid_door_brk_kadastralegemeente_id as "gemeente",
z.aangeduid_door_brk_kadastralesectie_id as "aangeduid_door_brk_kadastralesectie_id",
z.indexletter as "indexletter",
z.indexnummer as "indexnummer",
z.aangeduid_door_brk_kadastralegemeente_id as "aangeduid_door_brk_kadastralegemeente_id",
z.grootte as "grootte",
z.perceelnummer as "perceelnummer",
z.geometrie as "geometrie",
a.id as "ont_uit_id",
a.kadastraleobjecten_id as "ont_uit_kadastraleobjecten_id",
a.kadastraleobjecten_identificatie as "ont_uit_kadastraleobjecten_identificatie",
a.kadastraleobjecten_volgnummer as "ont_uit_kadastraleobjecten_volgnummer",
a.is_ontstaan_uit_brk_kadastraalobject_id as "ont_uit_brk_kadastraalobject_id",
a.is_ontstaan_uit_brk_kadastraalobject_identificatie as "ont_uit_brk_kadastraalobject_identificatie",
a.is_ontstaan_uit_brk_kadastraalobject_volgnummer as "ont_uit_brk_kadastraalobject_volgnummer",
a.begin_geldigheid as "ont_uit_begin_geldigheid",
a.eind_geldigheid as "ont_uit_eind_geldigheid",
b.hft_rel_mt_vot_identificatie as "heeft_een_relatie_met_bag_verblijfsobject_identificatie"
from brk_2_kadastraleobjecten z
left join brk_2_kadastraleobjecten_is_ontstaan_uit_brk_kadastraalobject a on z.id = a.kadastraleobjecten_id
left join brk_2_kadastraleobjecten_hft_rel_mt_vot b on z.id = b.kadastraleobjecten_id;