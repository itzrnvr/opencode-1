-- Normalize existing session.directory values to forward-slash format
-- on Windows. This fixes the path-sensitivity bug where sessions stored
-- with backslashes (C:\Users\...) were invisible when queried with
-- forward-slash paths (C:/Users/...) or vice-versa.
--
-- The fix also lowercases drive letters so C:/ and c:/ match.

-- Step 1: Convert all backslashes to forward slashes
UPDATE session
SET directory = REPLACE(directory, '\', '/')
WHERE directory LIKE '%\%';

-- Step 2: Normalize uppercase drive letters to lowercase (A:/ -> a:/, B:/ -> b:/, etc.)
UPDATE session SET directory = 'a:' || SUBSTR(directory, 3) WHERE directory GLOB 'A:/*';
UPDATE session SET directory = 'b:' || SUBSTR(directory, 3) WHERE directory GLOB 'B:/*';
UPDATE session SET directory = 'c:' || SUBSTR(directory, 3) WHERE directory GLOB 'C:/*';
UPDATE session SET directory = 'd:' || SUBSTR(directory, 3) WHERE directory GLOB 'D:/*';
UPDATE session SET directory = 'e:' || SUBSTR(directory, 3) WHERE directory GLOB 'E:/*';
UPDATE session SET directory = 'f:' || SUBSTR(directory, 3) WHERE directory GLOB 'F:/*';
UPDATE session SET directory = 'g:' || SUBSTR(directory, 3) WHERE directory GLOB 'G:/*';
UPDATE session SET directory = 'h:' || SUBSTR(directory, 3) WHERE directory GLOB 'H:/*';
UPDATE session SET directory = 'i:' || SUBSTR(directory, 3) WHERE directory GLOB 'I:/*';
UPDATE session SET directory = 'j:' || SUBSTR(directory, 3) WHERE directory GLOB 'J:/*';
UPDATE session SET directory = 'k:' || SUBSTR(directory, 3) WHERE directory GLOB 'K:/*';
UPDATE session SET directory = 'l:' || SUBSTR(directory, 3) WHERE directory GLOB 'L:/*';
UPDATE session SET directory = 'm:' || SUBSTR(directory, 3) WHERE directory GLOB 'M:/*';
UPDATE session SET directory = 'n:' || SUBSTR(directory, 3) WHERE directory GLOB 'N:/*';
UPDATE session SET directory = 'o:' || SUBSTR(directory, 3) WHERE directory GLOB 'O:/*';
UPDATE session SET directory = 'p:' || SUBSTR(directory, 3) WHERE directory GLOB 'P:/*';
UPDATE session SET directory = 'q:' || SUBSTR(directory, 3) WHERE directory GLOB 'Q:/*';
UPDATE session SET directory = 'r:' || SUBSTR(directory, 3) WHERE directory GLOB 'R:/*';
UPDATE session SET directory = 's:' || SUBSTR(directory, 3) WHERE directory GLOB 'S:/*';
UPDATE session SET directory = 't:' || SUBSTR(directory, 3) WHERE directory GLOB 'T:/*';
UPDATE session SET directory = 'u:' || SUBSTR(directory, 3) WHERE directory GLOB 'U:/*';
UPDATE session SET directory = 'v:' || SUBSTR(directory, 3) WHERE directory GLOB 'V:/*';
UPDATE session SET directory = 'w:' || SUBSTR(directory, 3) WHERE directory GLOB 'W:/*';
UPDATE session SET directory = 'x:' || SUBSTR(directory, 3) WHERE directory GLOB 'X:/*';
UPDATE session SET directory = 'y:' || SUBSTR(directory, 3) WHERE directory GLOB 'Y:/*';
UPDATE session SET directory = 'z:' || SUBSTR(directory, 3) WHERE directory GLOB 'Z:/*';
