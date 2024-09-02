UPDATE "resource_version"
SET
    "resource_version" = MAX(EXTRACT(EPOCH FROM clock_timestamp()) * 1000000::BIGINT, "resource_version" + 1)
WHERE 1 = 1
    AND "group"    = ''
    AND "resource" = ''
;
