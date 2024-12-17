# Cypress Automation Framework

This project is a Cypress framework using Cucumber with TypeScript to automate technical test.

```bash
npm install
```

To execute the technical test suite in headless mode:
```bash
npm run headless:technical-test
```

To execute the technical test suite in headed mode:
```bash
npm run headed:technical-test
```

To open the Cypress test runner:
```bash
npx cypress open
```

After running the tests, you can view the Cucumber report. Use the appropriate script for your operating system:

- **Linux:**
    ```bash
    npm run linux:open-report
    ```
- **Windows:**
    ```bash
    npm run windows:open-report
    ```

---

## Framework structure

- **cypress/e2e/features**:
  - Contains Cucumber feature files written in `.feature` format.

- **cypress/e2e/step-definitions**:
  - Contains step definition files linking Gherkin steps to feature files.

- **cypress/fixtures**:
  - Stores static test data in JSON format.
    
- **cypress/pages**:
  - Each class represents a page and includes reusable methods for interacting with web elements.

- **cypress/utils**:
  - Contains utility functions and reusable helpers to support tests.
   
---

## Naming conventions and best practices
Following a consistent naming convention ensures that the project remains readable and maintainable.

- **Class names**: Use **PascalCase** for class names.
    - Example: `RegistrationPage`
- **Method names**: Use **camelCase** for methods (functions).
    - Example: `enterUserCredentials()`
- **Fixture files**: Use **camelCase** for fixture file names.
    - Example: `userCredentials.json`
- **Object instances**: Use **camelCase** for object instances based on the class name.
    - Example: `const registrationPage = new RegistrationPage();`
