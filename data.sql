/* Populate database with sample data. */
INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Agumon', 'FEB-03-2020', 0, TRUE, 10.23);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Gabumon', 'NOV-15-2018', 2, TRUE, 8);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Pikachu', 'JAN-07-2021', 1, FALSE, 15.04);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Devimon', 'MAY-12-2017', 5, TRUE, 11);

----- PART 2
INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Charmander', 'FEB-08-2020', 0, FALSE, -11);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Plantmon', 'NOV-15-2022', 2, TRUE, -5.7);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Squirtle', 'APR-02-1993', 3, FALSE, -12.13);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Angemon', 'JUN-12-2005', 1, TRUE, -45);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Boarmon', 'JUN-07-2005', 7, TRUE, 20.04);

INSERT INTO public.animals (name , date_of_birth , escape_attempts , neutered , weight_kg)
VALUES ('Blossom', 'OCT-13-1998', 3, TRUE, 17);

----- PART 3
INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34);

INSERT INTO owners (full_name, age)
VALUES ('Jennifer Orwell', 19);

INSERT INTO owners (full_name, age)
VALUES ('Bob', 45);

INSERT INTO owners (full_name, age)
VALUES ('Melody Pond', 77);

INSERT INTO owners (full_name, age)
VALUES ('Dean Winchester', 14);

INSERT INTO owners (full_name, age)
VALUES ('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES ('Pokemon');

INSERT INTO species (name)
VALUES ('Digimon');

UPDATE animals
SET species_id = species.id
FROM species
WHERE animals.name LIKE '%mon%'
  AND species.name LIKE 'Digimon';

  UPDATE animals
SET species_id = species.id
FROM species
WHERE animals.species_id IS NULL
  AND species.name LIKE 'Pokemon';

UPDATE animals
SET owner_id = owners.id
FROM owners
WHERE animals.name = 'Agumon'
  AND owners.full_name = 'Sam Smith';


UPDATE animals
SET owner_id = owners.id
FROM owners
WHERE animals.name = 'Gabumon'
  AND owners.full_name = 'Jennifer Orwell'
  OR animals.name = 'Pikachu'
  AND owners.full_name = 'Jennifer Orwell';


UPDATE animals
SET owner_id = owners.id
FROM owners
WHERE animals.name = 'Devimon'
  AND owners.full_name = 'Bob'
  OR animals.name = 'Plantmon'
  AND owners.full_name = 'Bob';


UPDATE animals
SET owner_id = owners.id
FROM owners
WHERE animals.name = 'Charmander'
  AND owners.full_name = 'Melody Pond'
  OR animals.name = 'Squirtle'
  AND owners.full_name = 'Melody Pond'
  OR animals.name = 'Blossom'
  AND owners.full_name = 'Melody Pond';


UPDATE animals
SET owner_id = owners.id
FROM owners
WHERE animals.name = 'Angemon'
  AND owners.full_name = 'Dean Winchester'
  OR animals.name = 'Boarmon'
  AND owners.full_name = 'Dean Winchester';