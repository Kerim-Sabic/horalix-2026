-- Git workflows
-- Created: 2026-02-05 22:26
-- Context: Adding new functionality

-- Create table for Git workflows
CREATE TABLE IF NOT EXISTS git_workflowss (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create index
CREATE INDEX IF NOT EXISTS idx_git_workflowss_created_at ON git_workflowss(created_at);

-- Sample query
SELECT * FROM git_workflowss
WHERE created_at >= CURRENT_DATE - INTERVAL '7 days'
ORDER BY created_at DESC
LIMIT 100;
