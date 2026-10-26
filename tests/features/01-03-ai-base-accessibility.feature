@varbase-ai-base @ai @recipes @a11y @local @development @staging @production
Feature: Varbase AI Recipe - AI Base - Accessible writing with AI
  As a content editor who uses assistive technology
  I want the blog form with its AI tools to work with a keyboard and a screen reader
  So that I can write with AI help like anyone else

  Scenario: Check the blog form gives every field a label and every link a name
    Given I am a logged in user with the "Content editor" user
     When I go to "/node/add/blog"
     Then every form field should have an accessible label
      And every link should have an accessible name
      And every ARIA role should be valid
