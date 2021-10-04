Feature: S3 related general feature
	Implemented
		- Data must be encrypted at rest (what if it's suppose to be public?, maybe check if it's suppose to be public before? What if it's mistakenly set as public?)
		- Data stored in S3 has versioning enabled


	Questionable checks (only checks if one pass)
	- S3 must have access logging enabled


	Scenario: Data must be encrypted at rest
		Given I have aws_s3_bucket defined
		Then it must have server_side_encryption_configuration

	
	Scenario: S3 must have access logging enabled 
		Given I have aws_s3_bucket defined
		When its acl is not "log-delivery-write"
		Then it must have logging
