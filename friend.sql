SELECT users.first_name, users.last_name, friends.first_name as friend_first_name, friends.last_name as friend_last_name
FROM users
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as friends ON friendships.friend_id = users.id

SELECT friends.first_name as friend_first_name, friends.last_name as friend_last_name
FROM users
LEFT JOIN friendships ON friendships.user_id = users.id
LEFT JOIN users as friends ON friendships.user_id = users.id
WHERE user.first_name="kermit"

-- SELECT COUNT "friendships.id"
-- FROM users
-- LEFT JOIN friendships ON friendships.user_id = users.id

-- SELECT count "friendships.friend_id"
-- FROM users
-- LEFT JOIN friendships ON friendships.user_id = users.id
-- LEFT JOIN users as friends ON friendships.user_id = users.id
-- WHERE count "friendship.friend_id" = max?

INSERT INTO users (user_id, first_name, last_name, created_at, updated_at)
VALUES (912838, "Eli", "Greg", NOW(), NOW())