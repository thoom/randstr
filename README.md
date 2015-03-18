# randstr
Random string command line script

## Standard Usage

	randstr [string length] [type]
  
### Standard Types
1. alnum: a-z, A-Z, 0-9
2. alpha: a-z, A-Z
3. upper: A-Z
4. lower: a-z
5. num: 0-9
6. upnum: A-Z, 0-9
7. lownum: a-z, 0-9
8. hex: a-f, 0-9

### Example

	$ randstr 10 lownum
	=> eh8zuzk71s 
 
## Other Usage

### UUID

Returns a v4 UUID string

#### Example

	$ randstr uuid
	=> 89657eaf-4e07-43a7-b3de-b7d1f3c26940

### Custom

	randstr [string length] cust [String of values to randomize] [String delimiter, defaults to comma]

Examples:

	$ randstr 10 cust "%,4,*,?" 
	=> *%44*?%4**
	
	$ randstr 10 cust "%|4|*|,|?" "|"
	=> ??4,%%,*%4
