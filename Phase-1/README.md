# Phase 1: Database Schema

## Peer Project Collaboration Platform

This project is built to solve a problem that students constantly face which is finding teammates who have
the specific skills a project actually needs, and this platform
works like a "LinkedIn meets Noticeboard" for campus projects. Students
post what they're building, tag the skills they're missing, and other
students can browse and apply.

This phase is scoped strictly to the database. There is no backend, no
frontend, and no API yet. The goal is simply to design and set up the
tables that will hold users, projects, and applications, so the rest of
the platform has something solid to build on.

## Tech Used

- **SQLite**:
  chosen for its simplicity, ideal for
  designing and testing a schema quickly before any server logic is added.
- **DB Browser for SQLite**:
  used to create the database, run the schema,
  and visually confirm the tables and columns.

## Tables Overview

**Users**<br>
Stores every student's account details along with the skills they bring to the table.

**Projects**<br>
Stores every project a student posts, along with what skills it's missing.

**Applications**<br>
Tracks who has applied to which project, and where that application stands.

## Note
Full schema lives in `db_setup.sql`

