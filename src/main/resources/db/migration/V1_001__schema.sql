CREATE TABLE fund_manager
(
    id       BIGINT NOT NULL,
    mnemonic varchar(4),
    name     VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE fund_group
(
    id              BIGINT NOT NULL,
    name            VARCHAR(100),
    description     VARCHAR(200),
    fund_manager_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_fund_group_fund_manager_id FOREIGN KEY (fund_manager_id) REFERENCES fund_manager (id)
);

CREATE TABLE fund_product
(
    id                          BIGINT NOT NULL,
    name                        VARCHAR(100),
    description                 VARCHAR(1200),
    currency_cd                 VARCHAR(10),
    fund_detail_refresh_dt      DATE,
    nav_market_price_refresh_dt DATE,
    arkk_performance_refresh_dt DATE,
    holdings_refresh_dt         DATE,
    prev_total_market_value     DECIMAL(20, 2),
    fund_group_id               BIGINT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_fund_product_fund_group_id FOREIGN KEY (fund_group_id) REFERENCES fund_group (id)
);

CREATE TABLE fund_detail
(
    id                      BIGINT PRIMARY KEY AUTO_INCREMENT,
    fund_product_id         BIGINT,
    ticker                  VARCHAR(20),
    fund_type               VARCHAR(40),
    cusip                   VARCHAR(20),
    isin                    VARCHAR(20),
    primary_exchange        VARCHAR(20),
    inception_dt            DATE,
    net_assets              DECIMAL(20, 2),
    expense_ratio           DECIMAL(5, 2),
    indicative_value        VARCHAR(20),
    nav                     VARCHAR(20),
    num_holdings            VARCHAR(40),
    weighted_avg_market_cap DECIMAL(20, 2),
    median_market_cap       DECIMAL(20, 2),
    portfolio_mgr           VARCHAR(50),
    refresh_dt              date,
    last_updated            timestamp default current_timestamp,
    CONSTRAINT fk_fund_detail_fund_product_id FOREIGN KEY (fund_product_id) REFERENCES fund_product (id)
);

CREATE TABLE nav_market_price
(
    id                  BIGINT PRIMARY KEY AUTO_INCREMENT,
    fund_product_id     BIGINT,
    nav                 DECIMAL(20, 2),
    market_price        DECIMAL(20, 2),
    nav_change          VARCHAR(100),
    market_price_change VARCHAR(100),
    median_bid_ask      DECIMAL(5, 2),
    trade_volume        BIGINT,
    refresh_dt          date,
    last_updated        timestamp default current_timestamp,
    CONSTRAINT fk_nav_market_price_fund_product_id FOREIGN KEY (fund_product_id) REFERENCES fund_product (id)
);

CREATE TABLE arkk_performance
(
    id              BIGINT PRIMARY KEY AUTO_INCREMENT,
    fund_product_id BIGINT NOT NULL,
    nav             DECIMAL(5, 2),
    market_price    DECIMAL(5, 2),
    period VARCHAR (50),
    refresh_dt      date,
    last_updated    timestamp default current_timestamp,
    CONSTRAINT fk_arkk_performance_fund_product_id FOREIGN KEY (fund_product_id) REFERENCES fund_product (id)
);

CREATE TABLE holding
(
    id              BIGINT PRIMARY KEY AUTO_INCREMENT,
    fund_product_id BIGINT NOT NULL,
    weight          DECIMAL(5, 2),
    company         VARCHAR(100),
    ticker          VARCHAR(20),
    cusip           VARCHAR(20),
    market_price    DECIMAL(20, 2),
    num_shares      BIGINT,
    market_value    DECIMAL(20, 2),
    refresh_dt      date,
    last_updated    timestamp default current_timestamp,
    CONSTRAINT fk_holding_fund_product_id FOREIGN KEY (fund_product_id) REFERENCES fund_product (id)
);

CREATE TABLE document
(
    id              BIGINT PRIMARY KEY AUTO_INCREMENT,
    fund_product_id BIGINT NOT NULL,
    type            VARCHAR(20),
    name            VARCHAR(100),
    data_source     VARCHAR(20),
    url             VARCHAR(200),
    last_updated    TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_document_fund_product_id FOREIGN KEY (fund_product_id)
        REFERENCES fund_product (id)
);

-- TODO: Create tables for Premium/Discount information
