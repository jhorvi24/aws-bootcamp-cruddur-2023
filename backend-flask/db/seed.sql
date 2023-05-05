-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Jhorman Villanueva', 'jhorvi24@hotmail.com','jhorvi24' ,'4e656cc4-de82-4e87-9228-6f0a40588c18'),
  ('Andrew Bayko', 'jhorvi24+bayko@hotmail.com','bayko' ,'d61a0f82-b092-4b7b-ba87-044ed295f449'),
  ('Londo Mollari','jhorvi24+londo@hotmail.com' ,'londo' ,'33b73702-59a2-4763-8820-30fceb89af2f');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'jhorvi24' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )