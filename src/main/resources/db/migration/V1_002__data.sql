
-- To Insert into fund-manager Record

INSERT INTO fund_manager(
	id,
	mnemonic,
	name
)
 VALUES(
 	1,
 	'ARK',
	'ARK FUNDS'
);

-- To Insert into 'fund-group' Record

INSERT INTO fund_group(
	id,
	name,
	description,
	fund_manager_id
)
 VALUES(
 	1,
 	'ARK''s Active ETFs',
	'Actively Managed Innovation ETFs',
	1
);

INSERT INTO fund_group(
	id,
	name,
	description,
	fund_manager_id
)
 VALUES(
 	2,
 	'ARK''s Index ETFs',
	'Indexed Innovation ETFs',
	1
);

-- To Insert into 'fund_product' Record

INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	1,
	'ARK INNOVATION ETF',
	'ARK defines ‘‘disruptive innovation’’ as the introduction of a technologically enabled new product or service that potentially changes the way the world works.
	Companies within ARKK include those that rely on or benefit from the development of new products or services, technological improvements and advancements in scientific research relating to the areas of DNA technologies (‘‘Genomic Revolution”), industrial innovation in energy, automation and manufacturing (‘‘Industrial Innovation’’), the increased use of shared technology, infrastructure and services (‘‘Next Generation Internet’), and technologies that make financial services more efficient (‘‘Fintech Innovation’’).
	ARKK is an actively managed ETF that seeks long-term growth of capital by investing under normal circumstances primarily (at least 65% of its assets) in domestic and foreign equity securities of companies that are relevant to the Fund’s investment theme of disruptive innovation.',
	1
);


INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	2,
	'Autonomous Technology & Robotics ETF',
	'Companies within ARK Autonomous Technology & Robotics ETF* (ARKQ) are focused on and are expected to substantially benefit from the development of new products or services, technological improvements and advancements in scientific research related to, among other things, energy, automation and manufacturing, materials, and transportation. These companies may develop, produce, or enable:
		1) Autonomous Transportation
		2) Robotics and Automation
		3) 3D Printing
		4) Energy Storage
		5) Space Exploration
	ARKQ is an actively managed ETF that seeks long-term growth of capital by investing under normal circumstances primarily (at least 80% of its assets) in domestic and foreign equity securities of of autonomous technology and robotics companies that are relevant to the Fund’s investment theme of disruptive innovation.',
	1
);

INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	3,
	'Next Generation Internet ETF',
	'Companies within the ARK Next Generation Internet ETF* (ARKW) are focused on and expected to benefit from shifting the bases of technology infrastructure to the cloud, enabling mobile, new and local services, such as companies that rely on or benefit from the increased use of shared technology, infrastructure and services, internet-based products and services, new payment methods, big data, the internet of things, and social distribution and media. These companies may develop, produce or enable:
		1) Cloud Computing & Cyber Security
		2) E-Commerce
		3) Big Data & Artificial Intelligence (AI)
		4) Mobile Technology and Internet of Things
		5) Social Platforms
		6) Blockchain & P2P
	ARKW is an actively managed ETF that seeks long-term growth of capital by investing under normal circumstances primarily (at least 80% of its assets) in domestic and U.S. exchange traded foreign equity securities of companies that are relevant to the Fund’s investment theme of next generation internet.',
	1
);


INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	4,
	'Genomic Revolution ETF',
	'Companies within ARKG are focused on and are expected to substantially benefit from extending and enhancing the quality of human and other life by incorporating technological and scientific developments and advancements in genomics into their business. The companies held in ARKG may develop, produce or enable:

		1) CRISPR
		2) Targeted Therapeutics
		3) Bioinformatics
		4) Molecular Diagnostics
		5) Stem Cells
		6) Agricultural Biology
	ARKG will be concentrated in issuers in any industry or group of industries in the health care sector, including issuers having their principal business activities in the biotechnology industry.

	ARKG is an actively managed ETF that seeks long-term growth of capital by investing under normal circumstances primarily (at least 80% of its assets) in domestic and foreign equity securities of companies across multiple sectors, including health care, information technology, materials, energy and consumer discretionary, that are relevant to the Fund’s investment theme of the genomics revolution.',
	1
);

INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	5,
	'Genomic Revolution ETF',
	'ARKF is an actively managed Exchange Traded Fund (ETF) that seeks long-term growth of capital. It seeks to achieve this investment objective by investing under normal circumstances primarily (at least 80% of its assets) in domestic and foreign equity securities of companies that are engaged in the Fund’s investment theme of financial technology (“Fintech”) innovation.

	A company is deemed to be engaged in the theme of Fintech innovation if (i) it derives a significant portion of its revenue or market value from the theme of Fintech innovation, or (ii) it has stated its primary business to be in products and services focused on the theme of Fintech innovation. The Adviser defines “Fintech innovation” as the introduction of a technologically enabled new product or service that potentially changes the way the financial sector works, which ARK believes includes but is not limited to the following business platforms:

		1) Transaction Innovations
		2) Blockchain Technology
		3) Risk Transformation
		4) Frictionless Funding Platforms
		5) Customer Facing Platforms
		6) New Intermediaries',
	1
);


INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	6,
	'The 3D Printing ETF',
	'The 3D Printing ETF (PRNT) seeks to provide investment results that closely correspond, before fees and expenses, to the performance of the Total 3D-Printing Index, which is designed to track the price movements of stocks of companies involved in the 3D printing industry.
	The Total 3D-Printing Index is composed of equity securities and depositary receipts of exchange listed companies from the U.S., non-U.S. developed markets and Taiwan that are engaged in 3D printing related businesses within the following business lines: (i) 3D printing hardware, (ii) computer aided design (“CAD”) and 3D printing simulation software, (iii) 3D printing centers, (iv) scanning and measurement, and (v) 3D printing materials.',
	2
);

INSERT INTO fund_product(
	id,
	name,
	description,
	fund_group_id
)
VALUES(
	7,
	'Israel Innovative Technology ETF',
	'The ARK Israel Innovative Technology ETF (IZRL) seeks to provide investment results that closely correspond, before fees and expenses, to the performance of the ARK Israeli Innovation Index, which is designed to track the price movements of exchange-listed Israeli companies whose main business operations are causing disruptive innovation in the areas of genomics, health care, biotechnology, industrials, manufacturing, the Internet or information technology.

	The Index includes equity securities and depositary receipts of exchange listed companies that are incorporated and/or domiciled in Israel (‘‘Israeli Companies’’) and are included in one of the following economic sectors as defined by FactSet Research Systems: (i) health technology, (ii) communications, (iii) technology services, (iv) electronic technology, (v) consumer services, or (vi) producer manufacturing.',
	2
);
