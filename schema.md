# Database Schema

## `users`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`username`        | string    | not null, indexed, unique
`password_digest` | string    | not null
`session_token`   | string    | not null, indexed, unique
`first Name`      | string    | not null
`last Name`       | string    | not null
`email`           | string    | not null
`timestamps`      | datetime  | not null

- index on `username, unique: true`
- index on `session_token, unique: true`

## `listings`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`name`            | string    | not null
`host_id`         | integer   | not null, foreign key, indexed
`description`     | text      | not null
`price`           | float     | not null
`bed_num`         | integer   | not null
`address`         | string    | not null
`city`            | string    | not null
`state`           | string    | not null
`country`         | string    | not null
`zipcode`         | string    | 
`lat`             | float     | 
`lng`             | float     | 
`timestamps`      | datetime  | not null

- `host_id` references `users`
- index on `host_id`

## `bookings`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`listing_id`      | integer   | not null, foreign key, indexed
`guest_id`        | integer   | not null, foreign key, indexed
`checkin_date`    | date      | not null
`checkout_date`   | date      | not null
`timestamps`      | datetime  | not null

- `listing_id` references `listings`
- `guest_id` references `users`
- index on `listing_id` & `guest_id`


## `Reviews`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`author_id`       | integer   | not null, foreign key, indexed
`listing_id`      | integer   | not null, foreign key, indexed
`title`           | string    | not null
`body`            | text      | not null
`accuracy`        | integer   | 
`location`        | integer   | 
`communication`   | integer   | 
`check_in`        | integer   | 
`cleanliness`     | integer   | 
`value`           | float     | 
`timestamps`      | datetime  | not null

- `author_id` references `users`
- `listing_id` references `listings`
- index on `author_id` & `listing_id`

## `Messages`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`sender_id`       | integer   | not null, foreign key, indexed
`receiver_id`     | integer   | not null, foreign key, indexed
`body`            | text      | not null
`timestamps`      | datetime  | not null

- `sender_id` & `receiver_id` refenrece `users`
- index on `sender_id` & `receiver_id`