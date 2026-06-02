Feature: Workspace question order
  Questions in the workspace are shown newest first so a maker
  always sees their most recent work at the top.

  Scenario: Questions are ordered newest first
    Given workspace "Ordering" with questions
      | question        | answers  |
      | First Question  | A (*), B |
      | Second Question | A (*), B |
      | Third Question  | A (*), B |
    When I open the workspace
    Then I see questions in order: "Third Question", "Second Question", "First Question"
