  Users
  id
  username
  email
  password
  createdAt

posts
  id
  title
  description
  image
  thumbnail
  createdAt
  fk_authorId

comments
  id

  text
  fk_postId
  fk_authorId
  createdAt


sessions
  id
  data