@varbase-ai-base @ai @recipes @local @development @staging @production
Feature: Varbase AI Recipe - AI Base - Canvas AI builds a page from a URL
  As a site builder
  I want the Canvas AI agent to read a web page and fetch an image from a URL I paste
  So that I can ask it to build a Canvas page from an existing site

  Scenario: Check the webmaster sees the Varbase Canvas AI tools on the Canvas AI agent
    Given I am a logged in user with the "Webmaster" user
     When I go to "/admin/config/ai/tools-automation/agents/canvas_ai_orchestrator/edit/form"
     Then the response status code should be 200
      And I see visible read a web page tool
      And I see visible fetch from a url tool
      And I should see "Rule #9: Building from a URL"
