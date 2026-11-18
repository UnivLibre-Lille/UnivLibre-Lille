export default {
  extends: ["@commitlint/config-conventional"],
  rules: {
    "type-enum": [
      2,
      "always",
      [
        "feat",
        "fix",
        "docs",
        "article",
        "chore",
        "style",
        "refactor",
        "perf",
        "test",
        "build",
        "ci",
        "revert",
      ],
    ],
  },
};
