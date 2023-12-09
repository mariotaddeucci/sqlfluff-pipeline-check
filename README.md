# SQLFluff Pipeline Check

This repository provides a simple example of how to integrate [sqlfluff](https://sqlfluff.com/) into your workflow to check the validity of SQL queries. The integration is achieved through the use of GitHub Actions and [pre-commit](https://pre-commit.com/).

## Overview

### SQLFluff

[sqlfluff](https://sqlfluff.com/) is a SQL linter and formatter that helps ensure consistency and adherence to coding standards in your SQL codebase. It analyzes SQL queries for syntax and style errors, providing feedback to help maintain clean and readable code.

### pre-commit

[pre-commit](https://pre-commit.com/) is a framework for managing and maintaining multi-language pre-commit hooks. In this repository, pre-commit is used to automatically check SQL queries before each commit, ensuring that the codebase remains consistent and error-free.

## Workflow

The static tests are triggered when a Pull Request is sent or when changes are merged into the master branch. The pre-commit hook is configured to run `sqlfluff fix` on all SQL files in the repository using the `--all-files` flag.

### Handling Errors

- **Linting Errors**: If a query does not adhere to the repository rules, linting errors will be displayed in the terminal, providing information about the specific issues found.

- **Syntax Errors**: If there is a syntax error in a query, the error message will indicate a "template parsing error." This occurs when sqlfluff cannot analyze the lexical structure of the query. In such cases, review the query to correct the syntax errors.

## Getting Started

To set up the pre-commit hook locally, follow these steps:

1. Install pre-commit by running `pip install pre-commit` if you haven't already.

2. Run `pre-commit install` in the repository root to set up the pre-commit configuration.

3. Commit your changes, and pre-commit will automatically run `sqlfluff fix` before allowing the commit.

## GitHub Actions

GitHub Actions are set up to run the same `pre-commit` checks on Pull Requests and pushes to the master branch. This ensures that the codebase remains consistent, and any potential issues are caught early in the development process.
