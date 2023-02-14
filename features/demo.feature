# This file contains a user story for demonstration only.
# Learn how to get started with Behat and BDD on Behat's website:
# http://behat.org/en/latest/quick_start.html

Feature: Health check
    In order to prove that the server is up and running
    As a user
    I want to have a health check scenario

    Scenario: It receives a response from Symfony's kernel
        When a demo scenario sends a request to "/"
        Then the response should be received
