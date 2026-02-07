-- Docker containers
-- Created: 2026-02-07 22:10
-- Context: Adding new functionality

-- Create table for Docker containers
CREATE TABLE IF NOT EXISTS docker_containerss (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index
CREATE INDEX IF NOT EXISTS idx_docker_containerss_created_at ON docker_containerss(created_at);

-- Sample query
SELECT * FROM docker_containerss
WHERE created_at >= CURRENT_DATE - INTERVAL '7 days'
ORDER BY created_at DESC
LIMIT 100;
