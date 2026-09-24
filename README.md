# Interactive Katacoda Scenarios

[![](http://shields.katacoda.com/katacoda/tom_pepe/count.svg)](https://www.katacoda.com/tom_pepe "Get your profile on Katacoda.com")

This repository contains interactive learning scenarios for [Katacoda](https://www.katacoda.com), a platform for creating hands-on, browser-based tutorials and training environments. These scenarios provide step-by-step guided experiences for learning various technologies without requiring any local setup.

## What's Inside

This repository hosts scenario definitions that power interactive tutorials. Each scenario is self-contained in its own directory and includes:

- **Configuration** (`index.json`) - Defines the scenario structure, steps, environment, and metadata
- **Content** (Markdown files) - Step-by-step instructions and explanations
- **Scripts** - Setup and verification scripts for automated environment preparation and validation

### Current Scenarios

- **hello-world** - A beginner-friendly React tutorial demonstrating how to work with a React application in an interactive environment

## View Live Scenarios

Visit https://www.katacoda.com/tom_pepe to view the profile and run these interactive scenarios in your browser.

## Repository Structure

Each scenario directory contains:
- `index.json` - Scenario configuration (title, description, steps, environment settings)
- `intro.md` - Introduction shown before the scenario starts
- `stepN.md` - Instructions for each step
- `stepN-verify.sh` - Optional verification scripts to validate step completion
- `finish.md` - Conclusion shown after completing all steps
- `env-init.sh` - Environment initialization script
- `README.md` - Documentation specific to that scenario

## Creating Your Own Scenarios

To learn more about creating Katacoda scenarios:
- Visit https://www.katacoda.com/docs for official documentation
- Check out https://github.com/katacoda/scenario-example for examples
- See the `hello-world` directory in this repository for a working example

## Contributing

Each scenario can be developed and tested locally before being published to Katacoda. Follow the Katacoda documentation for setup instructions and best practices.
