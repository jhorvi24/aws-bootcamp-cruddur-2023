-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Jhorman Villanueva', 'jhorvi24@hotmail.com','jhorvi24' ,'4e656cc4-de82-4e87-9228-6f0a40588c18'),
  ('Andrew Bayko', 'jhorvi24+bayko@hotmail.com','bayko' ,'57342ab4-03a6-441c-88c6-03dfe3911123');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'jhorvi24' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )