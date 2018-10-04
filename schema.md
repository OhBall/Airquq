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

## `spots`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`name`            | string    | not null
`description`     | text      | not null
`price`           | float     | not null
`bed_num`         | integer   | not null
`address`         | string    | not null
`city`            | string    | not null
`state`           | string    | not null
`country`         | string    | not null
`zipcode`         | string    | not null
`lat`             | float     | not null
`lng`             | float     | not null
`host_id`         | integer   | not null, foreign key, indexed
`timestamps`      | datetime  | not null

- `host_id` references `users`
- index on `host_id`

## `bookings`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`spot_id`         | integer   | not null, foreign key, indexed
`guest_id`        | integer   | not null, foreign key, indexed
`start_date`      | date      | not null
`end_date`        | date      | not null
`timestamps`      | datetime  | not null

- `spot_id` references `spots`
- `guest_id` references `users`
- index on `spot_id` & `guest_id`


## `Reviews`

column name       | data type | details
------------------|-----------|-----------------------
`id`              | integer   | not null, primary key
`author_id`       | integer   | not null, foreign key, indexed
`spot_id`         | integer   | not null, foreign key, indexed
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
- `spot_id` references `spots`
- index on `author_id` & `spot_id`

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