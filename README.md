# Bolide

This app replicates the board game Bolide published by XXXX in YYYY. This is not an authorized implementation, it is an implementation of a board game I happen to like for experimentation/educational purposes.
This is not intended to be a copyright violation.


The rules for Bolide have been included in the repo as BOLIDE_rules.pdf


The intended app flow is:
* User Michael registers/signs in
* User Michael creates a new game in the game lobby
* User Rick registers/signs in
* User Rick joins the game in the game lobby
* User Michael starts the game


The intended turn flow is:
* Player order determined and displayed in some kind of legend
* Current moving player is highlighted in the legend
* UI displays all movement destinations
  * Standard moves are shown with an O
  * Invalid moves, crossing the border of the track, are shown with an X
  * Crash moves are shown with !BANG!, either from an impact with another car or from going too far off the track
  * Drafting moves are shown with !DRAFT!
  * Hard brake moves are shown with !TIRE!, hard brake moves are only shown if the player selects the hard brake option, and all other move options will be hidden
* That player can pick up their car and move it to a designated valid position, while the car is picked up:
  * The original position of the car and the pawn will be shown as ghosts
  * The car will snap to grid
  * The pawn will snap to grid in relation to the current car position
* Once a player drops their car on a valid destination their move is over and play progresses to the next player, if the player drops their car elsewhere it will snap back to the starting position


Features that will be implemted as part of the experimentation/education
* User OAuth sign up/sign in
* Real time chat
* Real time preview of moves

Bonus features that may be implemted as part of the experimentation/education
* Fully reactive UI
* using Elm to implement UI
* Showing other players real time preview of moves
* Browser notifications
* Slack integration



Future Features/Wishlist if the Publisher gives permission for public use of the app
* Player ELO rankings
* Player time trial to establish starting ELO
* All advanced rules
* Race seasons with rankings
* Player invitations
* Notification system for non-live play
* Observers
* Post game playback (animated png?)
* AI players
* custom cars
* Facebook/Twitter posting of game status
