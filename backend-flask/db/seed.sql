-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Jhorman Villanueva', 'jhorvi24@hotmail.com','jhorvi24' ,'MOCK'),
  ('Andrew Bayko', 'jhorvi24+bayko@hotmail.com','bayko' ,'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'jhorvi24' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )