-- -----------------------------------------------------------------------------
-- Catergory.val
--
-- VERSION: $Revision: 1.3 $
--
-- Test values.
--

DELETE FROM category        WHERE id IN (1, 2, 3, 4);
DELETE FROM grp             WHERE id IN (701, 702, 703, 704);
DELETE FROM member          WHERE id IN (702, 703, 704);
DELETE FROM category_member WHERE id IN (702, 703, 704);

-- -----------------------------------------------------------------------------
-- Science

INSERT INTO category (id,directory,uri,parent_id, name, description) 
VALUES (1, 'science', '/science/', 0, 'Science', 'All things sciencey');

-- -----------------------------------------------------------------------------
-- Material

INSERT INTO category (id,directory,uri,parent_id, name, description) 
VALUES (2, 'material', '/science/material', 1, 'Material', 'The study of new materials');

-- -----------------------------------------------------------------------------
-- Physical

INSERT INTO category (id,directory,uri,parent_id, name, description) 
VALUES (3, 'physical', '/science/physical', 1, 'Physical', 'General macro level science');

-- -----------------------------------------------------------------------------
-- Biological

INSERT INTO category (id, directory, uri,parent_id, name, description) 
VALUES (4, 'biological', '/science/biological', 1, 'Biological', 'Bugs, bats and bees.');

-- -----------------------------------------------------------------------------
-- Groups.
-- Hard Science.
INSERT INTO grp (id, parent_id, class__id, name, description, secret)
VALUES (51, NULL, 47, 'Hard Science', 'Hard Science Categories.', 0);

INSERT INTO member (id, grp__id, class__id, active)
VALUES (51, 51, 20, 1);

INSERT INTO category_member (id, object_id, member__id)
VALUES (51, 1, 51); 

INSERT INTO member (id, grp__id, class__id, active)
VALUES (52, 51, 20, 1);

INSERT INTO category_member (id, object_id, member__id)
VALUES (52, 3, 52); 

-- Bio Science.
INSERT INTO grp (id, parent_id, class__id, name, description, secret)
VALUES (52, NULL, 47, 'Bio Science', 'Biological Science Categories.', 0);

INSERT INTO member (id, grp__id, class__id, active)
VALUES (53, 52, 20, 1);

INSERT INTO category_member (id, object_id, member__id)
VALUES (53, 4, 53); 

