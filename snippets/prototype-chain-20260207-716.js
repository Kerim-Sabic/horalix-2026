/**
 * Prototype chain
 * Created: 2026-02-07 22:15
 * Context: Adding new functionality
 */

function validateItem(data) {
  // TODO: Implement prototype chain
  const result = data.map(item => {
    return processItem(item);
  });

  return result;
}

// Example usage
const data = [1, 2, 3, 4, 5];
console.log(validateItem(data));

module.exports = { validateItem };
