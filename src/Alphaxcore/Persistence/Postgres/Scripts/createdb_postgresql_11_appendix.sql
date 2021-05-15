SET ROLE alphaxcore;

DROP TABLE shares;

CREATE TABLE shares
(
	poolid TEXT NOT NULL,
	blockheight BIGINT NOT NULL,
	difficulty DOUBLE PRECISION NOT NULL,
	networkdifficulty DOUBLE PRECISION NOT NULL,
	miner TEXT NOT NULL,
	worker TEXT NULL,
	useragent TEXT NULL,
	ipaddress TEXT NOT NULL,
    source TEXT NULL,
	created TIMESTAMP NOT NULL
) PARTITION BY LIST (poolid);

CREATE INDEX IDX_SHARES_CREATED on shares(created);
CREATE INDEX IDX_SHARES_MINER_DIFFICULTY on shares(miner, difficulty);
