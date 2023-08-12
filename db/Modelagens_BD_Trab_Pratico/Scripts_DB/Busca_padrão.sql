select M.NomeCriatura, M.Tipo, M.Tamanho,M.Tendencia, C.CA, C.PV,C.Deslocamento,
H.Força,H.Destreza,H.Constituição,H.Inteligencia,H.Sabedoria,H.Carisma,
CA.Pericias,CA.Sentidos,CA.Idiomas,CA.NivelDesafio
from  criatura M, cstatus C, habilidades H, caracteristicas CA
where M.idStatus = C.idStatus and M.idHabilidades = H.idHabilidades and M.idCaracteristicas = CA.idCaracteristicas
and M.NomeCriatura = 'Goblin'


