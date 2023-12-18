/* 

post content will be blob storage */


CREATE TABLE posts (
    post_id serial primary key,
    title varchar(100) not null,
    content text not null,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp,
    post_love_id int references post_loves(post_love_id),
    post_replies_id int references post_replies(post_replies_id),
    author_id int references authors(author_id),
    post_likes_id int references post_likes(post_likes_id),
);
