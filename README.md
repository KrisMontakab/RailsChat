# Chat Room (Rails, WIP)

A work-in-progress chat room web application built with Ruby on Rails. The app demonstrates real-time messaging using **Turbo Streams** and **Turbo Frames**, allowing users to communicate instantly across multiple chat rooms.

---

## Project Status

This is an early-stage personal project. While the UI is minimal and some bugs remain, core features such as user registration, login, chat room creation, and real-time messaging are functional.

---

## Features

- User sign-up, login, and session management
- Create and join chat rooms
- Real-time messaging with **Turbo Streams**
- Dynamic 'Sign Up' form submission via **Turbo Frames**
- Live updates across users without full page reloads

---

## Tech Stack

- **Language:** Ruby
- **Framework:** Ruby on Rails
- **Front-End:** Turbo Streams, Turbo Frames (Hotwire), HTML, CSS
- **Database:** SQLite / PostgreSQL

- ---

## Known Issues / TODO

### Functionality
- Messages duplicate for sender before reloading
- No message validation (e.g., empty messages can be sent)
- Creating Chatrooms not implemented yet
- Users are not notified of new messages when not viewing a specific chat room

### Authentication & Security
- Authentication is handled via **Devise**
- No authorization logic — any authenticated user can access all chat rooms
- No role-based permissions (e.g., room owners, moderators)
- Usernames are not currently unique or displayed clearly in chats

### UI & UX
- Minimal styling — Entirely focused on functionality as of now, Style will be improved over time
- Chat interface not mobile-friendly
- No loading indicators or error messages on failed submissions
