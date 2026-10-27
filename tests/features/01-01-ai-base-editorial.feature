@varbase-ai-base @ai @recipes @local @development
Feature: Varbase AI Recipe - AI Base - Writing with AI help from draft to save
  As a content editor
  I want AI help in the places I write: drafting text, tagging, describing images and reviewing
  So that I publish better content faster, with the site's rules and safety checks applied

  Background:
    Given I am a logged in user with the "Content editor" user

  Scenario: Verify a content editor drafts a blog post with AI and saves it
    CI has no real RAG or vector database hosting: it uses only what the pipeline has and the free amazee.ai
    trial from Drupal CMS AI (thanks to amazee.ai). A short answer comes back within 10 seconds.
     When I go to "/node/add/blog"
      And I fill in "Title" with "Written with Varbase AI"
      And I fill in "Description" with "A blog post written with AI help."
      And I click ai assistant button
      And I click "Generate with AI"
      And I fill in "What would you like to ask or get ideas for?" with "Reply with exactly this sentence and nothing else: Varbase drafts with AI."
      And I press "Generate"
      And I wait max of 10 seconds
     Then I see visible ai draft
     When I press "Save changes to editor"
      And I click the "Save" button
     Then I should see "Written with Varbase AI"
      And I should see "Varbase drafts with AI"

  Scenario: Check a content editor gets Suggest tags beside the Tags of a page
    Varbase AI Taxonomy Tagging puts Suggest tags on the page content type by default.
     When I go to "/node/add/page"
     Then I should see "Tags"
      And I see visible suggest tags button

  Scenario: Verify a content editor adds an image that passes the safety check and is saved
     When I go to "/media/add/image"
      And I fill in "Name" with "Green hills at noon"
      And I attach the file "landscape.jpg" to the "Add a new file" field
      And I wait max of 30 seconds
      And I click allow the image AI this time
     Then I see visible generate with ai button
     When I fill in "Alternative text" with "Green hills under a sunny sky"
      And I click the "Save" button
     Then I should see "Green hills at noon"
      And I should not see "This image was flagged as Moderate or Restricted"

  Scenario: Verify a content editor opens the AI review of a saved post
     When I go to "/node/add/blog"
      And I fill in "Title" with "A post to review with AI"
      And I fill in "Description" with "A short post written to try the AI review."
      And I fill in the rich text editor field "Content" with "Varbase helps teams build websites faster. It is free and open source."
      And I click the "Save" button
      And I open the top bar page actions menu
      And I click "AI Review"
     Then I should see "Editorial Quality"
      And I should see "Not run"
