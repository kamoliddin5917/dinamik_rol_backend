/**
 * @param {string} string
 * @returns {string}
 */
function nameDB(string) {
  const result = string.replace(/ |'/gi, (x) => {
    return x === " " ? (x = "_") : (x = "");
  });
  return result.toUpperCase();
}

module.exports = nameDB;
