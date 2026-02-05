-- MongoDB
-- Created: 2026-02-05 23:08
-- Context: undefined

-- Create table for MongoDB
CREATE TABLE IF NOT EXISTS mongodbs (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index
CREATE INDEX IF NOT EXISTS idx_mongodbs_created_at ON mongodbs(created_at);

-- Sample query
SELECT * FROM mongodbs
WHERE created_at >= CURRENT_DATE - INTERVAL '7 days'
ORDER BY created_at DESC
LIMIT 100;
