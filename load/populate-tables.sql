-- populates the topic model tables from stage
insert into topics(topic_id, title, name)
select id, title, name from topics_stage;

insert into topic_docs(topic_id, doc_id, score)
select topic_id, doc_id, topic_score from topic_doc_stage;

-- TBD remove tokens and topic_token
-- insert into tokens(token_id, token)
-- select id, value from tokens_stage;
--
-- insert into topic_tokens(topic_id, token_id, score)
-- select topic, id, beta from topic_token_stage;
