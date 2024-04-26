# Simple Survey Tool

This is a simple survey tool built using Ruby on Rails. It allows users to create surveys, respond to surveys, and view survey results.

## Requirements

- Ruby 3.2
- Rails 7.1.2

## Setup

1. Install the required dependencies:

   ```
   bundle install
   ```

2. Set up the database:

   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```

   Note: The `db:seed` command will populate the database with some sample data.

3. Start the Rails server:

   ```
   rails server
   ```

4. Open your web browser and visit `http://localhost:3000` to access the application.

## Usage

- On the home page, you will see a list of surveys and a button to create a new survey.
- Click on a survey to view its details and submit a response.
- To create a new survey, click on the "Create New Survey" button and enter the survey question.
- Survey results are displayed on the home page, showing the count of yes and no responses for each survey.

## Dependencies

The required dependencies are listed in the `Gemfile`. They will be installed automatically when running `bundle install`.

## Database

This application uses SQLite to persist the data. The database schema and structure are defined in the `db/schema.rb` file.

## Testing

The application includes RSpec tests for the `Survey` and `Response` models. To run the tests, execute the following command:

```
rspec
```
