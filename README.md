# Code Scanning with CodeQL for Ruby on Rails

## Overview
This project demonstrates an end-to-end implementation of GitHub Advanced Security code scanning using CodeQL for a Ruby on Rails application.

## Objectives
- Configure CodeQL using advanced GitHub Actions setup
- Customize scanning scope and queries
- Detect Rails-specific security vulnerabilities
- Run and validate CodeQL analysis locally using the CLI
- Upload and manage SARIF results in GitHub

## Key Features
- Advanced CodeQL GitHub Actions workflow
- Custom CodeQL queries for SQL injection and open redirects
- Rails-focused scanning configuration
- Scheduled and pull-request based scanning
- Local CodeQL database creation and analysis

## Vulnerabilities Demonstrated
- Unsafe SQL string interpolation
- Unvalidated redirects

## Tools & Technologies
- GitHub Advanced Security
- CodeQL
- GitHub Actions
- Ruby on Rails
- SARIF
- GitHub CLI

## Results
All detected issues are surfaced in GitHub Security → Code Scanning Alerts and annotated directly on pull requests.

## Lessons Learned
- How CodeQL builds semantic models of Ruby code
- Writing custom queries to match real-world vulnerabilities
- Reducing false positives through configuration tuning
- Understanding the full SARIF upload lifecycle

## Repository Structure:

```csharp
Jaboo9/rails
├── .github/
│   ├── workflows/
│   │   └── codeql.yml
│   └── codeql/
│       ├── codeql-config.yml
│       └── queries/
│           ├── unsafe-sql.ql
│           └── unsafe-redirect.ql
├── app/
│   ├── controllers/
│   │   └── users_controller.rb
│   └── models/
│       └── user.rb
├── lib/
├── README.md
```
