Feature: Workspace quiz order
  Quizzes in the workspace are shown newest first so a maker
  always sees their most recent work at the top.

  Scenario: Quizzes are ordered newest first
    Given workspace "Ordering" with questions
      | question  | answers  |
      | 2 + 2 = ? | 4 (*), 5 |
    And quiz "First Quiz" with all questions
    And quiz "Second Quiz" with all questions
    And quiz "Third Quiz" with all questions
    When I open the workspace
    Then I see quizzes in order: "Third Quiz", "Second Quiz", "First Quiz"
