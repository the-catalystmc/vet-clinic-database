/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    date_of_birth DATE,
    escape_attempts INTEGER,
    neutered BOOLEAN,
    weight_kg DECIMAL
);


----- PART 2
ALTER TABLE
animals 
ADD COLUMN IF NOT EXISTS species VARCHAR(100);

----- PART 3
CREATE TABLE owners
(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    full_name VARCHAR(100),
    age INT
);

CREATE TABLE species
(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
);

ALTER TABLE animals
DROP COLUMN species;

ALTER TABLE
animals
ADD COLUMN IF NOT EXISTS species_id INT REFERENCES species(id);

ALTER TABLE
animals
ADD COLUMN IF NOT EXISTS owner_id INT REFERENCES owners(id);