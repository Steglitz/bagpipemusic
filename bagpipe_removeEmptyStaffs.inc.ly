﻿%{
    Include file for remove empty staffs layout.
%}

\version "2.24.0"

% The necessary tweaks to remove empty staffs and staff group brackets
% when we have a partial seconds.
\layout {
  \context {
    \Staff \RemoveEmptyStaves
  }
  \context {
    \Score
    \override VerticalAxisGroup.remove-first = ##t
  }
  \context{
    \StaffGroup
    \override SystemStartBracket.collapse-height = #5
  }
}
