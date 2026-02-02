SELECT
  fullVisitorId,
  visitNumber,
  device.deviceCategory AS device,
  CASE WHEN totals.transactions > 0 THEN 1 ELSE 0 END AS converted,
  date,
  visitStartTime,
  trafficSource.medium,
  geoNetwork.country,
  totals.pageviews,
  totals.timeOnSite,
  device.browser,
  device.operatingSystem,
  device.isMobile
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE 1=1
  AND _TABLE_SUFFIX BETWEEN '20160801' AND '20160831';



