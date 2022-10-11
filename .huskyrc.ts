const tasks = (arr) => arr.join(" && ");
module.exports = {
  hooks: {
    "pre-commit": tasks(["npm run format"]),
    "pre-commit": tasks(["npm run lint"]),
  },
};
