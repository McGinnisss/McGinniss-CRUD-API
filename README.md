# McGinniss-CRUD-API

## API Endpoints

All endpoints use the base URL: `https://mcginniss-crud-api.onrender.com/`

### 1. Get All Characters

```http
GET /api/characters
````

**Response:**

```json
[
	{
		"chClass": "Mage",
		"characterId": 2,
		"description": "Formerly a part of the Heros party, is now a part of Frierens party",
		"name": "Frieren",
		"race": "Elf"
	},
	{
		"chClass": "Hero",
		"characterId": 3,
		"description": "The Hero of the Heros party.",
		"name": "Himmel",
		"race": "Human"
	}
]
```

### 2. Get Character by ID

```http
GET /api/characters/{id}
```

**Response:**

```json
{
	"chClass": "SomeClass",
	"characterId": 1,
	"description": "This is the content.",
	"name": "John Doe",
	"race": "someRace"
}
```

### 3. Create a New Character

```http
POST /api/characters
request body:
{
  "name": "John Doe",
  "race": "someRace",
  "chClass": "SomeClass",
  "description": "This is the content."
}
```

**Response:**

```json
{
	"chClass": "SomeClass",
	"characterId": 4,
	"description": "This is the content.",
	"name": "John Doe",
	"race": "someRace"
}
```

### 4. Update an Existing Character

```http
PUT /api/characters/{id}
request body:
{
    "chClass": "UpdatedClass",
	"characterId": 4,
	"description": "This is the updated content.",
	"name": "Updated John Doe",
	"race": "Updated Race"
}
```

**Response:**

```json
{
	"chClass": "UpdatedClass",
	"characterId": 4,
	"description": "This is the updated content.",
	"name": "Updated John Doe",
	"race": "Updated Race"
}
```

### 5. Delete a Character

```http
DELETE /api/characters/{id}
```

**Response:** <Empty>

### 6. Search Characters by name, race or class

```http
GET /api/characters/search?query={searchTerm}
```

**Response:**

```json
{
	"chClass": "SomeClass",
	"characterId": 4,
	"description": "This is the content.",
	"name": "John Doe",
	"race": "someRace"
}
```

### 7. Search Posts by Name

```http
GET /api/characters/name?name={name}
```

**Response:**

```json
{
	"chClass": "SomeClass",
	"characterId": 4,
	"description": "This is the content.",
	"name": "John Doe",
	"race": "someRace"
}
```