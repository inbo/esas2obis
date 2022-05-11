/*
Created by Peter Desmet (INBO)

See https://github.com/inbo/esas2obis/issues/10 for mapping decisions
*/

/* SAMPLE: PLATFORM CODE */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'platform code'                       AS measurementType,
  'http://vocab.nerc.ac.uk/collection/C17/current/' AS measurementTypeID,
  shipc.Description                     AS measurementValue,
  'http://vocab.nerc.ac.uk/collection/C17/current/' || shipc.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN shipc
    ON s.PlatformCode = shipc.Key
WHERE
  s.PlatformCode IS NOT NULL

UNION

/* SAMPLE: PLATFORM CLASS */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'platform class'                      AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Platform%20Class' AS measurementTypeID,
  platformclass.Description             AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Platform%20Class/' || platformclass.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN platformclass
    ON s.PlatformClass = platformclass.Key
WHERE
  s.PlatformClass IS NOT NULL

UNION

/* SAMPLE: PLATFORM SIDE */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'platform side'                       AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/PlatformSide' AS measurementTypeID,
  platformside.Description              AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/PlatformSide/' || platformside.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN platformside
    ON s.PlatformSide = platformside.Key
WHERE
  s.PlatformSide IS NOT NULL

UNION

/* SAMPLE: PLATFORM HEIGHT */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'platform height'                     AS measurementType,
  NULL                                  AS measurementTypeID,
  s.PlatformHeight                      AS measurementValue,
  NULL                                  AS measurementValueID,
  'm'                                   AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/ULAA/' AS measurementUnitID
FROM
  samples AS s
WHERE
  s.PlatformHeight IS NOT NULL

UNION

/* SAMPLE: TRANSECT WIDTH */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'transect width'                      AS measurementType,
  NULL                                  AS measurementTypeID,
  s.TransectWidth                       AS measurementValue,
  NULL                                  AS measurementValueID,
  'm'                                   AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/ULAA/' AS measurementUnitID
FROM
  samples AS s
WHERE
  s.TransectWidth IS NOT NULL

UNION

/* SAMPLE: SAMPLING METHOD */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'sampling method'                     AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P01/current/SAMPPROT/' AS measurementTypeID,
  bdcountmethod.Description             AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/BD_CountMethod/' || bdcountmethod.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'https://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN bdcountmethod
    ON s.SamplingMethod = bdcountmethod.Key
WHERE
  s.SamplingMethod IS NOT NULL

UNION

/* SAMPLE: PRIMARY SAMPLING */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'primary sampling'                    AS measurementType,
  NULL                                  AS measurementTypeID,
  s.PrimarySampling                     AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
WHERE
  s.PrimarySampling IS NOT NULL

UNION

/* SAMPLE: TARGET TAXA */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'target taxa'                         AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/TargetTaxa' AS measurementTypeID,
  targettaxa.Description                AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/TargetTaxa/' || targettaxa.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN targettaxa
    ON s.TargetTaxa = targettaxa.Key
WHERE
  s.TargetTaxa IS NOT NULL

UNION

/* SAMPLE: DISTANCE BINS */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'distance bins'                       AS measurementType,
  NULL                                  AS measurementTypeID,
  s.DistanceBins                        AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
WHERE
  s.DistanceBins IS NOT NULL

UNION

/* SAMPLE: USE OF BINOCULARS */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'use of binoculars'                   AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/UseOfBinoculars' AS measurementTypeID,
  useofbinoculars.Description           AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/UseOfBinoculars/' || useofbinoculars.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  samples AS s
  LEFT JOIN useofbinoculars
    ON s.UseOfBinoculars = useofbinoculars.Key
WHERE
  s.UseOfBinoculars IS NOT NULL

UNION

/* SAMPLE: NUMBER OF OBSERVERS */

SELECT
  s.CampaignID || ':' || s.SampleID     AS eventID,
  NULL                                  AS occurrenceID,
  'number of observers'                 AS measurementType,
  NULL                                  AS measurementTypeID,
  s.NumberOfObservers                   AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/UUUU/' AS measurementUnitID
FROM
  samples AS s
WHERE
  s.NumberOfObservers IS NOT NULL

UNION

/* POSITION: DISTANCE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'distance'                            AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P01/current/DISTPHMS/' AS measurementTypeID,
  p.Distance                            AS measurementValue,
  NULL                                  AS measurementValueID,
  'km'                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/ULKM/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  p.Distance IS NOT NULL

UNION

/* POSITION: AREA */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'area'                                AS measurementType,
  NULL                                  AS measurementTypeID,
  p.Area                                AS measurementValue,
  NULL                                  AS measurementValueID,
  'km2'                                 AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/SQKM/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  p.Area IS NOT NULL

UNION

/* POSITION: WINDFORCE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'wind force'                          AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P01/current/WMOCWFBF/' AS measurementTypeID,
  beaufort.Description                  AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Beaufort/' || beaufort.Key AS measurementValueID,
  'Beaufort'                            AS measurementUnit,
  '	http://vocab.nerc.ac.uk/collection/P06/current/UUUU/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN beaufort
    ON p.WindForce = beaufort.Key
WHERE
  p.WindForce IS NOT NULL

UNION

/* POSITION: VISIBILITY */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'visibility'                          AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Visibility' AS measurementTypeID,
  CASE
    WHEN visibility.Key = 'A' THEN '0-1'
    WHEN visibility.Key = 'B' THEN '1-5'
    WHEN visibility.Key = 'C' THEN '5-10'
    WHEN visibility.Key = 'D' THEN '>10'
    ELSE visibility.Key -- Keys expressed in km
  END                                   AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Visibility/' || visibility.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/ULKM/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN visibility
    ON p.Visibility = visibility.Key
WHERE
  p.Visibility IS NOT NULL

UNION

/* POSITION: GLARE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'glare'                               AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Glare' AS measurementTypeID,
  glare.Description                     AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Glare/' || glare.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN glare
    ON p.Glare = glare.Key
WHERE
  p.Glare IS NOT NULL

UNION

/* POSITION: SUN ANGLE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'sun angle'                           AS measurementType,
  NULL                                  AS measurementTypeID,
  p.SunAngle                            AS measurementValue,
  NULL                                  AS measurementValueID,
  'degrees'                             AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/UAAA/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  p.SunAngle IS NOT NULL

UNION

/* POSITION: CLOUD COVER */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'cloud cover'                         AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P02/current/CHEX/' AS measurementTypeID,
  cloudcover.Description                AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/CloudCover/' || cloudcover.Key AS measurementValueID,
  'okta'                                AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/UUUU/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN cloudcover
    ON p.CloudCover = cloudcover.Key
WHERE
  p.CloudCover IS NOT NULL

UNION

/* POSITION: PRECIPITATION */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'precipitation'                       AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Precipitation' AS measurementTypeID,
  precipitation.Description             AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Precipitation/' || precipitation.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN precipitation
    ON p.Precipitation = precipitation.Key
WHERE
  p.Precipitation IS NOT NULL

UNION

/* POSITION: ICE COVER */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'ice cover'                           AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P07/current/CFSN0424/' AS measurementTypeID,
  p.IceCover                            AS measurementValue,
  NULL                                  AS measurementValueID,
  'percent'                             AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/UPCT/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  p.IceCover IS NOT NULL

UNION

/* POSITION: OBSERVATION CONDITIONS */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  NULL                                  AS occurrenceID,
  'observation conditions'              AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Sightability' AS measurementTypeID,
  sightability.Description              AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Sightability/' || sightability.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  positions AS p
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN sightability
    ON p.ObservationConditions = sightability.Key
WHERE
  p.ObservationConditions IS NOT NULL

UNION

/* OBSERVATION: GROUP IDENTIFIER */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'group identifier'                    AS measurementType,
  NULL                                  AS measurementTypeID,
  o.GroupID                             AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  o.GroupID IS NOT NULL

UNION

/* OBSERVATION: TRANSECT */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'in transect'                         AS measurementType,
  NULL                                  AS measurementTypeID,
  o.Transect                            AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  o.Transect IS NOT NULL

UNION

/* OBSERVATION: INDIVIDUAL COUNT */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'individual count'                    AS measurementType,
  'http://vocab.nerc.ac.uk/collection/P01/current/OCOUNT01/' AS measurementTypeID,
  o.Count                               AS measurementValue,
  NULL                                  AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/UUUU/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
WHERE
  o.Count IS NOT NULL

UNION

/* OBSERVATION: OBSERVATION DISTANCE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'observation distance'                AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/ObservationDistance' AS measurementTypeID,
  CASE
    WHEN observationdistance.Key = 'A' THEN '0-50'
    WHEN observationdistance.Key = 'B' THEN '50-100'
    WHEN observationdistance.Key = 'C' THEN '100-200'
    WHEN observationdistance.Key = 'D' THEN '200-300'
    WHEN observationdistance.Key = 'E' THEN '>300'
    WHEN observationdistance.Key = 'F' THEN observationdistance.Description -- Flying, no contact with water
    WHEN observationdistance.Key = 'W' THEN observationdistance.Description -- In contact with the water, but distance not recorded
    ELSE o.ObservationDistance -- Expressed as number
  END                                   AS measurementValue,
  CASE
    WHEN observationdistance.Key IN ('A', 'B', 'C', 'D', 'E', 'F', 'W')
      THEN 'https://vocab.ices.dk/services/rdf/collection/ObservationDistance/' || observationdistance.Key
    ELSE NULL -- Expressed as number, not a vocab term
  END                                   AS measurementValueID,
  CASE
    WHEN observationdistance.Key = 'F' THEN NULL -- Not meters
    WHEN observationdistance.Key = 'W' THEN NULL -- Not meters
    ELSE 'm'
  END                                   AS measurementUnit,
  CASE
    WHEN observationdistance.Key = 'F' THEN 'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' -- Not meters
    WHEN observationdistance.Key = 'W' THEN 'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' -- Not meters
    ELSE 'http://vocab.nerc.ac.uk/collection/P06/current/ULAA/'
  END                                   AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN observationdistance
    ON o.ObservationDistance = observationdistance.Key
WHERE
  o.ObservationDistance IS NOT NULL

UNION

/* OBSERVATION: LIFE STAGE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'life stage'                          AS measurementType,
  'http://vocab.nerc.ac.uk/collection/S11/current/' AS measurementTypeID,
  lifestage.Description                 AS measurementValue,
  CASE
    WHEN lifestage.Key = 'A' THEN 'http://vocab.nerc.ac.uk/collection/S11/current/S1116/'
    WHEN lifestage.Key = 'I' THEN 'http://vocab.nerc.ac.uk/collection/S11/current/S1171/'
    WHEN lifestage.Key = '1' THEN 'https://vocab.ices.dk/services/rdf/collection/LifeStage/' || lifestage.Key
    WHEN lifestage.Key = '2' THEN 'https://vocab.ices.dk/services/rdf/collection/LifeStage/' || lifestage.Key
    WHEN lifestage.Key = '3' THEN 'https://vocab.ices.dk/services/rdf/collection/LifeStage/' || lifestage.Key
    WHEN lifestage.Key = '4' THEN 'https://vocab.ices.dk/services/rdf/collection/LifeStage/' || lifestage.Key
    WHEN lifestage.Key = '5' THEN 'https://vocab.ices.dk/services/rdf/collection/LifeStage/' || lifestage.Key
  END                                   AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN lifestage
    ON o.LifeStage = lifestage.Key
WHERE
  o.LifeStage IS NOT NULL

UNION

/* OBSERVATION: MOULT */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'moult'                               AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Moult' AS measurementTypeID,
  moult.Description                     AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Moult/' || moult.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN moult
    ON o.Moult = moult.Key
WHERE
  o.Moult IS NOT NULL

UNION

/* OBSERVATION: PLUMAGE */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'plumage'                             AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Plumage' AS measurementTypeID,
  plumage.Description                   AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Plumage/' || plumage.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN plumage
    ON o.Plumage = plumage.Key
WHERE
  o.Plumage IS NOT NULL

UNION

/* OBSERVATION: SEX */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'sex'                                 AS measurementType,
  'http://vocab.nerc.ac.uk/collection/S10/current/' AS measurementTypeID,
  sex.Description                       AS measurementValue,
  CASE
    WHEN sex.Key = 'F' THEN 'http://vocab.nerc.ac.uk/collection/S10/current/S102/'
    WHEN sex.Key = 'M' THEN 'http://vocab.nerc.ac.uk/collection/S10/current/S103/'
  END                                   AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN sex
    ON o.Sex = sex.Key
WHERE
  o.Sex IS NOT NULL

UNION

/* OBSERVATION: TRAVEL DIRECTION */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'travel direction'                    AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/TravelDirection' AS measurementTypeID,
  CASE
    WHEN traveldirection.Key = 'N' THEN '0'
    WHEN traveldirection.Key = 'NE' THEN '45'
    WHEN traveldirection.Key = 'E' THEN '90'
    WHEN traveldirection.Key = 'SE' THEN '135'
    WHEN traveldirection.Key = 'S' THEN '180'
    WHEN traveldirection.Key = 'SW' THEN '225'
    WHEN traveldirection.Key = 'W' THEN '270'
    WHEN traveldirection.Key = 'NW' THEN '315'
    WHEN traveldirection.Key = 'U' THEN traveldirection.Description -- Flying, no apparent direction
    ELSE o.TravelDirection -- Expressed in degrees
  END                                   AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/TravelDirection/' || traveldirection.Key AS measurementValueID,
  CASE
    WHEN traveldirection.Key = 'U' THEN NULL
    ELSE 'degrees'
  END                                   AS measurementUnit,
  CASE
    WHEN traveldirection.Key = 'U' THEN 'https://vocab.nerc.ac.uk/collection/P06/current/XXXX/'
    ELSE 'https://vocab.nerc.ac.uk/collection/P06/current/UAAA/'
  END                                   AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN traveldirection
    ON o.TravelDirection = traveldirection.Key
WHERE
  o.TravelDirection IS NOT NULL

UNION

/* OBSERVATION: PREY */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'prey'                                AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/PreyType' AS measurementTypeID,
  preytype.Description                  AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/PreyType/' || preytype.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN preytype
    ON o.Prey = preytype.Key
WHERE
  o.Prey IS NOT NULL

UNION

/* OBSERVATION: ASSOCIATION */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'association'                         AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Association' AS measurementTypeID,
  association.Description               AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Association/' || association.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN association
    ON o.Association = association.Key
WHERE
  o.Association IS NOT NULL

UNION

/* OBSERVATION: BEHAVIOUR */

SELECT
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID AS eventID,
  s.CampaignID || ':' || s.SampleID || ':' || p.PositionID || ':' || o.ObservationID AS occurrenceID,
  'behaviour'                           AS measurementType,
  'https://vocab.ices.dk/services/rdf/collection/Behaviour' AS measurementTypeID,
  behaviour.Description                 AS measurementValue,
  'https://vocab.ices.dk/services/rdf/collection/Behaviour/' || behaviour.Key AS measurementValueID,
  NULL                                  AS measurementUnit,
  'http://vocab.nerc.ac.uk/collection/P06/current/XXXX/' AS measurementUnitID
FROM
  observations AS o
  LEFT JOIN positions AS p
    ON o.PositionID = p.PositionID
  LEFT JOIN samples AS s
    ON p.SampleID = s.SampleID
  LEFT JOIN behaviour
    ON o.Behaviour = behaviour.Key
WHERE
  o.Behaviour IS NOT NULL
