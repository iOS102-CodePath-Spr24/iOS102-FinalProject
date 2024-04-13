# iOS102-FinalProject: Spotify Clone

## Table of Contents

1. [Overview](#Overview)
2. [Product Spec](#Product-Spec)
3. [Wireframes](#Wireframes)
4. [Schema](#Schema)

## Overview

### Description

This app will be as similar to the popular music streaming app Spotify as possible. We will design the screens to look the moslty the same and use the Spotify public API to pull information about songs to display throughout the app. We will see how far we can go in terms of what information is available, mainly due to copyright reasons.

Will try to implement as many features as possible - MVP would at least allow users to see information about songs and add them to a playlist.

### App Evaluation

- **Category:** Entertainment
- **Mobile:** For now it will be a mobile application only, but a web app could also be made in the same way that Spotify has a mobile app and a web app.
- **Story:**  We all agreed that our favorite app to use is Spotify, so we wanted to try to make the app as close as possible to the actual one.
- **Market:** People who enjoy listening to music, which is essentially everyone.
- **Habit:** It is a use as wanted, but it is likely that people would use it daily.
- **Scope:** It is broad considering that Spotify has many different features available and displays info about a wide range of music artists and their creations.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can sign up for an account and use it to login after
* Data is stored in a database for data persistence (user and song data)
* User can view information about songs, such as the artist and album details
* User can save songs to a playlist
* User can search for songs
* Screens are designed to match screens in real Spotify app as closely as possible

**Optional Nice-to-have Stories**

* User can play songs - this might be limited or tricky because of copyright reasons and the limitations of the Spotify API. Maybe we can access through our own accounts somehow?
* User can see more information about things other than songs like more details about the artists or albums.

### 2. Screen Archetypes
- [ ] Login Screen
* User can sign up for account
* User can login if account is already created

- [ ] Home Screen
* Shows user's recent songs and playlists
* Will be initial screen after login

- [ ] Search Screen
* User can search for songs by the title, artist, or album
* will display basic information about each song in search

- [ ] Library Screen
* Shows users saved songs and playlists
* Playlist will be a list of songs user has added to it

- [ ] Playlist Detail Screen
* Shows songs saved in a playlist
* Playlists will be persisted upong user login

- [ ] Song Detail Screen
* Displays information about a song
* Will be pulled from Spotify API
* Displays name, album cover, artist, etc

### 3. Navigation

**Tab Navigation** (Tab to Screen)

- [ ] Tab 1: Home screen
- [ ] Tab 2: Search screen
- [ ] Tab 3: Library screen
- Will use bottom navigation bar
- Login screen will be first screen for user to see
- Home screen will be initial screen after login
- Playlist detail screen will be shown after clicking on a playlist
- Song detail screen will be shown after clicking on a song

**Flow Navigation** (Screen to Screen)

- [ ] **Login Screen**
  * Leads to home screen after login
- [ ] **Home Screen**
  * Leads to song or playlist detail screen depending on which is clicked on
- [ ] **Search Screen**
  * Leads to song detail screen after song is clicked on 
- [ ] **Library Screen**
  * Leads to playlist or song detail screen depending on which is clicked on
- [ ] **Playlist Detail Screen**
  * Leads to song detail screen if a song is clicked on

## Wireframes

<img src="https://github.com/iOS102-CodePath-Spr24/iOS102-FinalProject/blob/main/Wireframe%20Image.png" width=600>

## Schema 


### Models

| Property | Type   | Description                                  |
|----------|--------|----------------------------------------------|
| User      | Struct    | stores username and password strings
| username | String | unique id for the user post (default field)   |
| password | String | user's password for login authentication      |
| Song      | Struct    | stores name, artist, album, and album cover for each song
| name      | String   | stores name of song
| artist      | String   | stores artist of song
| album      | String   | stores album of song
| albumCover      | String   | stores URL for album cover image
| Playlist      | Array   | stores list of songs


### Networking
- Home screen and library screen will access database to display a user's saved songs and playlists, will not pull from API here. Will user either a Parse or Firebase database to store and pull information from.
- Search screen will pull from Spotify API to access songs and their information.
- Endpoint used will be a list of songs from Spotify API, so will be some form of a '[GET] /songs' type of call.
